#RIGHT PLACE
function fish_right_prompt
	set -l last_status $status
  #DATE & TIME
  set_color green
  date "+< %Y-%B-%d %a %H:%M:%S >"

  #EXIT STATUS
  if not test $last_status -eq 0
    set_color $fish_color_error
    echo "($last_status)"
  end
end

function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

  # User
  set_color $fish_color_user
  echo -n (whoami)
  set_color normal

  echo -n '@'

  # Host
  set_color $fish_color_host
  echo -n (hostname -s)
  set_color normal

  echo -n ':'

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  __terlar_git_prompt
  __fish_hg_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end
