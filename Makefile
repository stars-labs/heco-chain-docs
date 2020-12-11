all: pull commit

pull:
	git pull origin master

commit:
	git add .
	git commit -m "update docs"
	git push origin master

