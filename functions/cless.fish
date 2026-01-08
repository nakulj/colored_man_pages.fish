function cless -d "Configure less to colorize styled text using environment variables before executing a command that will use less"
    set -q COLORMAN_BOLD; or set COLORMAN_BOLD (set_color --bold blue)
    set -q COLORMAN_UNDERLINE; or set COLORMAN_UNDERLINE (set_color --underline green)
    set -q COLORMAN_STANDOUT; or set COLORMAN_STANDOUT (set_color --reverse yellow)
    set -x LESS_TERMCAP_md $COLORMAN_BOLD # start bold
    set -x LESS_TERMCAP_me (set_color normal) # end bold
    set -x LESS_TERMCAP_us $COLORMAN_UNDERLINE # start underline
    set -x LESS_TERMCAP_ue (set_color normal) # end underline
    set -x LESS_TERMCAP_so $COLORMAN_STANDOUT # start standout
    set -x LESS_TERMCAP_se (set_color normal) # end standout

    $argv
end
