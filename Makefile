default: programming-by-voice-FAQ.html upload


upload: 
	ftp -n -i home193469624.1and1-data.host < FTP-commands.txt


programming-by-voice-FAQ.html: FAQ.haml FAQ.txt
	cp FAQ.txt programming-by-voice-FAQ.txt
	haml FAQ.haml > $@

clean::
	rm -rf programming-by-voice-FAQ.html
	rm -rf programming-by-voice-FAQ.txt
