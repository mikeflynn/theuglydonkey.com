install: clean build

hugo:
				@brew update
				@brew install hugo

build:
				@hugo

clean:
				@rm -rf public

pull:
				@git pull --rebase
				@cd themes/hugo-minimalist-theme && git pull --rebase

refresh: pull install

help:
				@echo "Makefile usage:";
				@echo " make \t\t\t Clears and rebuilds the site.";
				@echo " make clean \t\t Clears the built files.";
				@echo " make build \t\t Builds site files.";
				@echo " make hugo \t\t Installs hugo via homebrew."