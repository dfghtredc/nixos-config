autoload -Uz colors
colors

prompt_path() {
    local path="$PWD"

    if [[ "$path" == "$HOME" ]]; then
        print -n '~'
        return
    fi

    if [[ "$path" == "$HOME/projects/nixos-config" ]]; then
         print -n '~/projects/nixos-config'
         return
    fi

    if [[ "$path" = "$HOME/projects/nixos-config/"* ]]; then
        local relative="${path#HOME/projects/nixos-config/}"
        local parts=("${(@s:/:)relative}")

        if (( ${#parts} <= 2 )); then
            print -n "~/projects/nixos-config/$relative"

        else
            print -n "~/projects/nixos-config.${parts[-2]}/${parts[-1]}"

        fi
        return
    fi

    print -n "%~"

PROMPT='%F{white}%n@%m:%~%f %F{magenta}>>>%f '




#Test colors
#print -P '%F{white}WHITE%f'
#print -P '%F{242}GRAY%f'
#print -P '%F{magenta}MAGENTA%f'
#print -P '%F{red}RED%f'
#print -P '%F{yellow}YELLOW%f'
#print -P '%F{green}GREEN%f'
