function __lf_section_newline -d "Splits prompt into two lines"
  __lf_util_set_default LOFISH_PROMPT_SPLIT_NEWLINE true

  if test $LOFISH_PROMPT_SPLIT_NEWLINE = true
    echo -ne '\n'
  end
end
