def full_title(page_title)
  title = "Ruby on Rails Tutorial Sample App"

  if (not page_title.empty?())
    title = "#{title} |  #{page_title}"
  end

  title
end
