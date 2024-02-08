
PHONY: build notebook profile-template 

SHELL := /bin/bash

ACTIVATE := .venv/bin/activate

build:
	@( \
		source $(ACTIVATE) ; \
		pip3 install -r requirements-dev.txt ; \
		python -m build ; \
		pip install -e . ; \
	)

notebook:
	jupyter notebook --port 8888 --no-browser

profile-template:
	@( \
		source $(ACTIVATE); \
	  ipython profile create profile-template; \
	  ln -sf $(shell pwd)/ipython_startup/profile-template.py ~/.ipython/profile_profile-template/startup/ ; \
	)


ipy-template:
	@( \
		source $(ACTIVATE); \
		python -m IPython --profile profie-template; \
	)





