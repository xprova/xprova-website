TMP = template/template.htm

build: overview.htm formal.htm example.htm contact.htm download.htm

overview.htm: src/overview.md $(TMP)
	pandoc src/overview.md --template $(TMP) -o html/overview.htm

formal.htm: src/formal.md $(TMP)
	pandoc src/formal.md --template $(TMP) -o html/formal.htm

example.htm: src/example.md $(TMP)
	pandoc src/example.md --template $(TMP) -o html/example.htm

contact.htm: src/contact.md $(TMP)
	pandoc src/contact.md --template $(TMP) -o html/contact.htm

download.htm: src/download.md $(TMP)
	pandoc src/download.md --template $(TMP) -o html/download.htm

clean:
	rm -rf html/formal.htm
	rm -rf html/overview.htm
	rm -rf html/example.htm
	rm -rf html/contact.htm
	rm -rf html/download.htm

renameVirtualLink:
	sed -i -- 's/\.htm//g' 	html/*.htm

publish: build renameVirtualLink
	find -name 'Thumbs.db' | xargs -I {} rm {}
	rsync -av --delete --chmod=u=rwx,g=rx,o= --groupmap=*:www-data --exclude '.git' ./ gtarawneh@xprova.net:/var/www/html2