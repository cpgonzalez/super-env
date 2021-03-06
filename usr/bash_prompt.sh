# .bash_prompt
# Define style for bash prompt

# Import color definitions
source bash_color.sh

# Set colors for prompt components
ROOT_USER_COLOR=$COLOR_RED
MY_USER_COLOR=$COLOR_CYAN
PROMPT_PATH_COLOR=$COLOR_LIGHT_GREEN
PROMPT_BRANCH_COLOR=$COLOR_LIGHT_CYAN
PROMPT_ARROW_COLOR=$COLOR_YELLOW

#TODO: Implement this
case $TERM in
     xterm*|rxvt*)
         export TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
          ;;
     *)
         export TITLEBAR=""
          ;;
esac

# Set white for user, red for root
export PROMPT_USER_COLOR=$MY_USER_COLOR
[ $UID -eq "0" ] && export PROMPT_USER_COLOR=$ROOT_USER_COLOR

# Set prompt structure
export PROMPT_LINE1="$TITLEBAR"
export PROMPT_LINE2="\[${PROMPT_USER_COLOR}\]\u \[$PROMPT_PATH_COLOR\]\${PWD} \[${PROMPT_BRANCH_COLOR}\]\$(vcprompt)"
export PROMPT_LINE3="\[${PROMPT_ARROW_COLOR}\]→\[${COLOR_NC}\]"

# Set prompt colors
export PS1="$PROMPT_LINE1\n${PROMPT_LINE2}\n${PROMPT_LINE3} "
