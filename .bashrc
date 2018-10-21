#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# values
GLAVA_PID_PATH=~/.config/glava/pid
GLAVA_LOG_PATH=~/.config/glava/log

# aliases

function vmusic ()
{
	case "$1" in
		off)
			kill -9 $(cat $GLAVA_PID_PATH) 2>/dev/null || > $GLAVA_PID_PATH ;;
		*)
			if [ -s $GLAVA_PID_PATH ]
				then 
					echo "glava is in use already" 
				else 
					nohup glava > /dev/null 2>$GLAVA_LOG_PATH & 
					echo $! > $GLAVA_PID_PATH
			fi
	esac
}

alias ls='ls_extended'
export PS1='\W \$ '

# custom aliases
alias helios='ssh -p 2222 -X -Y s225047@se.ifmo.ru'
alias pg_start='systemctl start postgresql'
alias pg_status='systemctl status postgresql'
alias pg_stop='systemctl stop postgresql'
alias reboot='vmusic off; reboot'
alias kbacklight='sudo /usr/local/share/kdb_backlight'

