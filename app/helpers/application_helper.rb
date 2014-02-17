module ApplicationHelper

  def page_title
    @meta_tag_content[:title]
  end

  def page_keywords
    @meta_tag_content[:keywords]
  end

  def error_messages(obj)
    raw(obj.errors.full_messages.map{ |msg| content_tag(:div, content_tag(:button, raw('&times;'), class: 'close', :'data-dismiss' => 'alert') + msg, class: 'alert alert-error') }.join) if obj
  end

end
