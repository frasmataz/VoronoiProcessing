# VoronoiProcessing
5 minute hackup of a Voronoi diagram generator in Processing.
Mostly knocked together to ensure I understood the algorithm.

Implementation is super simple and inefficient.  Cells are drawn by looping through each pixel in the image and setting their colour to that of the closest node.  I'm sure there is a way to calculate the vertices of each cell and drawing them as polygons, which would cut out the awful "compare every pixel against every node" method.  However this was done on lunchbreak and I couldn't work it out off the top of my head! ¯\_(ツ)_/¯

Click to add new points!
