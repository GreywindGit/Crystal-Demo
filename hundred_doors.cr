doors = [false] * 100
step_size = 1

100.times do 
    doors.each_index do |i|
        if (i + 1) % step_size == 0
            doors[i] = !doors[i]
        end
    end
    step_size += 1
end


doors = doors.map_with_index do |door, index|
    if door
        door = index + 1
    end
end

puts "The open doors are #{doors.select { |door| !door.nil? }}"