module MessagesHelper
  def nested_messages(messages)
    messages.map do |messages, sub_messages|
     render(messages) + content_tag(:div, nested_messages(sub_messages) , :class => "nested_messages")
    end.join.html_safe
  end
end
