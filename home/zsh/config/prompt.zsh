autoload -Uz colors
colors

prompt_path() {
    local project="$HOME/projects/nixos-config"


    if [[ "$PWD" == "$HOME" ]]; then
        print -n '~'
        return
    fi


    if [[ "$PWD" == "$project" ]]; then
         print -n '~/nixos-config'
         return
    fi


    if [[ "$PWD" = "$project/"* ]]; then
        local relative="${PWD#$project/}"

        local first="${relative%%/*}"

        local rest="${relative#*/}"

        if [[ "$relative" == "first" ]]; then
            print -n "~/nixos-config/$first"


        else
            local second ="${rest%%/*}"

            print -n "~/nixos-config/$first/$second"

        fi

        return
    fi

    print -n "%~"

PROMPT='%F{white}%n@%m:%f$(prompt_path) %F{magenta}>>>%f '




#Test colors
#print -P '%F{white}WHITE%f'
#print -P '%F{242}GRAY%f'
#print -P '%F{magenta}MAGENTA%f'
#print -P '%F{red}RED%f'
#print -P '%F{yellow}YELLOW%f'
#print -P '%F{green}GREEN%f'
