def count_words(text)
  if text.split(' ').empty?
    return 0
  else
    split = text.split (/[\s-]/)
    return split.length
  end
end
