def nyc_pigeon_organizer(data)
  pigeon_name_list = {}
  
data.each do |hash_1, key_1|
  key_1.each do |hash_2, key_2|
    key_2.each do |name|
      pigeon_name_list[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end

data[:color].each do |hash_1, key_1|
  key_1.each do |name|
    if data[:color][hash_1].include? name
    pigeon_name_list[name][:color] << hash_1.to_s
    end
  end
end

data[:gender].each do |hash_1, key_1|
  key_1.each do |name|
    if data[:gender][hash_1].include? name
    pigeon_name_list[name][:gender] << hash_1.to_s
    end
  end
end

data[:lives].each do |hash_1, key_1|
  key_1.each do |name|
    if data[:lives][hash_1].include? name
    pigeon_name_list[name][:lives] << hash_1.to_s
    end
  end
end

pigeon_name_list

end
