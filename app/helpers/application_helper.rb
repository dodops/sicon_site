module ApplicationHelper
  def title
    base = "SICON"
    base if @title.nil?
  end
end
