CFLAGS= -O3 -s -mwindows -Wall -fomit-frame-pointer
SLIBS= -lws2_32 -lgdi32 -lcomctl32 -lcomdlg32
OBJECTS= server.o minishare.o misc.o ipdiag.o files.o config.o gui.o cmdline.o error.o \
auth.o serve.o serve2.o log.o ban.o editfile.o edituser.o
CC= g++
PROGRAM= minishare
ICONS= menu_log.bmp menu_config.bmp menu_about.bmp menu_remove.bmp menu_index.bmp menu_dir.bmp \
menu_open.bmp menu_copy.bmp minishare_logo_v2_256.bmp list_send.ico
FICONS= 
for FI in $(ICONS); do FICONS+= res/$(FI); done

$(PROGRAM): english.o finnish.o dutch.o $(OBJECTS)
	$(CC) -o../bin/english/$(PROGRAM) $(OBJECTS) english.o $(SLIBS) $(CFLAGS)
	$(CC) -o../bin/finnish/$(PROGRAM) $(OBJECTS) finnish.o $(SLIBS) $(CFLAGS)
	$(CC) -o../bin/dutch/$(PROGRAM) $(OBJECTS) dutch.o $(SLIBS) $(CFLAGS)
	
server.o: server.c server.h minishare.h 
	$(CC) $(CFLAGS) server.c -c 

error.o: error.c error.h server.h
	$(CC) $(CFLAGS) error.c -c 

auth.o: auth.c auth.h base64.c
	$(CC) $(CFLAGS) auth.c -c 

ban.o: ban.c ban.h
	$(CC) $(CFLAGS) ban.c -c 
	
log.o: log.c log.h
	$(CC) $(CFLAGS) log.c -c 
	
serve.o: serve.c serve.h
	$(CC) $(CFLAGS) serve.c -c 
		
serve2.o: serve2.c serve2.h
	$(CC) $(CFLAGS) serve2.c -c 
	
minishare.o: minishare.c minishare.h 
	$(CC) $(CFLAGS) minishare.c -c

misc.o: misc.c misc.h minishare.h 
	$(CC) $(CFLAGS) misc.c -c
	
gui.o: gui.cpp gui.h minishare.h 
	$(CC) $(CFLAGS) gui.cpp -c

ipdiag.o: ipdiag.c minishare.h	
	$(CC) $(CFLAGS) ipdiag.c -c

editfile.o: editfile.c minishare.h	
	$(CC) $(CFLAGS) editfile.c -c
	
edituser.o: edituser.c minishare.h	
	$(CC) $(CFLAGS) edituser.c -c
	
files.o: files.c files.h minishare.h 
	$(CC) $(CFLAGS) files.c -c

config.o: config.c config.h minishare.h	
	$(CC) $(CFLAGS) config.c -c

cmdline.o: cmdline.h cmdline.c	
	$(CC) $(CFLAGS) cmdline.c -c
	
finnish.o: minishare.rc minishare.h res/finnish.inc $(FICONS) 
	windres minishare.rc -o finnish.o --define FINNISH
	
english.o: minishare.rc minishare.h res/english.inc $(FICONS) 
	windres minishare.rc -o english.o --define ENGLISH
	
dutch.o: minishare.rc minishare.h res/dutch.inc $(FICONS) 
	windres minishare.rc -o dutch.o --define DUTCH	
