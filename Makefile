.PHONY: quality style

check_dirs := training tests video_recaptioning

quality:
	ruff check $(check_dirs)
	ruff format --check $(check_dirs) 

style:
	ruff check $(check_dirs) --fix
	ruff format $(check_dirs)
