helpers do
  def menu_item(text, href)
    if request.path_info == href
      "<li class=\"cur\">#{text}</li>"
    else
      "<li><a href=\"#{href}\">#{text}</a></li>"
    end
  end
end
