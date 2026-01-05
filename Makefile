install:
	@echo "Installing the application..."
	    pip install --upgrade pip &&\
			pip install -r requirements.txt	

format:
	@echo "Formatting code..."
	black *.py mylib/*.py

lint:
	@echo "Running linter..."
	# Add linting commands here

test:
	@echo "Running tests..."
	# Add testing commands here

deploy:
	@echo "Deploying the application..."
	# Add deployment commands here

all	: install format lint test deploy
	@echo "All tasks completed."

