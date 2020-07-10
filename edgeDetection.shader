shader_type canvas_item;

uniform float leniancy;
uniform sampler2D distanceMap;

void fragment() {
    vec3 col = -8.0 * texture(TEXTURE, SCREEN_UV).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(0.0, SCREEN_PIXEL_SIZE.y)).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(0.0, -SCREEN_PIXEL_SIZE.y)).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(SCREEN_PIXEL_SIZE.x, 0.0)).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(-SCREEN_PIXEL_SIZE.x, 0.0)).xyz;
    col += texture(TEXTURE, SCREEN_UV + SCREEN_PIXEL_SIZE.xy).xyz;
    col += texture(TEXTURE, SCREEN_UV - SCREEN_PIXEL_SIZE.xy).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(-SCREEN_PIXEL_SIZE.x, SCREEN_PIXEL_SIZE.y)).xyz;
    col += texture(TEXTURE, SCREEN_UV + vec2(SCREEN_PIXEL_SIZE.x, -SCREEN_PIXEL_SIZE.y)).xyz;

	
	COLOR.xyz = col;
	
	float avg = (abs(col.x)+abs(col.y)+abs(col.z));
	avg /= 3.0;
	
	COLOR.xyz = vec3(avg);
	avg = step(leniancy, avg);
	
	float prevAvg = (texture(TEXTURE, SCREEN_UV).x+texture(TEXTURE, SCREEN_UV).y+texture(TEXTURE, SCREEN_UV).z)/3.0;
	prevAvg = step(.1, prevAvg);
	float color1 = sin(TIME)/4.0+.25;
	//GOOD OLD LINE!
	//COLOR.xyz = vec3(avg)*vec3(1.0) + (1.0-avg)*prevAvg*vec3(SCREEN_UV.y, color1 , 1.0-color1);
	
	//color and outline
    //COLOR.xyz = vec3(avg)*vec3(1.0) + (1.0-avg)*texture(TEXTURE, SCREEN_UV).xyz;
	
	//just outline
	//COLOR.xyz = vec3(avg)*vec3(1.0) + (1.0-avg)*vec3(0.0);
	
	//test stuff here !!
	//COLOR.xyz *= texture(distanceMap, SCREEN_UV).rgb;
	
	//if it's 1, let it be one
	//recomment
	COLOR.rgb = step(vec3(1.0), vec3(avg)) + step(vec3(avg), vec3(1.0)) * texture(distanceMap, SCREEN_UV).rgb * (vec3(avg)*vec3(1.0) + (1.0-avg)*prevAvg*vec3(SCREEN_UV.y, color1 , 1.0-color1));
		
	//COLOR.rgb = texture(TEXTURE, SCREEN_UV).rgb;
		
	//COLOR.rgb = texture(distanceMap, SCREEN_UV).rgb * (vec3(avg)*vec3(1.0) + (1.0-avg)*prevAvg*vec3(SCREEN_UV.y, color1 , 1.0-color1));
	//lets play with multiplying the color by the distance value
	//COLOR.xyz *= texture(distanceMap, SCREEN_UV).rgb;
}