shader_type spatial;
//varying vec3 OLD_COLOR;

void vertex() {
  POSITION = vec4(VERTEX, 1.0);
  //OLD_COLOR = vec3(COLOR.x, COLOR.y, COLOR.z);
}

void fragment() {
  float depth = texture(DEPTH_TEXTURE, SCREEN_UV).x;
  vec3 ndc = vec3(SCREEN_UV, depth) * 2.0 - 1.0;
  vec4 view = INV_PROJECTION_MATRIX * vec4(ndc, 1.0);
  view.xyz /= view.w;
  float linear_depth = -view.z;

 //ALPHA = 0.0;
  ALBEDO = vec3( ( 1.0 -(linear_depth/25.0) ) );

  //ALBEDO = color.rgb;

  //float depth = texture(DEPTH_TEXTURE, SCREEN_UV).x;

 //ALBEDO = vec3( screenColor.r, screenColor.g, screenColor.b);
//ALBEDO = ALBEDO;
}