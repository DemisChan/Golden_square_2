def make_snippet(text)
  number_words = text.split(' ').size
  if number_words.zero?
    fail 'No words were given'
  elsif number_words <= 5
    return text
  else
    split = text.split(' ')
    short = ''
    for i in 0..4
      short += split[i] + ' '
    end
    return short.strip + '...'
  end
end
