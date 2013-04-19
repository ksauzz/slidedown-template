NAME = slide
HTML = ${NAME}.html
MARKDOWN = ${NAME}.md

all:
	slidedown ${MARKDOWN} -t `pwd`/templates/default_ja > ${HTML}

clean:
	rm -f ${HTML}

watch:
	watchmedo shell-command --patterns="*.md" --wait --command="make"
