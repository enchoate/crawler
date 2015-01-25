VERSION=0.2
CRAWL=crawl-${VERSION}
DESTDIR=/usr/local/bin

install:
	sudo ./install.sh

uninstall:
	sudo ./uninstall.sh

dist:
	mkdir -p dist build/$(CRAWL)/bin
	cp -R bin install.sh uninstall.sh build/$(CRAWL)
	tar Ccjf build dist/$(CRAWL).tar.bz2 $(CRAWL)

clean:
	rm -rf dist build

.PHONY: clean install uninstall dist
