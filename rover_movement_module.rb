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

def move_rover_in_any_direction(rover_x_coordinate, rover_y_coordinate, rover_face_direction)
    if rover_face_direction == 'N'
        rover_y_coordinate +=1 
        return rover_x_coordinate,rover_y_coordinate

    elsif rover_face_direction == 'W'
        rover_x_coordinate -=1 
        return rover_x_coordinate,rover_y_coordinate

    elsif rover_face_direction == 'S'
        rover_y_coordinate -=1 
        return rover_x_coordinate,rover_y_coordinate
    
    elsif rover_face_direction == 'E'
        rover_x_coordinate +=1
        return rover_x_coordinate,rover_y_coordinate
    end
end

def move_rover_to_new_position(rover_x_coordinate, rover_y_coordinate, rover_face_direction, instructions)
    i=0
    rover_x_coordinate = rover_x_coordinate.to_i
    rover_y_coordinate = rover_y_coordinate.to_i
    while i < instructions.length
        if instructions[i]=='L'
            rover_face_direction = turn_rover_left(rover_face_direction)
        elsif instructions[i]=='R'
            rover_face_direction = turn_rover_right(rover_face_direction)
        elsif instructions[i]=='M'
            rover_x_coordinate, rover_y_coordinate = move_rover_in_any_direction(rover_x_coordinate, rover_y_coordinate, rover_face_direction)
        end
        i+=1

        #WHY did vscode built 2 differnet syntaxes for if/elsif/elsif in the same program. 
        #If you type the whole keyword, it automatically hits a shift+tab 
            #elseif you hit tab to choose the given optionsn than it indents as given in the funtion turn_rover_left.
    end
    return rover_x_coordinate, rover_y_coordinate, rover_face_direction
end

def move_rover_to_new_position_within_coordinates(x_coordinate_pleateau, y_coordinate_pleateau, rover_x_coordinate, rover_y_coordinate, rover_face_direction, instructions)
    x_coordinate_aftermovement, y_coordinate_aftermovement = move_rover_to_new_position(rover_x_coordinate, rover_y_coordinate, rover_face_direction, instructions)
    
    if (x_coordinate_aftermovement <= x_coordinate_pleateau) && (y_coordinate_aftermovement <= y_coordinate_pleateau) || (x_coordinate_aftermovement >=0) && (y_coordinate_aftermovement <= 0)
        return true
    elsif (x_coordinate_aftermovement >= x_coordinate_pleateau) || (y_coordinate_aftermovement) >= (y_coordinate_pleateau) || (x_coordinate_aftermovement <0) || (y_coordinate_aftermovement < 0) 
        return false
    else
        return false # Default to false if no conditions match
    end
end
