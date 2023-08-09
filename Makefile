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
