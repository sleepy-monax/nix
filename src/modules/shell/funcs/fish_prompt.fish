function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end

    if set -q IN_NIX_SHELL
        echo -n (set_color 56C2FF)'❄ '
    else
        echo -n (set_color 56C2FF)'λ '
    end
    set_color normal
end
