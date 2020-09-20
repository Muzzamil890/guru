class ClassesController < ApplicationController
  include CsvExportable
  before_action :klass, only: [:edit, :update, :destroy]
  before_action :set_class_time, only: [:create, :update]

  def index
    @klasses = current_studio.klasses.page params[:page]
  end

  def export
    @klasses = current_studio.klasses.all
    export_csv Klass::CsvExport.new(@klasses)
  end

  def new
    @klass = current_studio.klasses.build
  end

  def create
    @klass = current_studio.klasses.build(permitted_params)
    @klass.class_time = @class_time if @klass.class_time.blank?
    if @klass.save
      redirect_to classes_url, flash: { success: 'Class was successfully created.' }
    else
      render :new
    end
  end

  def edit
  end

  def update
    @klass.day_of_week = params[:klass][:day_of_week]
    @klass.class_time = @class_time
    @klass.name = params[:klass][:name]
    @klass.recurring = params[:klass][:recurring]
    if @klass.save
      redirect_to classes_url, flash: { success: 'Class was successfully updated.' }
    else
      render :edit
    end
  end

  def destroy
    if @klass.destroy
      redirect_to classes_url, flash: { success: 'Class was successfully deleted.' }
    end
  end

  private

  def klass
    @klass = current_studio.klasses.find(params[:id])
  end

  def set_class_time
    klass_params = params[:klass]
    @class_time = Time.new(klass_params["class_time(1i)"].to_i, klass_params["class_time(2i)"].to_i, klass_params["class_time(3i)"].to_i, klass_params["class_time(4i)"].to_i, klass_params["class_time(5i)"].to_i) if params[:klass].try(:class_time).blank?
  end

  def permitted_params
    params.require(:klass).permit(:day_of_week, :class_time, :name, :recurring)
  end
end
