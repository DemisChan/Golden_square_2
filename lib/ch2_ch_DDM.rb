def todo_track(text)
  if not (text.is_a? String)
    fail 'No text given.'
  elsif text.include? '#TODO'
    return 'True'
  else
    return 'False'
  end
end
