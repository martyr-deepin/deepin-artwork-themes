PREFIX= /usr

all: build

build: 
	python2 convert.py

install:
	mkdir -pv  $(DESTDIR)$(PREFIX)/share/personalization/preview
	mkdir -pv  $(DESTDIR)$(PREFIX)/share/personalization/thumbnail
	mkdir -pv  $(DESTDIR)$(PREFIX)/share/personalization/themes

	cp -r preview/*  $(DESTDIR)$(PREFIX)/share/personalization/preview
	cp -r thumbnail/* $(DESTDIR)$(PREFIX)/share/personalization/thumbnail
	cp -r themes/*  $(DESTDIR)$(PREFIX)/share/personalization/themes

clean:
	rm -fr preview  thumbnail
