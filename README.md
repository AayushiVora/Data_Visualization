# COMPONENT 2

* Approach taken:

`The movie aims to show the points where the earthquake affected at the 1st second. It represents the effect of earthquake at 1st second in a 3D view. The height of the points from the surface of the earth represents the magnitude.`



We created a movie for Component 2 in Processing (Java) using spherical coordinates. This movie is basically a 3D view of the world. The reference for this code is taken from 
<https://github.com/CodingTrain/Rainbow-Code/tree/master/CodingChallenges/CC_58_EarthQuakeViz3D>. The data used for this Component is the same earthquake data that is used for Component 1.
The data used is in a csv file format. This is how the TransformedData.csv looks like:

| longitude        | latitude           | magnitude  |
| ------------- |:-------------:| -----:|
|-98.683   | 27.065 | -0.00025517 |
| -98.102   | 26.938   | -6.78E-05|
| -98.068 | 26.463    |    0.000406|

 In the code, a for loop is run to read each latitude, longitude and its respective magnitude at the 1st second. Once it is read, these values are converted into angles to plot in horizontal and vertical locations. The latitude value should be between 0 and Π. The longitude value should be between 0 and 2Π. According transformations are done to latitude and longitude values. The magnitude values are shown usign the unit vector 'PVector'. The pushMatrix() and popMatrix() are used for plotting points.  

- Strength:

We could show the magnitude effect in 3D. Inspite of having data in two different files of different format, we managed to combine the files in the csv format and used for the 3D plotting.

+ Weaknesses

As the Component description said, we needed a time-varying visualization of the transportable array. Hence, for this we tried plotting the values of each latitude and longitude. However the plot was only shown for a second and not for the entire time duration. 

+ Contribution of each group member

Entire team worked together for the Component 2. Aayushi and Shraddha tried managing the data by combining the location.tsv and data_tohoku_norm_transpose.csv files. Bhopesh and Arushi worked on the look of the 3D view of the data. All the team members worked together for the coding of the movie. 
