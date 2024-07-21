default: programming-by-voice-FAQ.html upload


upload: 
	(cd ~/voice/Vocola_development/Vocola_net; git pull)
	cp programming-by-voice-FAQ.html ~/voice/Vocola_development/Vocola_net/src/
	cp programming-by-voice-FAQ.txt  ~/voice/Vocola_development/Vocola_net/src/
	(cd ~/voice/Vocola_development/Vocola_net; git diff)
	#(cd ~/voice/Vocola_development/Vocola_net; git push)

programming-by-voice-FAQ.html: FAQ.haml FAQ.txt
	cp FAQ.txt programming-by-voice-FAQ.txt
	haml FAQ.haml > $@

clean::
	rm -rf programming-by-voice-FAQ.html
	rm -rf programming-by-voice-FAQ.txt
