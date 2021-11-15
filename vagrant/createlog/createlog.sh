#! /bin/bash
SHELL_DIR="$(cd "$( dirname "$0"  )" && pwd  )"
INDEX_FILE="$SHELL_DIR/index"
NOW=$(date '+%Y-%m-%d %H:%M:%S')
sf="$SHELL_DIR/source.log"

INDEX=$(cat $INDEX_FILE)
LINE_COUNT=$1

if [ -z "$LINE_COUNT" ];then
  LINE_COUNT=1
fi

if [[ "$LINE_COUNT" == "0" ]];then 
    echo "0" > $INDEX_FILE
    echo '重置索引'
    exit 0
fi
HEAD=$(expr ${LINE_COUNT} + ${INDEX})

# 打印原日志，并将其中的时间替换
cat $sf | head -$HEAD | tail -$LINE_COUNT | sed "s/2021-..-.. ..:..:....../${NOW}.000/"

echo $HEAD > $INDEX_FILE


