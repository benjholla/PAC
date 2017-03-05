windres minishare.rc -o english.o --define ENGLISH
windres minishare.rc -o finnish.o --define FINNISH
windres minishare.rc -o dutch.o --define DUTCH	
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer server.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer minishare.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer misc.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer ipdiag.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer files.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer config.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer gui.cpp -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer cmdline.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer error.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer auth.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer serve.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer serve2.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer log.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer ban.c -c 
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer editfile.c -c
g++ -ggdb -O3 -mwindows -Wall -fomit-frame-pointer edituser.c -c
g++ -o../bin/english/minishare server.o minishare.o misc.o ipdiag.o files.o config.o gui.o cmdline.o error.o auth.o serve.o serve2.o log.o ban.o editfile.o edituser.o english.o -lws2_32 -lgdi32 -lcomctl32 -lcomdlg32 -ggdb -O3 -mwindows -Wall -fomit-frame-pointer
g++ -o../bin/finnish/minishare server.o minishare.o misc.o ipdiag.o files.o config.o gui.o cmdline.o error.o auth.o serve.o serve2.o log.o ban.o editfile.o edituser.o finnish.o -lws2_32 -lgdi32 -lcomctl32 -lcomdlg32 -ggdb -O3 -mwindows -Wall -fomit-frame-pointer
g++ -o../bin/dutch/minishare server.o minishare.o misc.o ipdiag.o files.o config.o gui.o cmdline.o error.o auth.o serve.o serve2.o log.o ban.o editfile.o edituser.o dutch.o -lws2_32 -lgdi32 -lcomctl32 -lcomdlg32 -ggdb -O3 -mwindows -Wall -fomit-frame-pointer
