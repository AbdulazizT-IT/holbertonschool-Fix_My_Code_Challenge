###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
  next unless arg =~ /^-?\d+$/
  i_arg = arg.to_i

  is_inserted = false
  i = 0

  while i < result.size
    if i_arg < result[i]
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
    i += 1
  end

  result << i_arg unless is_inserted
end

puts result
