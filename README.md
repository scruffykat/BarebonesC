# 🦴 Barebones C
A super barebones C project to kickstart basic creations

# Setup
Simply download the repository and keep hold of the files. My recommended steps are the following.

1. Clone the repository
2. Edit/remove/add files such as README to fit your needs
3. Keep the template somewhere safe so you can copy it and paste it for a new project instantly.

# Usage
By default, this project template is designed to compile C programs into an executable for the current system using Makefiles.

### Editing parameters
At the top of the makefile, you will see various variables to edit. Here is some description on them.

| Variable | Default Value | What it is/does |
| --- | --- | --- |
| CC | gcc | The name of the compiler executable you wish to use, eg gcc or clang |
| CFLAGS | -Wall -g | The flags you wish to pass into the above compiler |
| EXEC | myapp | Name of final executable |
| OUTPUT | bin | Name of output directory |

### Commands
Use the following commands to easily interact with the build process. Also note that you can append `DEBUG=on` after the command to build with debug arguments automatically (Recommended during development and testing)

### Build 
Builds the entire project
```
make
```

### Build and Run
Builds the entire project then runs the executable
```
make run
```

### Clean
Cleans up the object and binary files
```
make clean
```

# Provided as is.
I am not an expert in C, in fact I am a mere beginner. You should only use this if you want to trust the pure guesswork of a beginner. 