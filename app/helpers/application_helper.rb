module ApplicationHelper
  # I18n.t, but capitalized
  def tc name
    return I18n.t(name).capitalize
  end

  # I18n.t, but uncapitalized
  def tu name
    text = I18n.t name
    return text[0, 1].downcase + text[1 .. -1]
  end
end
