#! /bin/sh

dest="build/cute.slider.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.slider.list); do
	echo "$f"
	printf "//$f\n" >> $dest;	
	cat "$f" >> $dest;	
	printf "\n" >> $dest;
done 

dest="build/cute.canvas.module.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.canvas.module.list); do
	echo "$f"
	cat "$f" >> $dest;
	printf "\n" >> $dest;
done 

dest="build/cute.2d.module.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.2d.module.list); do
	echo "$f"
	cat "$f" >> $dest;
	printf "\n" >> $dest;
done 

dest="build/cute.css3d.module.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.css3d.module.list); do
	echo "$f"
	cat "$f" >> $dest;
	printf "\n" >> $dest;
done 

dest="build/cute.transitions.all.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.transitions.all.list); do
	echo "$f"
	cat "$f" >> $dest;
	printf "\n" >> $dest;
done 

dest="build/cute.gallery.plugin.js"

rm $dest 2>/dev/null
for f in $(grep -vE "^$|^#" src/cute.gallery.plugin.list); do
	echo "$f"
	cat "$f" >> $dest;
	printf "\n" >> $dest;
done 