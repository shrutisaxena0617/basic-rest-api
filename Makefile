# Makefile
env: env/bin/activate

env/bin/activate: requirements.txt
	virtualenv -p python3 env
	. env/bin/activate; pip install -r requirements-to-freeze.txt --upgrade && pip freeze > requirements.txt
	touch env/bin/activate

clean:
	rm -rf env
