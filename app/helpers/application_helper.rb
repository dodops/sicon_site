module ApplicationHelper
  def title
    base = "SICON"
    if @title.nil?
      base
    else
      "#{@title}"
    end
  end
end
