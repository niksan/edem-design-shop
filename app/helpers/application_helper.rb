module ApplicationHelper

  def page_title
    @meta_tag_content[:title]
  end

  def page_keywords
    @meta_tag_content[:keywords]
  end

end
