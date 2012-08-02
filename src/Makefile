all: build

build:
	wintersmith build -o ../ -v

clean:
	# rm -r ./contents/assets/img/thumbs
	find .. -maxdepth 1 -not \( -name 'src' -or -name 'README.md' -or -name '.git' -or -name '..' \) -exec rm -r {} \;

.PHONY: all build clean
