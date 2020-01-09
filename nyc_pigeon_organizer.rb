def nyc_pigeon_organizer(data)
  data.each do |hash_1, key_1|
  key_1.each do |hash_2, key_2|
    key_2.each do |name|
      pigeon_name_list[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end

data[:color].each do |hash_1, key_1|
  key_1.each do |pigeon_color|
    if data[:color][hash_1].include? pigeon_color
    pigeon_name_list[pigeon_color][:color] << hash_1.to_s
    end
  end
end

data[:gender].each do |hash_1, key_1|
  key_1.each do |pigeon_gender|
    if data[:gender][hash_1].include? pigeon_gender
    pigeon_name_list[pigeon_gender][:gender] << hash_1.to_s
    end
  end
end

data[:lives].each do |hash_1, key_1|
  key_1.each do |pigeon_lives|
    if data[:lives][hash_1].include? pigeon_lives
    pigeon_name_list[pigeon_lives][:lives] << hash_1.to_s
    end
  end
end
end
