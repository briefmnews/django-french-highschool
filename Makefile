clean:
	rm -rf *.egg-info .pytest_cache
	rm -rf htmlcov
	find . -name '*.pyc' -delete
	find . -name '__pycache__' -delete

install:
	pip install -r test_requirements.txt
	pre-commit install

release:
	git tag -a $(shell python -c "from french_highschool import __version__; print(__version__)") -m "$(m)"
	git push origin --tags

release_test:
	- rm -rf build && rm -rf dist && rm -rf *.egg-info
	- python setup.py sdist bdist_wheel
	- python -m twine upload --repository testpypi dist/*

release_prod:
	- rm -rf build && rm -rf dist && rm -rf *.egg-info
	- python setup.py sdist bdist_wheel
	- python -m twine upload dist/* --repository django-french-highschool --verbose
