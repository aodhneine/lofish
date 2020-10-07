function fish_prompt
  set -g lf_exit_code $status
  set -g LOFISH_VERSION "0.1.0"

  # configuration
  __lf_util_set_default LOFISH_PROMPT_ADD_NEW_LINE true
  __lf_util_set_default LOFISH_PROMPT_ORDER "dir" "newline" "char"

  # add new line
  if test $LOFISH_PROMPT_ADD_NEW_LINE = true
    echo
  end

  for i in $LOFISH_PROMPT_ORDER
    eval __lf_section_$i
  end

  # reset colours
  set_color normal
end
