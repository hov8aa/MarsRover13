def move_rover(rover_face_direction)
    return 'W'
end

def turn_rover_left(rover_face_direction)
    if rover_face_direction == 'N'
        return 'W'
        elsif rover_face_direction == 'W'
            return 'S'
            elsif rover_face_direction == 'S'
                return 'E'
                elsif rover_face_direction == 'E'
                    return 'N'
                end
end