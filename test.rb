recipes=[{:mango=>3, :peer=>1}, {:appel=>3, :banaan=>9}]

recipes[1].each do |a|
  puts "#{recipes[1][:appel]}"
end
