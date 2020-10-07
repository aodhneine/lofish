function __lf_section_dir -d "Configures display of current directory"
  __lf_util_set_default LOFISH_DIR_SHOW true

  # exit if we don't want to print directory
  [ $LOFISH_DIR_SHOW = false ]; and return

  __lf_util_set_default LOFISH_DIR_PREFIX "in "
  __lf_util_set_default LOFISH_DIR_SUFFIX " "

  __lf_util_set_default LOFISH_DIR_TRUNCATED 1

  __lf_util_set_default LOFISH_DIR_COLOUR "cyan"

  set -l dir
  set -l tmp

  set -l realhome ~
  set tmp (string replace -r '^'"$realhome"'($|/)' '~$1' $PWD)
  
  set dir $tmp # (__lf_util_truncate_dir $tmp $LOFISH_DIR_TRUNCATED)

  echo -en $LOFISH_DIR_PREFIX
  set_color normal

  set_color --bold $LOFISH_DIR_COLOUR
  echo -en $dir
  set_color normal

  echo -en $LOFISH_DIR_SUFFIX
end
