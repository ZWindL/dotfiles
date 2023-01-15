# The following lines were added by compinstall

zstyle ':completion:*' completer _oldlist _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' glob 1
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle ':completion:*' max-errors 5 not-numeric
zstyle ':completion:*' prompt '%e Errors Found'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/zwindl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
 
## 补全与 zstyle
# from 百合仙子的 zsh 配置 https://github.com/lilydjwg/dotzsh/blob/master/zshrc
# 用本用户的所有进程补全
zstyle ':completion:*:processes' command 'ps -afu$USER'
zstyle ':completion:*:*:*:*:processes' force-list always
# 进程名补全
zstyle ':completion:*:processes-names' command  'ps c -u ${USER} -o command | uniq'

# 警告显示为红色
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
# 描述显示为淡色
zstyle ':completion:*:descriptions' format $'\e[2m -- %d --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;33m -- %d (errors: %e) --\e[0m'

# cd 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
# 在 .. 后不要回到当前目录
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# complete manual by their section, from grml
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true

zstyle ':completion:*' menu select
# 分组显示
zstyle ':completion:*' group-name ''
# 歧义字符加粗（使用「true」来加下划线）；会导致原本的高亮失效
# http://www.thregr.org/~wavexx/rnd/20141010-zsh_show_ambiguity/
# zstyle ':completion:*' show-ambiguity '1;37'
# 在最后尝试使用文件名
zstyle ':completion:*' completer _complete _match _approximate _expand_alias _ignored _files
# 修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle -e ':completion:*' special-dirs \
  '[[ $PREFIX == (../)#(|.|..) ]] && reply=(..)'
# 使用缓存。某些命令的补全很耗时的（如 aptitude）
zstyle ':completion:*' use-cache on
_cache_dir=${XDG_CACHE_HOME:-$HOME/.cache}/zsh
zstyle ':completion:*' cache-path $_cache_dir
unset _cache_dir

compdef pkill=killall
compdef pgrep=killall
compdef vman=man
compdef proxychains=command
compdef watch=command
compdef rlwrap=command
compdef ptyless=command
compdef grc=command
compdef agg=ag 2>/dev/null
compdef downgrade=pactree 2>/dev/null
# not only pdf files
compdef -d evince
compdef _gnu_generic exa pamixer
compdef whoneeds=pactree 2>/dev/null

# 我的自动补全 {{{2
zstyle ':completion:*:*:pdf2png:*' file-patterns \
  '*.pdf:pdf-files:pdf\ files *(-/):directories:directories'
zstyle ':completion:*:*:x:*' file-patterns \
  '*.{7z,bz2,gz,rar,tar,tbz,tgz,zip,chm,xz,exe,xpi,apk,maff,crx}:compressed-files:compressed\ files *(-/):directories:directories'
zstyle ':completion:*:*:evince:*' file-patterns \
  '*.{pdf,ps,eps,dvi,djvu,pdf.gz,ps.gz,dvi.gz}:documents:documents *(-/):directories:directories'
zstyle ':completion:*:*:gbkunzip:*' file-patterns '*.zip:zip-files:zip\ files *(-/):directories:directories'
zstyle ':completion:*:*:flashplayer:*' file-patterns '*.swf'
zstyle ':completion:*:*:hp2ps:*' file-patterns '*.hp'
zstyle ':completion:*:*:feh:*' file-patterns '*.{png,gif,jpg,svg}:images:images *(-/):directories:directories'
zstyle ':completion:*:*:sxiv:*' file-patterns '*.{png,gif,jpg}:images:images *(-/):directories:directories'
zstyle ':completion:*:*:timidity:*' file-patterns '*.mid'
