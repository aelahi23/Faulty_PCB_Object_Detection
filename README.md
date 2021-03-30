The primary aim of this system is to process the image of a circuit board (PCB) so that an overlay of detected hole positions (using red
markers) can be shown plus an overlay of the pre-defined positions (using green markers). A sample image (partial) is shown in Figure 1. It should be obvious by looking at the combined image if any holes are incorrect. A secondary objective is to be able to automatically produce a list of the coordinates of any small holes that are not present and the coordinates of any holes that fall more than 0.3 mm from the specified location.

  ![Figure1](https://user-images.githubusercontent.com/30199805/113021364-6798bc80-917b-11eb-82d1-ba7afc93e9df.PNG)

The circuit boards are around 74 mm square and the coordinates are given in units of 0.1 mm. The registration should be visually confirmed using an image overlay. The image must then be processed to identify the positions of the small drill holes. A second image overlay is then generated. All of the big holes should be ignored. To meet the final objective (quantitative analysis) the coordinates of the drill holes must be converted into a list format and a procedure devised to find correspondences between the coordinates and the drill holes.

This project used structuring elements for morphological processing to develop Binary image with blob detection to correclty locate drilled holes.

Figure below shows the end result with the green and red markers overlayed on the geometric transformed faulty PCB image

![image](https://user-images.githubusercontent.com/30199805/113022219-497f8c00-917c-11eb-827a-33f52ef6bbd2.png)
