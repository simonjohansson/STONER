# Whats different in this fork?

* Added a couple of millimeters between the keys and the walls to allow for easier soldering.
* Removed some of the more extreme angles to allow for easier sanding/priming/paining.
* Added a 10mm wall to the base plate to raise the keyboard.
* Restructured the build step.
  * `watch_and_build.sh` 

# Dactyl CC Keyboard

This keyboard and associated libraries take heavy inspiration from the
 [dactyl](https://github.com/adereth/dactyl-keyboard) and
the [dactyl_manuform](https://github.com/abstracthat/dactyl-manuform) keyboards.
 Major thanks to Matthew Adereth and Tom Short for their work.

The dactyl-cc keyboard takes a different approach to the structure of the code (and language)
 as well as being more similar in feel to the Kinesis Advantage 2.

If you are interested in a smaller version see the [mini](https://github.com/mjohns/dactyl-cc-mini) version.

If you are interested in building it you can take a look at the [guide](guide/README.md). Any dactyl build guide you choose should work.

![image](https://imgur.com/CUbPLZC.jpg)

CMake is the preferred way to build and leads to the fastest recompilation times. You only need to run the cmake command once.
```
cd build
cmake ../src
make && ./dactyl
```

If you do not have cmake installed you can run the simple build script which just uses g++.
```
cd build
./build_simple.sh
```

You can generate an stl from the command line with the following command:
```
cd build
openscad -o ../things/v1_left.stl v1_left.scad
```

![image](https://imgur.com/IP2UYYA.jpg)
![image](https://imgur.com/LvZQUT4.jpg)
![image](https://imgur.com/0AYtoey.jpg)

[other images](https://imgur.com/a/jBbUXNx)
