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

def turn_rover_right(rover_face_direction)
    if rover_face_direction == 'N'
        return 'E'
        elsif rover_face_direction == 'E'
            return 'S'
            elsif rover_face_direction == 'S'
                return 'W'
                elsif rover_face_direction == 'W'
                    return 'N'
                end
end

def move_rover_forward(rover_x_coordinate, rover_y_coordinate)
    rover_y_coordinate +=1
    return rover_x_coordinate, rover_y_coordinate
end