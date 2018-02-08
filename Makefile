clean:
	@echo "Cleaning source tree..."
	rm -rf site/

doc:
	@echo "Building documentations..."
	mkdocs build
