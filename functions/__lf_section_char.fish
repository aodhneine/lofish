function __lf_section_char -d "Configures the prompt character"
  __lf_util_set_default LOFISH_CHAR_PREFIX " "
  __lf_util_set_default LOFISH_CHAR_SUFFIX " "
  __lf_util_set_default LOFISH_CHAR_SYMBOL "❯"

  __lf_util_set_default LOFISH_CHAR_COLOUR_SUCCESS "magenta"
  __lf_util_set_default LOFISH_CHAR_COLOUR_FAILURE "red"

  if test $lf_exit_code -eq 0
    set colour $LOFISH_CHAR_COLOUR_SUCCESS
  else
    set colour $LOFISH_CHAR_COLOUR_FAILURE
  end

  set_color --bold $colour
  echo -en $LOFISH_CHAR_SYMBOL
  set_color normal

  echo -en $LOFISH_CHAR_SUFFIX
end
