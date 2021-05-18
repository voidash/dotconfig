#scripts present here are for 
# youtube-dl 
# vlc
# fzf
# bat
# fd

alias bat=batcat

function fish_greeting
	
end

cat ~/.cache/wal/sequences 2> /dev/null


fish_vi_key_bindings
bind -M insert \cl forward-char
# setting up path for various programs that pacman doesn't handle set PATH /opt/idea/bin/ $PATH
set PATH ~/bin/ /opt/flutter/bin $PATH
set VENV $HOME/.virtualenv


# alias for different programmes
alias vim=nvim

function vlcd --wraps vlc
	set music_folder ~/music/
	switch $argv[1]
		case english eng English
			set music_folder $music_folder'english'
		case nepali nep np Nepali
			set music_folder $music_folder'nepali'
		case religious morning 
			set music_folder $music_folder'morning'
	
		case search 
			set -l music_folder (find $music_folder -type f | grep -i $argv[2])
		if not set -q music_folder[1] 
				echo "music not found"
				set music_folder '~/music/english' 
				return
			else
				echo "playing"
				for music in $music_folder
					echo $music
				end
				vlc $music_folder 2&>1 /dev/null & disown;
				return
			end

	end
	vlc $music_folder 2&>1 /dev/null & disown;
end

function cvlcd
	cvlc $argv 2&>1 /dev/null & disown;
end

function ym --wraps youtube-dl --description 'download youtube music'
	set output_dir '~/music/'
        set args_num (count $argv)	
	if [ $args_num -lt 2 ]
	echo "provide output and link . usage: ym video_link [nepali/hindi/eng/mozart]" 
	end

	switch $argv[2] 
	case nepali np nep Nepali 
		set output_dir $output_dir'nepali/'
	case morning religious 
		set output_dir $output_dir'morning/'
	case eng en english English
		set output_dir $output_dir'english/'
	case mood mozart beethoven yiruma study gratitude classical classic
		set output_dir $output_dir'classical/'
	case hindi indian 
		set output_dir $output_dir'hindi/'
	case bhojpuri Bhojpuri bhoj
		set output_dir $output_dir'bhojpuri/'
	end

	#if not test -e '$output_dir'
	#	mkdir -p '$output_dir'
	#end
	 echo "saving to "$output_dir 

	youtube-dl -x --audio-format mp3 -o $output_dir"%(title)s.%(ext)s" $argv[1]
end 

set EDITOR nvim

function zathura 
	command zathura $argv & disown;	
end

function spotify
	echo " now opening" 
	command bash | LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify $argv & disown;
end

function fd
	command fdfind $argv
end




export SPOTIPY_CLIENT_ID='09b8d5f53d0c4df4b820fa33787f2088' 
export SPOTIPY_CLIENT_SECRET='a894d5e4ef5541cb92c2fd14476487f3'

export FZF_DEFAULT_OPTS="
--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker='*'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | xclip -selection clipboard)'
--bind 'ctrl-e:execute(echo {+} | xargs -o vim)'
--bind 'ctrl-v:execute(code {+})'
"


