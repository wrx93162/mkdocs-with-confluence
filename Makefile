deps:
	pip install -r requirements.txt
	pip install -r requirements_dev.txt

syntax_check:
	flake8 --max-line-length=120 --ignore=D101,D104,D212,D200,E203,W293,D412,W503 mkdocs_with_confluence/

format_check:
	black --check --line-length=120 mkdocs_with_confluence

install: 
	python setup.py install
