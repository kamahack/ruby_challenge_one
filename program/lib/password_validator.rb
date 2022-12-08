# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &


def valid?(password)
    characters_special = ['!', '@', '$', '%', '&']
    password_array = password.split("")
    password_length = false
    special_check = false

    if password.length >= 8
        password_length = true
    end

    password_array.each do |x|
        characters_special.each do |y|
            if x==y
                special_check=true
            end
        end
    end

    if password_length == true && special_check==true
        return true
    else 
     return false
    end
end
