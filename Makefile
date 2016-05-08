PREFIX= /usr

all: build

build: 
	python2 convert.py

install:
	mkdir -pv  $(DESTDIR)$(PREFIX)/share/personalization/preview
	mkdir -pv  $(DESTDIR)$(PREFIX)/share/personalization/thumbnail

	cp -r preview/*  $(DESTDIR)$(PREFIX)/share/personalization/preview
	cp -r thumbnail/* $(DESTDIR)$(PREFIX)/share/personalization/thumbnail

clean:
	rm -fr preview  thumbnail
