class DashboardController < ApplicationController
  def index
    @today = Date.current.strftime('%A')
    @klasses = current_studio.klasses.today
    @levels = current_studio.levels.top_ten
    @sources = []
    current_studio.sources.top_ten.each do |s|
      @sources << [s.name, s.members_count] unless s.members_count == '0'
    end
  end
  # def set_routes
  #   if current_user.blank? && current_admin_user.blank?
  #     return redirect_to new_user_session_path
  #   elsif current_user.present? && current_admin_user.blank?
  #     return redirect_to root_path
  #   elsif current_admin_user.present? && current_user.blank?
  #     return redirect_to admin_root_path
  #   end
  # end


  def visits
    render json: current_studio.visits.recent.group_by_day(:visit_date, format: "%m/%d/%y").count
  end

  def sources
    sources = []
    current_studio.sources.top_ten.each do |s|
      sources << [s.name, s.members_count] unless s.members_count == '0'
    end
    render json: sources
  end
end
