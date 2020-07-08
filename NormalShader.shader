shader_type spatial;

varying vec3 some_color;
void vertex() {
    some_color = NORMAL; // make the normal the color
}

void fragment() {
    ALBEDO = some_color/2.0+.5;
}