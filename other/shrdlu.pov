#include "textures.inc"
#include "colors.inc"

camera {
       location <0, 120, -220>
       look_at  <0  ,  90,    0>
}

sky_sphere {
pigment {
wrinkles
turbulence 0.3
omega 0.707
octaves 5
color_map {
[0.0 color DustyRose * 2.5]
[0.2 color Orange ]
[0.8 color SlateBlue * 0.25]
[1.0 color SkyBlue]
}
scale <0.5, 0.1, 1000>
}
}



light_source { <200, 500, -600> color rgb <1.00, 1.00, 1.00>}

plane { y, 0 pigment {checker color rgb 1.0, color rgb 0.9 scale 100} }
//plane { y, 0 texture {Tan_Wood scale 20}}


#declare small_blue_cube = box { <0,0,0> <15,15,15>
	 		        texture {
					pigment { color rgb <0, 0, 1> }
				}}

#declare big_green_cube = box { <0,0,0> <50,50,50>
	 		        texture {
					pigment { color rgb <0, 1, 0> }
				}}

#declare small_green_cube = box { <0,0,0> <20,20,20>
	 		        texture {
					pigment { color rgb <0, 1, 0> }
				}}


#declare small_red_cube = box { <0,0,0> <15,15,15>
	 		        texture {
					pigment { color rgb <1, 0, 0> }
				}}

#declare big_red_cube = box { <0,0,0> <30,30,30>
	 		        texture {
					pigment { color rgb <1, 0, 0> }
				}}


#declare big_green_cube = box { <0,0,0> <50,50,50>
	 		        texture {
					pigment { color rgb <0, 1, 0> }
				}}

#declare big_blue_cone = cone {
    <0, 60, 0>, 0.0 // Sommet du cône
    <0, 0, 0>, 30.0  // Base du cône
    texture {
      pigment { color rgb <0, 0, 1> }
    }
  }
  
#declare red_cone = cone {
    <0, 40, 0>, 0.0 // Sommet du cône
    <0, 0, 0>, 10.0  // Base du cône
    texture {
      pigment { color rgb <1, 0, 0> }
    }
  }

object {small_blue_cube translate <10, 50, 0>}
object {small_green_cube translate <0, 50, 20>}
object {big_green_cube translate <0, 0, 0>}
object {red_cone translate <40, 50, 30>}

object {big_blue_cone translate <-50, 0, 30>}

object {small_red_cube translate <60, 0, 0>}
object {small_green_cube translate <80, 0, 0>}
object {big_red_cube translate <60, 0, 20>}