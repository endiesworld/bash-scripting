#!/bin/bash

code_to_error_de()
{
  declare -a messages

  messages[1]="Der Datei wurde nicht gefunden:"
  messages[2]="Berechtigung zum Lesen der Datei verweigert:"

  echo "${messages[$1]}"
}

code_to_error_en()
{
  declare -a messages

  messages[1]="File not found:"
  messages[2]="Permission to read the file denied:"

  echo "${messages[$1]}"
}

print_error()
{
  case $LANG in
    de_DE)
      local func="code_to_error_de"
      ;;
    en_US)
      local func="code_to_error_en"
      ;;
    *)
      local func="code_to_error_en"
      ;;
  esac

  echo "$($func $1) $2" >> debug.log
}
