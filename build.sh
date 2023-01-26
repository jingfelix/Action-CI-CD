# list all markdown files by date
LIST=$(ls -t *.md)
REPO_NAME=${REPO_NAME}

# clear README.md, then add title
echo "# $REPO_NAME" > README.md

# add intro to README.md
echo "\n## Intro" >> README.md
cat Intro.md >> README.md

# add menu
echo "\n## Menu" >> README.md

for i in $LIST
do
    NAME=${i%.md}
    mkdir -p $NAME
    cp $i $NAME/$i
    echo "\n- [$NAME](/$NAME)" >> README.md
done
