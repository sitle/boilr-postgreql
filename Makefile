all: update

list:
	boilr template list

update:
	boilr template save -f . postgresql

test: update
	boilr template use postgresql temp
	ls -l temp/

validate:
	boilr template validate .

clean:
	rm -fr temp
	boilr template delete postgresql

install:
	boilr template use https://github.com/sitle/boilr-postgreql postgresql
