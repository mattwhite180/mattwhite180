# Text Colors
BLACK=30
BLUE=34
CYAN=36
GREEN=32
PURPLE=35
RED=31
WHITE=37
YELLOW=33

# Text Background Colors
BLACK_BACKGROUND=40
BLUE_BACKGROUND=44
CYAN_BACKGROUND=46
GREEN_BACKGROUND=42
PURPLE_BACKGROUND=45
RED_BACKGROUND=41
WHITE_BACKGROUND=47
YELLOW_BACKGROUND=43

# Text Attributes
NORMAL_TEXT=0
UNDERLINED=4
INVERTED_BACKGROUND=7

git_prompt() {
    if [[ -n $(git status 2> /dev/null) ]]
    then
        echo -n "($(git branch --show-current 2> /dev/null)"
        if [[ $(git status -s 2> /dev/null | wc | awk '{print $1}') -gt 0 ]]
        then
            echo -n "[$(git status -s 2> /dev/null | wc | awk '{print $1}')])"
        else
            echo -n ")"
        fi
    fi
}

PROMPT_DATE="\[\033["$PURPLE"m\][\d] "
PROMPT_USERNAME="\[\033["$BLUE"m\]\u"
PROMPT_AT="\[\033["$GREEN"m\]@"
PROMPT_HOSTNAME="\[\033["$RED"m\]\h"
PROMPT_COLON="\[\033[00m\]:"
PROMPT_WORKDIR="\[\033[;"$UNDERLINED";"$YELLOW"m\]\w"
PROMPT_GIT="\[\033["$NORMAL_TEXT";"$CYAN"m\] \$(git_prompt)"
PROMPT_NEWLINE="\[\033["$NORMAL_TEXT";"$CYAN"m\]\n"
PROMPT_SYMBOL="\[\033["$GREEN"m\][\$]: "
PROMPT_CLEANUP="\[\033["$WHITE"m\]"

MY_PROMPT=$PROMPT_DATE
MY_PROMPT+=$PROMPT_USERNAME
MY_PROMPT+=$PROMPT_AT
MY_PROMPT+=$PROMPT_HOSTNAME
MY_PROMPT+=$PROMPT_COLON
MY_PROMPT+=$PROMPT_WORKDIR
MY_PROMPT+=$PROMPT_GIT
MY_PROMPT+=$PROMPT_NEWLINE
MY_PROMPT+=$PROMPT_SYMBOL
MY_PROMPT+=$PROMPT_CLEANUP

export PS1=$MY_PROMPT
