# Whats different between STONER and Dactyl-CC? 

* Added a couple of millimeters between the keys and the walls to allow for easier soldering.
* Removed some of the more extreme angles to allow for easier sanding/priming/paining.
* Added a 10mm wall to the base plate to raise the keyboard.
* Move the screw holes around a bit to make sure the bottom sits flush and there are no gaps in the corners.
* Removed the square holes, these are going to go into the walls in the base.
* Restructured the build step.
  * `watch_and_build.sh` 

# What needs to be done?

* Add reccess for the M3 screws so they sit flush in the base
* Figure out what microcontroller to use and cut out a piece for its USB in the bottom plate.
* Figure out how to integrate a Thinkpad Trackpoint.

# Why is it called STONER?

the be**ST** keyb**O**ard i**N** th**E** unive**R**se

# Acknowledgements

This keyboard is essentially a [dactyl-cc](https://github.com/mjohns/dactyl-cc) with slight modifications outlined above. So thanks a million [mjohns](https://github.com/mjohns) for designing the second best keyboard in the universe.

Furthermore, none of this would be possible wihout the third best keyboard in the universe, the [Kinesis Advantage](https://kinesis-ergo.com/shop/advantage2/).
If you dont feel like faffing around with 3D printing and soldering this is bar none, imho, the best ergonomic keyboard you can buy. Ergodox is neat, but from a purely ergonomic standpoint the Kinesis is so much more confortable. 

# If the Kinesis Advantage is so good, why print a copy?

* The firmware isn't terribly flexible or fun, you can ofc muck about and get QMK to run but I dont feel like messing with my Advantage.
* Whilst there are mods to get bluetooth and USB-C charging, I dont feel like messing with my Advantage.
* Its quite large, I would love to have a bowl of candy or cereal between my hands for long sessions, and the curvature between the finger islands make the bowl slide around. 
* To integrate a trackpoint you need to bring out a dremel. The keyboard is >300$, and I have no confidence in my ability to create anything else than a very expensive broken piece of plastic.

# How do I build?

First start by building dactyl.

```
$ cmake src # You only need to do this once
$ make # Creates a binary that generates .scad
$ ./dactyl # Generates the .scad files that can be opened and viewed in OpenSCAD
```

This gets tedious quickly if you are making many changes. Simply run `watch_and_build.sh` and open the .scad file you are interested in inside OpenSCAD, make a change and it will all automagically recompile and re-render the changes inside OpenSCAD.

Once you have generated your scad you need to render STL's (these are already in `things`)

```
$ ./makeThings.sh
```

# How long does it take to print?

I've printed the top part in around 20h at 120mm/s with 0.2 layer height and the bottom part in around 2h at the same settings. 