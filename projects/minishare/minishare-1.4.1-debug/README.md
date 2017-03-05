# MiniShare 1.4.1 (debug symbols added)

To add debug symbols the MinGW g++ toolchain needs to installed on a Windows host. Window 10 and the latest MinGW toolchain will work. 

- Install g++ and make utilities using [MinGW Installation Manager](http://www.mingw.org/wiki/Getting_Started). You will want add the `C:\MinGW\bin` to the System `PATH` environment variable.
- Edit the `Makefile` in the MiniShare 1.4.1 to add the `-g` (`-ggdb` specifically adds GDB debugger support) option and remove the `-s` compiler flag. There is also an issue with the `FICONS` variable that needs to be fixed. The resulting `Makefile` can be found [here](minishare-1.4.1-src/src/Makefile).
- Running the `Makefile` results in some linker errors, it seems some options are not getting specified properly, however the `Makefile` does generate the right commands so a workaround is to run `make -n > compile.bat` to generate all the required build commands and echo the commands to a batch file. Then running the batch file will successfully compile all versions of the application. The resulting batch file can be found [here](minishare-1.4.1-src/src/compile.bat).
- The MinGW `gdb` program can be used to debug the program. For example: `gdb minishare.exe`, `break *main`.