all : dist/josm

clean :
	rm dist/josm-custom.jar

dist/josm-custom.jar :
	ant

dist/josm :dist/josm-custom.jar
	gcj-4.4 -O4 -o dist/josm --main=org.openstreetmap.josm.gui.MainApplication dist/josm-custom.jar

dist/josmgdb0:dist/josm-custom.jar
	gcj-4.4 -O0 -g -o dist/josmgdb0 --main=org.openstreetmap.josm.gui.MainApplication dist/josm-custom.jar

dist/josmgdb:dist/josm-custom.jar
	gcj-4.4 -g -o dist/josmgdb --main=org.openstreetmap.josm.gui.MainApplication dist/josm-custom.jar

#gcj-4.4 --main=org.openstreetmap.josm.gui.MainApplication dist/josm-custom.jar 