function __lf_util_truncate_dir -a path limit -d "Truncates path to limited number of directories"
  if test $limit -eq 0
    echo $path
  else
    set -l folders (string split '/' $path)

    if test (count $folders) -le $limit
      echo $path
    else
      echo (string join '/' $folders[(math 0 - $limit)..-1])
    end
  end
end
