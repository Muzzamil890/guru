class ClassesCell < Cell::ViewModel
  def today(studio)
    @today = Date.current.strftime('%A')
    @klasses = studio.klasses.today
    render
  end
end
