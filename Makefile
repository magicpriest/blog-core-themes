remote=root@blog-core.rlaanemets.com:/usr/share/nginx/blog-core.rlaanemets.com/themes

all: blue green orange red white

# FIXME add mixins.less as dependency

blue: blue/style.css blue/index.html blue/page.html

blue/style.css: blue/blue.less blue/blue_settings.less style.less
	lessc $< $@

blue/index.html: index.html
	cp $< $@

blue/page.html: page.html
	cp $< $@

green: green/style.css green/index.html green/page.html

green/style.css: green/green.less green/green_settings.less style.less
	lessc $< $@

green/index.html: index.html
	cp $< $@

green/page.html: page.html
	cp $< $@

orange: orange/style.css orange/index.html orange/page.html

orange/style.css: orange/orange.less orange/orange_settings.less style.less
	lessc $< $@

orange/index.html: index.html
	cp $< $@

orange/page.html: page.html
	cp $< $@

red: red/style.css red/index.html red/page.html

red/style.css: red/red.less red/red_settings.less style.less
	lessc $< $@

red/index.html: index.html
	cp $< $@

red/page.html: page.html
	cp $< $@

white: white/style.css white/index.html white/page.html

white/style.css: white/white.less white/white_settings.less style.less
	lessc $< $@

white/index.html: index.html
	cp $< $@

white/page.html: page.html
	cp $< $@

clean:
	rm -f blue/style.css blue/index.html
	rm -f green/style.css green/index.html
	rm -f orange/style.css orange/index.html
	rm -f red/style.css red/index.html
	rm -f white/style.css white/index.html

upload:
	rsync --exclude='.*' -avz -e ssh . $(remote)

.PHONY: all blue green orange red white clean
