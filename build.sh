#!/bin/bash
set -e

function pack(){
  $LANG=$1
  mkdir -p ./$LANG/switch/DBI_$LANG
  mv ./$LANG/DBI.nro ./$LANG/switch/DBI_$LANG
  cp ./temp/* ./$LANG/switch/DBI_$LANG
  cd ./$LANG
  zip -rq DBI_$LANG.zip ./switch
  mv ./DBI_$LANG.zip ../
  cd ../
}

pack CN
pack EN
pack RU