VERSION=0.1
CRAWL=crawl-${VERSION}
DESTDIR=/usr/local/bin

install:
	install -m 755 -o root -p bin/crawl $(DESTDIR)

uninstall:
	rm -rf $(DESTDIR)/crawl

dist:
	mkdir -p dist build/$(CRAWL)/bin
	cp -R bin install.sh build/$(CRAWL)
	tar Ccjf build dist/$(CRAWL).tar.bz2 $(CRAWL)

clean:
	rm -rf dist build

.PHONY: clean install uninstall dist
