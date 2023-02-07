# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
cat /data/data/com.termux/files/usr/etc/Logo.txt | lolcat -d 2 -a
PS1='\033[1;31mHｘㅤ×͜×ㅤBｕｎｎｙ\033[1;94m[\033[1;96m\W\033[1;94m]\033[1;92m:\033[1;91m# \033[1;92m'
 
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.

