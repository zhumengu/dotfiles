ZLUA_LUAEXE=/c/Users/zhumeng/scoop/shims/lua
ZLUA_SCRIPT=/c/Users/zhumeng/scoop/apps/z.lua/current/z.lua
_zlua() {
	local arg_mode=""
	local arg_type=""
	local arg_subdir=""
	local arg_inter=""
	local arg_strip=""
	if [ "$1" = "--add" ]; then
		shift
		_ZL_RANDOM="$RANDOM" "$ZLUA_LUAEXE" "$ZLUA_SCRIPT" --add "$@"
		return
	elif [ "$1" = "--complete" ]; then
		shift
		"$ZLUA_LUAEXE" "$ZLUA_SCRIPT" --complete "$@"
		return
	fi
	while [ "$1" ]; do
		case "$1" in
			-l) local arg_mode="-l" ;;
			-e) local arg_mode="-e" ;;
			-x) local arg_mode="-x" ;;
			-t) local arg_type="-t" ;;
			-r) local arg_type="-r" ;;
			-c) local arg_subdir="-c" ;;
			-s) local arg_strip="-s" ;;
			-i) local arg_inter="-i" ;;
			-I) local arg_inter="-I" ;;
			-h) local arg_mode="-h" ;;
			--help) local arg_mode="-h" ;;
			--purge) local arg_mode="--purge" ;;
			*) break ;;
		esac
		shift
	done
	if [ "$arg_mode" = "-h" ] || [ "$arg_mode" = "--purge" ]; then
		"$ZLUA_LUAEXE" "$ZLUA_SCRIPT" $arg_mode
	elif [ "$arg_mode" = "-l" ] || [ "$#" -eq 0 ]; then
		"$ZLUA_LUAEXE" "$ZLUA_SCRIPT" -l $arg_subdir $arg_type $arg_strip "$@"
	elif [ -n "$arg_mode" ]; then
		"$ZLUA_LUAEXE" "$ZLUA_SCRIPT" $arg_mode $arg_subdir $arg_type $arg_inter "$@"
	else
		local zdest=$("$ZLUA_LUAEXE" "$ZLUA_SCRIPT" --cd $arg_type $arg_subdir $arg_inter "$@")
		if [ -n "$zdest" ] && [ -d "$zdest" ]; then
			if [ -z "$_ZL_CD" ]; then
				builtin cd "$zdest"
			else
				$_ZL_CD "$zdest"
			fi
			if [ -n "$_ZL_ECHO" ]; then pwd; fi
		fi
	fi
}
# alias ${_ZL_CMD:-z}='_zlua 2>&1'
alias ${_ZL_CMD:-z}='_zlua'
case "$PROMPT_COMMAND" in
	*_zlua?--add*) ;;
	*) PROMPT_COMMAND="(_zlua --add \"\$(pwd 2>/dev/null)\" &)${PROMPT_COMMAND:+;$PROMPT_COMMAND}" ;;
esac

if [ -n "$BASH_VERSION" ]; then
	complete -o filenames -C '_zlua --complete "$COMP_LINE"' ${_ZL_CMD:-z}
fi

zlua_fzf="fzf --nth 2.. --reverse --info=inline --tac --height 35%"

if [ "$TERM" != "dumb" ] && which fzf >/dev/null 2>&1; then
	# To redraw line after fzf closes (printf '\e[5n')
	bind '"\e[0n": redraw-current-line'
	_zlua_fzf_complete() {
		local selected=$(_zlua -l "${COMP_WORDS[@]:1}" | sed "s|$HOME|\~|" | $zlua_fzf | sed 's/^[0-9,.]* *//')
		if [ -n "$selected" ]; then
			COMPREPLY=( "$selected" )
		fi
		printf '\e[5n'
	}
	complete -o bashdefault -o nospace -F _zlua_fzf_complete ${_ZL_CMD:-z}
fi
