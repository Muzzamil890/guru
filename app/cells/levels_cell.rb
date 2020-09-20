class LevelsCell < Cell::ViewModel
  def top(studio)
    @levels = studio.levels.top_ten
    render
  end
end
