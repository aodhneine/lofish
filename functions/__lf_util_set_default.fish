function __lf_util_set_default -a var -d "Set variable if not set already"
  if not set -q $var
    set -g $var $argv[2..-1]
  end
end
