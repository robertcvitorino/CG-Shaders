// video utilizado https://www.youtube.com/watch?v=BRPy8n2Ayc8
shader_type spatial;

uniform float metallic : hint_range(0.0, 1.0)=0;

void vertex() {
	//VERTEX.x +=1.0;
	VERTEX.y +=sin(TIME *5.0 +VERTEX.x *10.0)*0.1;
	VERTEX.x += VERTEX.x *10.0;
}

void fragment() {
	//if(UV.x >0.5){
		//ALBEDO =vec3(0,0.2,1);
		//ROUGHNESS =1.0;
		//RIM =0.0;
	//}else{
		//ALBEDO =vec3(1,0.2,0);
		//ROUGHNESS =0.2;
		//RIM =1.0;
	//}
	
	//if(UV.x >0.5){
		//vec3 color;
	//color.r = sin(TIME *5.0 +VERTEX.x) +2.0;
	//color.g = sin(TIME *2.0 +VERTEX.x) +1.0;
	//color.b = sin(TIME *5.0 +VERTEX.x) +1.0;
	//ALBEDO =color;
	//ROUGHNESS =0.2;
	//RIM =1.0;
	//METALLIC= 1.0;
	//}else{
			//vec3 color;
	//color.r = sin(TIME *5.0 +VERTEX.x) +1.0;
	//color.g = sin(TIME *6.0 +VERTEX.x) +1.0;
	//color.b = sin(TIME *7.0 +VERTEX.x) +1.0;
	//ALBEDO =color;
	//ROUGHNESS =0.2;
	//RIM =1.0;
	//METALLIC= 1.0;
	//}
	vec3 color;
	color.r = sin(TIME *5.0 +VERTEX.x) +2.0;
	color.g = sin(TIME *2.0 +VERTEX.x) +1.0;
	color.b = sin(TIME *5.0 +VERTEX.x) +1.0;
	ALBEDO =color;
	ROUGHNESS =0.2;
	RIM =1.0;
	METALLIC= 1.0;
	
	
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
