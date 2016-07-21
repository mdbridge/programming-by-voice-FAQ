default: programming-by-voice-FAQ.html upload


upload: 
	ftp -n -i vocola.net < FTP-commands.txt


programming-by-voice-FAQ.html: FAQ.haml FAQ.txt
	cp FAQ.txt programming-by-voice-FAQ.txt
	haml FAQ.haml > $@

clean::
	rm -rf programming-by-voice-FAQ.html
	rm -rf programming-by-voice-FAQ.txt
