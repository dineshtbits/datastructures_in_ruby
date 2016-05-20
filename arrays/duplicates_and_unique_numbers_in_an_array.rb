arr = [1,2,3,4,5,4]
count_map = {}
arr.each do |e|
  if count_map[e].nil?
    count_map[e] = 1
  else
    count_map[e] = count_map[e] + 1
  end
end
puts count_map.select{|k,v| k if v>1}.keys.inspect
puts count_map.select{|k,v| k if v==1}.keys.inspect