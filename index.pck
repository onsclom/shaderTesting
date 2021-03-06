GDPC                                                                               @   res://.import/index.png-5122033cac747157decad52589e2295c.stex   pB      
]      �녏���	��
*�   res://Character.tscn�            ��|ӥW�ku|΅   res://KinematicBody.gd.remap��      (       ��	�wO��Ȗ���   res://KinematicBody.gdc �
      �      ��:��㦓�� 
HR   res://Node2D.gd.remap   �      !       �����lꏑ�ZV�   res://Node2D.gdc`            �"hD�	��Q�͔   res://Node2D.tscn   p      =      �C������xٮ�   res://NormalShader.shader   �      �       ΰP�9.��f�_�=   res://Spatial.tscn  `      �      ���4�i:��a�e��   res://Viewport.gd.remap  �      #       ?J��l��ڛ�����O   res://Viewport.gdc  `       �      �s�(��|���G�   res://World.gd.remapP�              ���z�����R�U�   res://World.gdc  "      �      �P�tF�G������   res://World.tscn�#      �      Ժ��z�z�;�}�h<NV   res://default_env.tres  p7      �       um�`�N��<*ỳ�8   res://depth.shader   8      `      L����|_�W���Є�
   res://edgeDetection.shader  �:      �      "+�vO �/�rq����   res://index.png.import  ��      �      eζ�G�i�3����_   res://loading.tscn  �      H      J�)�p��hB�R�O�   res://project.binary��      �      �-��e�J�7KH1   res://viewportSetup.gd.remapp�      (       �D���/���9��   res://viewportSetup.gdc `�      V      �հ&��vT����x|=[gd_scene load_steps=6 format=2]

[ext_resource path="res://KinematicBody.gd" type="Script" id=1]
[ext_resource path="res://depth.shader" type="Shader" id=2]

[sub_resource type="QuadMesh" id=4]
size = Vector2( 2, 2 )

[sub_resource type="ShaderMaterial" id=5]
shader = ExtResource( 2 )

[sub_resource type="CapsuleShape" id=3]

[node name="Character" type="Spatial"]

[node name="KinematicBody" type="KinematicBody" parent="."]
script = ExtResource( 1 )

[node name="CamBase" type="Camera" parent="KinematicBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.142, 0 )
cull_mask = 524287
current = true

[node name="Viewport" type="Viewport" parent="KinematicBody/CamBase"]
size = Vector2( 512, 300 )
handle_input_locally = false
render_target_update_mode = 3

[node name="DepthCamera" type="Camera" parent="KinematicBody/CamBase/Viewport"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1.142, 0 )
current = true

[node name="MeshInstance" type="MeshInstance" parent="KinematicBody/CamBase/Viewport/DepthCamera"]
extra_cull_margin = 16384.0
mesh = SubResource( 4 )
material/0 = SubResource( 5 )

[node name="CollisionShape" type="CollisionShape" parent="KinematicBody"]
transform = Transform( 1, 0, 0, 0, -1.62921e-07, -1, 0, 1, -1.62921e-07, 0, 0, 0 )
shape = SubResource( 3 )
 GDSC   '      <   p     ������������϶��   ����������   ����������   �������   ��������������   �����������   �����������   ��۶   ������Ӷ   �����ٶ�   �����϶�   ����¶��   �������������Ӷ�   �������������������   �����¶�   ����¶��   ��������������������ض��   ���������������Ŷ���   ζ��   �������Ӷ���   ϶��   ���������������������Ҷ�   �������Ŷ���   ����׶��   ���������������Ŷ���   �������ն���   ����������������Ҷ��   ̶��   ���������Ҷ�   ������Ҷ   �������ض���   �������������Ӷ�   �������Ҷ���   ����������Ķ   ����������Ҷ   �������¶���   ����������׶   �������������������۶���   �������������������۶���              \���(\�?      ?          Z      
   left_click        move_forwards               move_backwards     
   move_right     	   move_left                jump        �������?                                                    	   "   
   #      *      +      0      1      7      @      B      C      J      P      ^      r      ~      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /   &  0   *  1   /  2   :  3   >  4   B  5   J  6   O  7   V  8   [  9   \  :   ]  ;   n  <   3YY:�  Y:�  �  Y:�  �  Y:�  �  YY:�  �  Y:�  �  YY5;�  W�  YY;�	  �  YY0�
  PQV�  �  T�  P�  T�  Q�  -YY0�  P�  QV�  &�  4�  V�  �  T�  T�  �  T�  T�  �  �  �  T�  T�  �5  P�  T�  T�  R�  R�  Q�  �  T�  �  T�  T�  �  �  &�  T�  P�  QV�  �  T�  P�  T�  Q�  YY0�  P�  QV�  -YY0�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�	  QV�  �  T�  �  �  &�  T�  P�
  QV�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  �  �  T�  PQ�  �  �  T�  P�  P�  R�  R�  QR�  T�  Q�  �  �  �  �  T�  �	  �  �	  �  P�  R�  P�  R�  R�  QQT�  �  �  ;�   �!  PQ�  �	  �  �  ;�"  �  �  &�   �  T�  P�  QV�  �"  �  �  �	  �  �  &�   �	  
�  V�  �	  �  �  &�	  	�  V�  �	  �  Y�  �  W�  �#  �$  T�%  PW�  T�&  PQQY`  GDSC                   ������ڶ   �����϶�   ����ڶ��   ������Ӷ                                                        	   	   
   
                                                   3YYYYYYYYY0�  PQV�  W�  T�  �  -YYYYYY` [gd_scene load_steps=7 format=2]

[ext_resource path="res://World.tscn" type="PackedScene" id=1]
[ext_resource path="res://edgeDetection.shader" type="Shader" id=2]
[ext_resource path="res://viewportSetup.gd" type="Script" id=3]
[ext_resource path="res://Viewport.gd" type="Script" id=4]
[ext_resource path="res://Node2D.gd" type="Script" id=5]

[sub_resource type="ShaderMaterial" id=1]
resource_local_to_scene = true
shader = ExtResource( 2 )
shader_param/leniancy = 0.1

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 5 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ViewportContainer" type="ViewportContainer" parent="."]
material = SubResource( 1 )
anchor_right = 1.0
anchor_bottom = 1.0
margin_right = 512.0
margin_bottom = 300.0
rect_scale = Vector2( 1.00861, 1.02129 )
stretch = true
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Viewport" type="Viewport" parent="ViewportContainer"]
size = Vector2( 768, 450 )
handle_input_locally = false
render_target_update_mode = 3

[node name="Spatial" parent="ViewportContainer/Viewport" instance=ExtResource( 1 )]
transform = Transform( 0.990387, 0, -0.138326, 0, 1, 0, 0.138326, 0, 0.990387, 0, 0, 0 )

[node name="Viewport" parent="ViewportContainer/Viewport/Spatial/Character/KinematicBody/CamBase" index="0"]
script = ExtResource( 4 )

[node name="Label" type="Label" parent="."]
margin_left = 96.8315
margin_top = 59.5275
margin_right = 158.831
margin_bottom = 73.5275
text = "LOADING"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="ready" from="ViewportContainer/Viewport/Spatial/Character/KinematicBody/CamBase/Viewport" to="ViewportContainer" method="_readyTime"]

[editable path="ViewportContainer/Viewport/Spatial"]

[editable path="ViewportContainer/Viewport/Spatial/Character"]
   shader_type spatial;

varying vec3 some_color;
void vertex() {
    some_color = NORMAL; // make the normal the color
}

void fragment() {
    ALBEDO = some_color/2.0+.5;
}     [gd_scene load_steps=5 format=2]

[sub_resource type="Shader" id=1]
code = "shader_type spatial;
void fragment() {

  //uncommenting the line below makes the SCREEN_TEXTURE all white
  vec4 test = texture(DEPTH_TEXTURE, SCREEN_UV);  
  ALBEDO = texture(SCREEN_TEXTURE, SCREEN_UV).rgb;
  
}"

[sub_resource type="ShaderMaterial" id=2]
shader = SubResource( 1 )

[sub_resource type="QuadMesh" id=3]
material = SubResource( 2 )

[sub_resource type="SphereMesh" id=4]

[node name="Spatial" type="Spatial"]

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 2.04776 )
cull_mask = 524287

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( -2.11605, 0, 9.31323e-10, 0, 1.99665, 0, 5.96046e-08, 0, 0.0322901, -1.07395, 0, -2.2452 )
mesh = SubResource( 3 )
material/0 = null

[node name="MeshInstance2" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -9.3185 )
mesh = SubResource( 4 )
material/0 = null
       GDSC            5      �������¶���   �����϶�   �������Ŷ���   ����׶��   �������������¶�   �������Ӷ���   ���Ӷ���      ../../../../..                                                       	   	   
   
                           "      *      0      1      2      3      3YYYYYYYYY0�  PQV�  -YY0�  P�  QV�  ;�  �  PQ�  &P�  �  QV�  �  �  T�  YYYY`     GDSC            8      ������ڶ   �����϶�   ����������Ŷ   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �������������Ӷ�   ������������������   �������Ӷ���   ���¶���            key_exit                                                 	   	      
                     %      .      6      3YYYYYYYY0�  PQV�  �  PQYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  P�  T�  Q�  �	  PQT�
  PQY`     [gd_scene load_steps=22 format=2]

[ext_resource path="res://NormalShader.shader" type="Shader" id=1]
[ext_resource path="res://Character.tscn" type="PackedScene" id=2]
[ext_resource path="res://World.gd" type="Script" id=3]

[sub_resource type="PhysicsMaterial" id=1]

[sub_resource type="SphereMesh" id=2]

[sub_resource type="ShaderMaterial" id=3]
shader = ExtResource( 1 )

[sub_resource type="SphereShape" id=4]

[sub_resource type="ShaderMaterial" id=5]
shader = ExtResource( 1 )

[sub_resource type="CubeMesh" id=6]
material = SubResource( 5 )

[sub_resource type="BoxShape" id=7]

[sub_resource type="SpatialMaterial" id=8]

[sub_resource type="QuadMesh" id=9]
material = SubResource( 8 )

[sub_resource type="ConcavePolygonShape" id=10]
data = PoolVector3Array( -0.5, -0.5, 0, -0.5, 0.5, 0, 0.5, 0.5, 0, -0.5, -0.5, 0, 0.5, 0.5, 0, 0.5, -0.5, 0 )

[sub_resource type="Environment" id=11]
ambient_light_color = Color( 1, 0.956863, 0.956863, 1 )
fog_color = Color( 0, 0, 0, 1 )
fog_depth_end = 10.0
glow_intensity = 8.0

[sub_resource type="SpatialMaterial" id=12]
albedo_color = Color( 0, 0, 1, 1 )

[sub_resource type="SphereMesh" id=13]
material = SubResource( 12 )
radius = 0.2
height = 0.4

[sub_resource type="SpatialMaterial" id=14]
flags_unshaded = true
albedo_color = Color( 1, 0, 0, 1 )

[sub_resource type="SphereMesh" id=15]
material = SubResource( 14 )

[sub_resource type="Curve" id=16]
_data = [ Vector2( 0.0114943, 0.979545 ), 0.0, 0.0, 0, 0, Vector2( 1, 0 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CubeMesh" id=17]

[sub_resource type="ShaderMaterial" id=18]
shader = ExtResource( 1 )

[node name="World" type="Spatial"]
script = ExtResource( 3 )

[node name="RigidBody" type="RigidBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 4.97091, 0 )
physics_material_override = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="RigidBody"]
mesh = SubResource( 2 )
material/0 = SubResource( 3 )

[node name="CollisionShape" type="CollisionShape" parent="RigidBody"]
shape = SubResource( 4 )

[node name="RigidBody2" type="RigidBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 3.85795, 4.97091, 0 )
physics_material_override = SubResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="RigidBody2"]
mesh = SubResource( 6 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="RigidBody2"]
shape = SubResource( 7 )

[node name="MeshInstance" type="MeshInstance" parent="."]
transform = Transform( 68.9442, 0, 0, 0, -8.74228e-07, 1, 0, -20, -4.37114e-08, 0.00130558, -1.90735e-06, -0.0347353 )
mesh = SubResource( 9 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="MeshInstance"]

[node name="CollisionShape" type="CollisionShape" parent="MeshInstance/StaticBody"]
transform = Transform( 1, 0, 0, 0, 1, -2.22045e-16, 0, 0, 1, 0, 0, 0 )
shape = SubResource( 10 )

[node name="WorldEnvironment" type="WorldEnvironment" parent="."]
environment = SubResource( 11 )

[node name="Character" parent="." instance=ExtResource( 2 )]
transform = Transform( 1.01267, 0, 0, 0, 1.01267, 0, 0, 0, 1.01267, 0.0112867, 2.0085, 5.58501 )

[node name="MeshInstance" parent="Character/KinematicBody/CamBase/Viewport/DepthCamera" index="0"]
layers = 524288

[node name="CPUParticles" type="CPUParticles" parent="."]
transform = Transform( 1.03894, 0, 0, 0, 1.03894, 0, 0, 0, 1.03894, 4.47811, 3.62658, -4.6284 )
mesh = SubResource( 13 )
spread = 180.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 3.31
angle = 720.0
angle_random = 0.59

[node name="CPUParticles2" type="CPUParticles" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, -5.63127, 3.62658, -4.6284 )
amount = 16
lifetime = 3.0
mesh = SubResource( 15 )
spread = 180.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 2.0
initial_velocity_random = 1.0
angle = 720.0
angle_random = 0.59
scale_amount_curve = SubResource( 16 )
color = Color( 0.945098, 0.941176, 0.992157, 1 )

[node name="Spatial" type="Spatial" parent="."]

[node name="MeshInstance" type="MeshInstance" parent="Spatial"]
transform = Transform( 0.1, 0, 0, 0, 3, 0, 0, 0, 4, 9, 3, 5 )
mesh = SubResource( 17 )
material/0 = SubResource( 18 )

[node name="MeshInstance2" type="MeshInstance" parent="Spatial"]
transform = Transform( 0.1, 0, 0, 0, 3, 0, 0, 0, 4, 9, 3, -5 )
mesh = SubResource( 17 )
material/0 = SubResource( 18 )

[node name="MeshInstance3" type="MeshInstance" parent="Spatial"]
transform = Transform( 0.1, 0, 0, 0, 1, 0, 0, 0, 1, 9, 5, 0 )
mesh = SubResource( 17 )
material/0 = SubResource( 18 )

[node name="MeshInstance4" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 8.74228e-08, 0, 8.74228e-08, -1, 15, 2, 0 )
mesh = SubResource( 17 )
material/0 = SubResource( 18 )

[node name="MeshInstance5" type="MeshInstance" parent="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 8.74228e-08, 0, 8.74228e-08, -1, 15.996, 3, 1.01234 )
mesh = SubResource( 17 )
material/0 = SubResource( 18 )

[editable path="Character"]
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             shader_type spatial;
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
}shader_type canvas_item;

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
}              GDST   X          �\  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y�\U���Ϲ��Iw��+���-!�EqEP�U@t��}��~*���8 �""(:�	!d���I��=�?��������Nޯ�']�n�{n�ͭ�g�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        L�  �ڌ�7&����� `t�j �L� ���7 ��qu�����L�b( �xqE�Q.�X� �T @q*-t  �sP�/�t��E��JzR�_$��f��'�,I'K�'�)IOK��4��c'�ч+7 �"9���Hz���%-�T���Α��A��~��5H�?��h�
>�J�{�;I�@   p�Z��c���Bk�m��f���'�/�2�>�}7��za��3   �dQ	���^l�����7͊��2��')��Y��7|���@   ȧ*��Z��Z{��v_�5��m=���;����c_z*�g����>����C�w��m=�ӆ���1�+�� 
�N� P�ҨD�Iz���tb���w�kņf=�y�^غO;��H��M�׵���p��;��o����H���v�>s�J���M�4qL�L�c�7��Y���*Ku��OI7H�URo� ŉ�3 �$�zI��IIӒ�c��Z߬�^k�?��Ӡ���q�N�sHt�I�P�O3 �����Y���^٣o��R����_�E�6i�aM�=�.�aI�I?�t����<���b�� �T����$�\����t��ѵ����]zuW{Z��4�J7}�D��x�ɟ�tm����}� �3��y2�[}�Ok[kwZ��T�7͟�79Q5��6m�t��{� P\�:@�
�ܟ(�q��^�[��������S�nl�������p�w���I�+`Z�H��W%5F�]�U?y�Ռ����g6�-GM�)���*�%�"iEP Ņ�3 ������.�N���l�nݱ|���v崿��R��E���|Sҗ3����y��;�+��ں�s*߄�J����:k�$U��ľ�IG'� @q�� E*  yQґ�'�[�Ew�؜s�>څ'Mו���O�%g`���
��.I���t�ӛ]Q�Ue���i������/I:*:�  ���z @��<�f���C��]�M���9V��2��_|�u��U����<Y�;69�� #�  F�a#��!嬷PX�56�Ӓ�b�<ŷ�W+43א{�ݪ��A�e�����N  yA  �ǰ �*�$�q�6u�kP�P��m
L�4�P�L8m����J���t�sn[?"��	@ `�" ��cX%�*��Dg�������C%MVh��Ҩ��pڔ�6C�[�=6�q&�$��� G  �ǰ $]�"�yv�zs�:�7���Uq]���./�M" �Q�  F�a��nH�����_^ܙ�ukm�E��;��ٗ��I�*��~�� �D�-$ @���� D�~�b����hw{�v��hO{�z��7�A?|�xFU�%�(-�!u__��uzdm�,UNU� � �����U�-�����^��-I���:zԡ5w�j͎t��Mme������  Ň.X 0z�~�T[^�rܸڊؤ���  E� �Q����Z�;A�æ�j���4���i����~�I��: �  r�M6�}����[T��@�=. �����J'� $F, �R.���<"���߰J����VcM��hџ��� � �BPO���I�BICV������kȮ�(�]�J:6��2�(�o$A d�  2���Y/�I���>+�2�]�K����$��s0v�j�?f#��~&�.��+%��B�Y���A��?A d�  2���Y+�AI�����G�+�ޯ̯��Iz^ҕ�	>�w���q0�}���M6��R�:-�,=���W$}O��L
}�S�;�M�f� ���  M)*�e��(�ټ ����b�rIߔ��-V�C�w�G֫-�"~P��(�eKf�܅S���%}_җ%�Z��m��#iA���t���D00 ��� Ґ"�0�~!�}��IR)}X��$=��tIwIZ��ƽ����v��+vs'��So9B3������$��x���J:#�	��_(�ʒ�d ��� ���b��u��u���u�ӛ�7���
U�o����o���b�+�+��_o{��#ʚm��۞�]Oo�$.��R�[���J����
>}�������=�9@��\� Vܪ�R�~|@�-�	;�u��w�Ҿ�P�����┙:sބDw�wH���i
ݕvshW[���5za��� �`�X���s5�>n������풮�4)vk�\�K���F�n�$��.�u�,Ԥ�U���_ҭ��A+ $�U �H|��PW��i�ں���;Vi[kW��ӛjt���:u�!i���ך��֨���둩��R}�#�tv���M��٣�~wG�k��T��K��zغ#=
��<�(O� H�+$ $�"��"i������s�yN��jO�������5��:�6�������͉ ��t�I���������ڥ=�N�mnM�ߜ�u�ޅǪb��#�G�pD� �� H�TIZ�P4���o߿Z��ݝV�奞.<i�.:i��J�����7�{I�6%�#��3��w�ژ��}������S��?8>'��G���ϙ������j�C  ��:@��7I�Pt��7���7d���c���7��q3$I����=/vB�f4����/�����ӏ���6��w�K�K�E���&�(��D�!�x\ F�������|}������ztFҙ�'�MGN��X����2B���
���s���]z�Ywi3F����Цؗ�#����� �qU�I���V)4��$ikK�>q�Ju�%\����R���ij��;��J�� �u@  J��T��
>�}}�O�	>"]}��91k�4(�*V��-j p�! ���/KZ��e�S����qo�ny���$}>�{B �u  ��|I_�NX��Y\��@�A�ݻr��|uol�$�+@q `T! ��<�f:Z����O�{`�sĬ���o�Z;���+$�"~[ ).� �܇%-�N���ש����vm�������&/��� F Hl���D'��Ь�^�S���<�ʞ��X��й @  �}JҘȓ��A]�`�o�h�:{�̈́6V�s �  6�կߨ]m=�*�TsG�nrcl��-  $����*����b�:�� � @2�F?9s��|��B�E��Y�z㼸!�m   �dn��|t��Ϝ�ڊ�Ŧ��T�x����+t�  � @b����44¸��BW�vh�J������!u�I
�3�� 	� @r�J��脳����3
T������GO�M��B�   H�I�#O��O�i�*�J
V VEY�>��#d�'����� F 3�$z�W�n5���Ic���3�b�]}��4�*:�Wh��y���[ p�! ��,�tCt�ێ��7��~�ܩs��GO�M����8 0�pK bXk�T�P���i�����۞ն֮�(
lҘ*]��>�I'(���~ �p�� @�$�NI+��MUy�����TZ���@W�}�m�b��I�� ��/& d�9I��0gB�޿tV������Sռ���ɟ��� F- ������Nx�	�t��Ƽ�	�s��F���i�ɿ���D�� �� @)*�WJ�8�������� 1wR}��-�>�h{� H�4�& � �$�������<ct�1Z|X��O���r5Ԕ�o�WsG�v��hņ-_߬�m�3��Z��+���&�8�Q�+�X[��RO-�}j����������Z��M~�	\������ H@  	cL�Y��^�5���9DW�v�&���{���SME��7���YM��gkզV��ȫڸ7p\��1��Z�;e���9$p�����__�y�����iO{��X�Iya�H"	w@� $G  )�B�f|}����#5gb]F�[8�A7\~��|j�n{bc��$ǌ��O���N��/���!u�ě��&�|I{�{�W�>  5ƀ @F�b9or�~���2>"J<���<S_9�(U��8.]�T���+��K��(��v��z����X�R\\G� �! �"3��Z_?�h5T��ג���o���P76�>{�\-�=.�j���w�M5� �]� ���V��޵@��/�]]]Z��)�Z�J�{��[_���Z��(-Y�Dcƌ��ɇ��Kf���7��9�b�,�:琸�}���'�ԋ/����y�SӸ&w�qZ��$UWW�WU^���w�>��g��3��� �D  E��%�4yl�`sI�o�;���_���#���<�UTT���ߥ+�w�***�^�h�t-[��h�Oo�օ'N���ӣ_��+�s���?��O��Iuuu���Kt�������4T齋g��G^�[� �� ��c*���'���٩/|����ƛ�����^�qǝ�Ŀ~R{��J���N=�I9�K=͙P���T^��g䃧6l��޽{��O|Rw�����#���]7�x����/���+p�w;Y�u ��G  E�܅SUVY�}_��Ʒ��3Ϥ�׺u���Q==��	���&Mic�K��o>z�~x����e��7=E�,����)�:�Ц�������|A�֥�j�b�
]��������JK<����� � �%����������3�o������K;��[�v婇�Sf����Y���K�����ٷ����7ݬ�^{-�|�y����{_;ev�� @a� @��X��c*�һ��u�m�g��}�O�v�z~Ҭ��1Ue:��i	_?��i��*�*�g5��s�N�����G�n���a�>�+5�1�� �;  P�Qx�����ޞu�Z�Ȳ��AAN:�7�$]���3�9.�)o��?��2d?cU[[��~���� Ł  �@SmE`�s�=�s��y4�Vd5^��$���Ư�b�4����N�w|�њjs_W �; (e���={��wt���*PȗR�SiTˊ��ݛ �Ѵ"< Ȋ�W b-�}��V6缭���n��W߀�d��?諣��"�����t� ��E  E Q�xܸ���2�G�@��Z:^_�cܸ�g����Ϭ� F  P^���2q��r���c�����m9����;^/ӂ���9���������� �! �"��?���K_�x�����>��<�v�iCϟ|uo����W���>����y��4UWWkѢ���WmjUw_�"� ��G  E�5���jjjt�Ef��Yg�US�L�$���תͭY�/+7�hw�$i��)z�[ߒu^_rq`��Ț�Y�	 p�  ���/��ƽ�q�\zI`��T�N���\����?����G�����MC�?�ѫ5uꔌ�9��#���{;	@ ��� @����]7�Uii���j���i�5m�4}翿���:I�֖.���;�֭?=�]�Z�$Iuuu��w���S�����G��׿�5��_��J�y�z�6���  n� @Y��E�yjS\�رcu�u��%�^����E%���D�s�n����<y�$��oP߸�%_�G����k��:�S�N�2E7��z������$���������رc�^�s�&=��%o� d���  w��4yl�N;b�����r}�CԻ�}�{�1�Z���6�����ƍ��ҩ���I�&��o�׷�_ص��li��w����r�*/�TWW��~�3���K��ez�ŗ�w�^���h\�8w�B-=u��[�v�~�Ć>
 @*  Pd���}�jmn��{O�)�zcc��;�<�w�yI���ݯo��%��5~v��˔�6�9��Ь�����z�Qj�)�$M�4Q]|�.� �{Wn�OyU����C  E�J�퉍zuW�>x�a�ژ�T��Z���ݺ�����_.�w��ܦ5�mұfG����gu�i��s�˘�,�--]�y�z=�Zs� A  El��f��Т79Qo�7AGM�/�B���_����Wm���N˱aO�6����q5��o�۩�{�����W���˺��-:o�T-:�Ic�����^غO�٭_کA�f (f  P�}����C}a��*�4wR�k*4��B�}j��ӎ}=Z��=o�=Y���}�=G��v� ��^}���iu��������k����4il�k�UU^����j��՚�j�q�� �? E�{��bCafu��ܩ��r�޺`��O��$��ަ���C�٫�ŷVkw�i�ζ�� �  ��u���g���B 0j�   �C    `��    1   ���J$ �T@    �f� GfO���ه���O-��Go�`���,T�����\�5�j�.���
]$ 8`� �#��Ň���7ૹ�W-}j�PK���>5w����է<�!�(奞�j*�X
.k+�TS���r�V��)*�nW �  �G奞&��Ҥ1UI�����_{;z���O�}j�|=PY���վS��,Ӽ��W[j��)WSm��V����B�e*-��1  ��O��*4��"����}��/h���#\��a��1���TS�� ;n�(PSQ�˗�,t1���Kf| �(�� yd�n�������5�W[�1�e[]��)ɻqe�o������3�N%^~F>�Vkw���Y�m�]��w��XI����?����/4^��O�&�댹�s/( �  \ymO��]�5�뵕�j���������T��*UU^���ʲ����g�y���wD�g4�}�G�w�r�me⟳�A_�����;�����I�;������O{�{4��P�h�� �@  ��j;��PGπ67w&ݮ��L����[���I�U�%*-�40�;(mHy��y��|D�?�^奞��C�gTU>��l��6]���j��S[w��sb�3� G�qSIm��צ�N�n�{���8��c���;�M�+Y]eY\x�k�65w:	>$)O=� �D 8���3�VWY�֮>g���P����K{�{��?��B���cJC�6�M�
�����W��].F2H� do�2�p��QW�vH���_�c���n���O�}��r��Ҧ:L���w�@J�[���,� �7l:��R��Ԏ- .M�:��*hƫ�}�"�3q�hcEY�� �p � C  ��~�z��������e���}���߾�[��Yj���n_��L���嶏� ��� � B  ���d|}���G�$�֞�^�3T��q�I�4�����vK�v �� ���dF��;�Aw��M������3���~�����_�	֯H���Tc�ˇ�mku�����{X���\5���b�x�gT_Y���R�U���7d%    IDATyL�v�[@�7�}���  "  ���
������
5�V����RAw�O�s�N�sH\zW��PP��3���Pp��ӯ���硿'��o����U���.7�aXڌ����=,���,=�"����ڦ�<��-�- ��+�P3,P됴�� � C  �����S"	�7���;�d��]���P�|B������*(��������eHl�$�Y1 d�1  ���E?Yr�8g�t�:ː�֖<t�jq�$��ݯ�Nwk�,:�)6�Ag��A�  rs_��E�59�n�t���
O%- [�0�$��_�?�N��|LL���r����$s 8H� �d���RV�JI�H:A
�>w��l�z'�\�v���آ��jT?l������_�]�fEZ��tiGƀ��׭--]q+����ph�J{O�ڢ���wÞά�'�c&�.B��B��a�t HWL �@@ "IWH�5�w@������
3L���T"��c��mi��M��筻Դ�j}���5��J]��q�D[�@��G�(Zuy�n�Т�uF>%���� @��b@ �
M�:)����[�Ӈ_�R!>~�l�s��fI��! ��1  ��>I�G'��p����>F�������L�M�N�� 9# �$��}��W���ԛ�Py)��Ѧ��D�=kn�w�F������ 2�/# ��-����,Lm��ϙ/�
�a���g�Ք���d_҇$��T p`! �%������6N�r�켗	n\}��Z:;n��J�G���~ @�r@F��ZIOHZ�x�?6莧6�X��e'��eKf�&?��J��A�! ��q��,%	B&+�̈N��?�놇�i�w�H�����o8\�.���VIK$m	z� d��' d)I "I�%=&�1:�ٍ-�����.���U������ע��Λ%-Uh�y  �WO �A� d��?K6��N}��/k��|)̞P�?{��7�ľ�O�ْ�'z/� d�+( �(Er���%͌N���~f�~��Ƃ��}�*���?a��X2S�%qs�l�t��Չ�O� ��*
 9J�H�I�JZ�������W����|1��2F�r�lzHm��OJz�����  ��p �B�Z-�ʠWmj�M��k��e�ô�j]q�,-�sH���K��R��A� ��J
 ���H��%ݤ�LY����o/��oWl�֖.��;(Mk��'Nכ���hA�m
-2�@��> ��� �P�AH��H�<�/mۯ?�ܪ��핟^�3F:vz��[8U�kJ�Cw��O)4�<E��\�+\Q��4�I:U�w�-+��}���;��=ڱ��E�X��V�#��-GMԤ�U�6}\���M�� ��
 y�A r��o)�vHBkw�iٚ=z�����ޛk���+u�Ct��5gb]��_��EIL'o ��� �G!%��#�J�"�c�VmjժM�Z����Yذ��D�'�k��-�Ѡ�'ԥ�C���J�[�`:�!� ���
 # �@D�J�Z�e��Sm<0���mZ��Mkw��]��ݖt2�Qc|}���X�#&�k�z͝T�vG�^�Z:�Shzݴx @�q���a"I�j�X��"iռ%���O��lצ����ڥ��]��ڥ���l)��,Ӕ�*Mo��Ԇj�W�9��P]�I6��e�~#�w��3y3� ��� 0²D�д���겕������ڥ�>�m�՞�^�t��m��WG�:z��hu��RO5���(U}U���PSm���Vh\]��j�5��Zc�ʲ�ŀ��~~��4 Y\u�@�D$i��7HzS�1�U�"��P0�;���а�H�o���Bi��%C�k�V�J
�Ө�i7�db��Ï�%��& (�� P`9"��~b�q���\3-�VJzZ�
��sl�%C (,�� P$"%
M�{�����P���I�v�X�B-���]#�yI/+͙��!� ��� ���`$�'i�B-&�%M�45��$�I��]c%e4�;�>�VߧР�풶I��{K��I�A�Nx @��� �@��d�%5(�T����z�Ƅ�ޯ����=
����^�( P��R�(S�`��t ���U  KPB� �Wr 8�����@ \\� ���T                                                                                                                                    �S� 8�Xks�Ø�|�r\�x<�\�O�K H��$��JT��}_��e���6���]LvLƘ��o�Mx,��#Y�s���X��r�秵6�qf{�A����ʗ�8�J]  -���4����8
��D*�A�/T��E6�e��@�� p&�
S�;�.�~��;��'��e�w.�Q��|���/���,�zN�&��pp  ��t*_)����4ER��Z���F2m��"i��}Y�UE(Ǌ�XI�%Uk�1��%i���L�9�*��R)����:7�+�=�)�]�I�P��&i0�<��k4|� ���dXI7�HZ*�dI�ZkU����nI�ÏJzF�S�veR�TRS@�r��7*tL�%Ͷ�6���ݒ�Jz2�����t�888����t6M�0I�J��Cݒz$�*(n��C҆�kä��;:�!Y��I:U���8k�I�)��/i��U
}����B��)˘Ar��%�n<�z$ݢ��  Iq�@���{����c.�4�q1��笵x�w��W�m�������I�Zk/�t�$��^I5��!�n�*�)eyL�[k���|���y���!鯒^�dpw�-��s}���1�B�;?�Xk�y�/$��jc���^	��S���*�*S�VI:.�{��@,�
 ����P%)I%�k�Hz�F�zc%���9I�m�N������Ic�G%5eS�4m6��@�OՒ����qͲ־�P�������6��n��%��l�+�4��S���ە�J�U(����G�6��je�*��6h��[�1W䩜NcN��<&�@�P���.
�"]a�~e���>k�Ò�����0��b�}V�g2yc�G���Yk�c����4�Z�}k�K��)%ﾔaW�K4���$n���Z��Z{������587�"�4�ϩ���a����w(���F�Y��e�ڻ$MK�����󼡩��1�籜���2(0 ���T�>�4�3��$\y���iT�gZk��� �1��ef������T�l�dkZ�<�磠�$�o�}���_*�g9�2	��8?/�־l��8�2�p��v���F�)�� �1��4cʘ����=�  ��%�� U���+k폔���2�T��&���y��U�9)T��1c�U�� ���>�����c�g��X#��.I��8?+}߿�Z�+�f�*�Zk�m���,�<��IƘq�-�ƘCb�7 �E  -�+��7�<d��|D�Z��?�*4�Ea8<<��Dd�e�L���+�sR|��,I����1�NJ�1�Ƙ?( XOp�̪VFK9��b��T��%�EI*�2 ig�RT���Z�S���ʥk���*6P�.<��g��o�� %8'��9V���ਜ.��������$��h�؏�r(  ���*4]l����Z۟�B���~����*ޙk���H�I���Ϥ�^��1��<韛^O\Ŝ��~/�xw%t�TI�*�IJ|��NX$FK9�����wA��J��Hz�)-��G��Cә��</�Ӭ�?S�M�����uA]�Fi+�$�Z�_�.Ls۸����fg�G���_��������d��@� Ȋ�yc>Y�r$�y޽�iL#���Jk$=�n�k��*����bv��fԷ|Ĳ��D����|��y���ь1_�<�$�����f��@X�X �JR�g��~$˒�.I�ML4#O��k%M�g�\3�|�������DR����t��T��g�Rk�-��D'��hi�7Z�	��@ d$�e�ZI�]�D��w��ߝ���TL�$e�Xk�g�-�.c�x�1fq&o����ȯ��$��nI�#Y�lXk�F�>F � @F<�;���B�#	�y��c�]�P!
W��������Ƙs]�|��~-�w�󼹣��U,k����1i���Hz�@�J��y�$�� \ JRQ������'I�3y�1f��t0}��נ��Ʃ7c�Hg�p��WT|S'gbFl�՚�B*M��
] ů�+ ��1f��w�Ic��B����X��_�����IƘ�.D���L4�Y4���c�3B��k�U�%�?V�+VQ���\ҖB�@�+-t ���߇�v�S��Ƙ�KڪPEkP�8I�}�_l�9U��Dc�&�D�Ƕx�'km��w�^�@+���y���B����1�|���+��? �3R�g���Y�E���1�RI�7ƤjιB�����Z{��yO+tnVK�a�=G�Iy��c�I�Ĥo�4�3;�L���H:'��Xk�y�-il�c�]} �E �@ ���WH�<��6�|�Z{���$��P��1'���1�*EU⭵7c���΍1��Vf\��^6�\e�}2���b��Oç�%�s����1H��-�Ш�N�t���K�1�4����c���b����e��k��?5�|I��;}�s\�����kZ%�|6ƴIz6�L��͹���mOw���� H�+�8A��1g���B�t��c��2H�Ӓ>a��m����Ƙ/J�����;�A���~�g�r ~/�IO&��Yk�$}��v%�25%�MnĄ�q�Bco� i�1�c����-)�1In��~c��>f��Z6|�+%-
���Xkߜ�,R�� �R��: ��@Q�#"�����Z�#I�Kj��%�[}G5��vI�Sh��ogZ�	�Lҙ��<�e�.U��UtY���b��XҀ�2��a^3��I��1�dI-���.M1��[�n3k�����ӹ�o��t��{�_�K�ͦ�Е����#�`" (2��y��0��%}�Z;(���)(IV2Ɯ ���Υc�Ƙ^cL�c����^ �	k��#�CЪ�a�c>�pW�D����1r�b�ٰ��,����dAH�\3�(�Eq��b�g�Jty
��<������ �����Ii|MC�1�j��lxlI��fs�4û�κ�c�*iO��m��Ƈ+�_������e(���J��(�Y�ꢏ'&@^�h?-��})61z|C��2�c��Q9���2`_q��
>��!� �� H�s�uo���L����H%2r�>��Me&�6�[�1	���vI?z!�����pKS�1�:Ge9LR�HV �����k��w9ڍ	��(I���I�k�ޠ�"�Ut�K���r��u.������s� X� @ ��UE}���`�M��%�kIII�]�K�vN�Ͱ�����`���c�-W��ޡ�����1�
q7:j��f;%(�3W��<9�<��D�E��@$ZT��0�Lc��U��� @������~F	���/;�!�#��J�����;#�T�t��.�q�Q��R�%I�8�U�SH4��4G�?��A��}G]�uT���� ��� @���'<k�S������ú�$0"���������I�"W"i����U��Uc���c\�<��u8�{��ϾU�.���?1:0��2�)k��tV\O�E�	�J< h@ ��I���m)�7c�x�Y��%km� '-QwΟwP��?9�k$}�e]�$��\�����)fR�<|쾤:(RI�<�J�k F�:G���kA� Y�mȵ,�}����ce�ee��cs�Ek�$%Z�����c[ꬵk���� Pp.��8�U9�glB�53T+4�QY�\m��IJ�I$���Չ*���j��ǽ/��Hr�}e,��NG�':.W�e܊�9tr�]�:6 (  ��B�n��PI�)������MQ�O|E���C�FIk��WI�'>$w����9TZ��R0"��NG��ڻ:޶lޔ �ls4e.��t�D��y��+�1_ʰ�Z+�(IGc�m����e��f��
ؾ"���<�U� ����c���:�(���'Q燓�R�>�y�5 �1  ���(�zG���tc��	^sU)v���$Yk]#;�<��ԛ�eX 5���wY�(�]��bm (*�� HGo�M�2V�fGy�+Q?'������2�Ի�c��ki��\L��* I�
�k�`�d"Ĩs����hF  A]��166!A�ͥDw�]U��km�~W���
�+�.2�<o�$Q�M޾��j�+�� rF, ���(�#哉D����bnLG���Y.ʤ�5�\,�(I����ekzlB�-R��C�΃��|  '`U��.��}Q�K4>`������]�β+�1.
�yޮ����c����.���z���p���LߐdJ'ߥ�" ń @:� Ƙ�Ƙ��ǵ����ne��G���d��*�����-�r�}e*(�2�L���dU�]�Gș�ƘC$MrP�nk�>G��@�  '���y�e}�1�DGy�kX S�sQq5Ƙ��^Hw��p�R)�M�#( I�X�y�K���E�Ƙ7cJ����(������`T" ��\e����c�0<��^�yl�r�ɦ1]�e��Xk/JT9L��h�y��1.ʣЂ�#jpp��iI�}?08��vk����ZG�g�	�m	
�8*�G� @Q! ���hm	c̅��͍<O0&����~�+��V3�0�|�y�:�3#ы��i���/���!i}l�#-< �c��(ˡ`1�x��Q����#�Z�"�al���<IotT��c�c��t� �O  �
W|:$��(�Jk�����t��+]�N�l�:WH�����vp�1�rTi������`2|\�\�o�}6(��z��|�1����J�E+\��$��(��y�,�� �5�f E*�Q���f���G
_��U����f�$���ܵ�\�y޻�x�$k�\�A���+#��H�8{W>|�x�گ�ڇ�y�UģZ��t�/k폭�cS�8�~�Ƙ+%��U9$=�0/ (  ���?��c>,�V%	,b*��UN�어*�|ck�풖��k�k���D�<�{�Pwͣ�e�����e�Kz<�6u�/I�+�^IU�6�
B�n���avHZ�0? (  �$�����~�������#�^b����r7�HT�ˊk���o�>-)Ug�S$���Y�$��a~�M�0��D�׍1�r���ږ�ʞ���p��)�B�jj�R������Aٷ�ű����};�k� ��  �R���*�<d���ik�]��%�.��&I��^�e��c@�Z~�e��TZk��־$��NThM�1
�������G%�xߏ'�)ʥzIu�ǙƘ'�1_v�3c�]�V��~8pi���k�=��#i�B�>Y�ɒ�1Ƽb��O9>$����@��	��U������<�D������+t7��Zېc�ɺ`I�~��T�;ݙ�g����<�2��:B�*��IO(�2�Z�X��<��J�m��*�Xk�r��2I�־3��<�HժP0 8 � �ğ��b��d��њ��A)ye��s���M�]#��%Ƙ%#��$mIs�'$�,i^�����_[k�%���m� %���c�;�e�р�r%�_H�;b%�k�/}�����@%r�s]��Dۏ��3��y�O�~�@��@�nT�d�H�K��Gyŵ�����֕���=�Iz%e��;%�T�r @>P�T FD�1�K�.D�VBO�I��^�<��ޠ���c>���Lc�������	za��d@4 	%���R��uA�(�I�2�|P�Wx�5I_��u4WZ�����h�k��Jr|w�����[��� �o  �a�	�� )�
X�<I��o�ڛ�Z"�|c��=���<oDV=![=���\20�|L��&G����q }� ����T�7c.���	K��C�Ъ֟R�U��Bx���"���ƘK�`R���1�����nI�NK�{�1{��H��, r@�Z(���1W�v[J��V�|ߏ,L�c�y����.\.��7J
��U  �IDAT\g����Zi��1WI�����a��R�{~J�1U�*���H@B\� ���2{S��K1�I�$�ҷ��Ik���k�/%}<Qw����-�#�1�jI�J�A��w����p�Qk��0ƼSғA/��@ �" ��O�1WH�)tAb${��l��c�i
��^4��ߔt���v�����ߜ��i��PRw���Ʈp��p2�QH@J  ҒƝ�ۍ1K%m��+�]���ݒ�Zk�U1�ľ�/+�KQt2
�?m�Y$�d�:�4���Ƙ�U�L-3Ɯ �B 
� @�Ҩ�=+�xk��U]�r�vc������蝹)+3�+�w��$�Y>�Q--�{'+EW�t��4�{^�	ဲ�gWx��3%mM��($ m  2��bd�m���pkH`���a���1Fя ��#-�J����Zk��Fnf�W�]��"iS$1(I֒Y!=��\>
����gH��1&i �iE<��M��r���ۻ�(�������oQ,�h�@�A��A1$.�e�� �h��I�G�'1:=��L�br��f��n<"h4e=&����N�]����?�ŭ[�[�vuUu����9��~�����������Wv��+Wf�ƈ�Y�FĒ��ɇ�ig"i�M��ňx:p��	�.��2�0�͓�8���~f����̷��Tiǻ<"6 �>>�l�r����X�Y���]���w/��J�	�W O��g�amjD���wG�c�����a����H�w�~]����Y$�X���M��lGm6d����
E�)��̼�(�K2�+T�H��a� o8�r���t�צ��>�,7Dį _�ul���O�3�����h�s�Z��k��� f&/��S �s����C���(����7g�/����>N��O�_�io��/EqAf~:3�Lz�;{�#��C˲|UD<x�?���#�|����,�$�WD�N��SI��88�,�#��"�!�,p���ws�y+UmÏ�������w3���͹�`r��'��^�ߛ��p���QeY��w�l��[�k����ff~�[��F㮥}kL6�w����Y��s&"����GԿ�}���Mo�z�������W3���q��^�k��[ϸW'Y�J�f�}�j~T��{��3��e"ig�WDҪ�ڮ�45K5�cw���c�Z�e�$xd.�)�{�������!Y�Z�k���ۛ4�Z�+�T��ߌ	�������4��d�@o�����(�\�y{�޲�_���')���4 _o�̮��sW����L2$�%I�j�@o=�V�>ή��iw������4<�i�I��	��5�T�2�k�8�Gp���Z\���B���ܕ5;����J�$I�$I�$I�$I�$I�$I�$I�$I�ơ-$I{���;o��N?��5.�$�]v~|>I��0�&����< ����矿h�p8�(��y��q�aÆ5-�$I{+IS�y�=��z��$&�6m��N[��I��w�	�����Mk�DDS��������HҴ3�4�����4�]��+<;"���s#��G���l�%ijL�(�D�����p�%�b����I��2& ���̿��3"�h'���p�f��@��Ur�p�S�n������ �4�L@$M�%j?g��=����e�M�^o��px4�x.��1�KҪ���E�G���l�*i*�J@"b�k��2����qT��^o�H��l������=^�/I��'"�m����,�E� ��g��cv�$���r�g �u���a�!�7nܸhY����V��۷o_�}ff��,�#�،N��5FEQuw����������=�ߣ������5ۼy�ueY�{��n͛�ic"i*��ymD�9pcf�
�{M�
_���n����M@����|������-�	TН�K?|�y�<�z& ͺq�i/��Lr�nY�2j}s�Q&M@"��%MG��4�"�P}]D�ڬt��~��S�a�y��v�������yP��DoG�VٝE1�i'K%�;r���>�M�41�4���À{����o��s;�E��(�m���	�Ӹ�c�rw˼\�]��t��Z��v�ҲM��K��4& ��B;Y�?O�W}��l�\��?� �"`SY�?)˒��h���|�j�ہ� �o���xQ�}�l��T#q� �'���~�����r;p����`q�1"h=x����|xЛ$������aT#�]]�F������;ʹIu/^Y/� �
��)�y�y흖���g����\�3�=xt}�������^?�\�������g���������U�1���|���n���;�������G>�Ŗ�=�}@$M���� ��p6}6o޼l��16Dć���jY�*I �Nf�|��99">��~f^O��w�}�ޕ�O�
L�.���m��e wE����p���}�;?^/�ا� \����lڴi�}yNDl����\KD|xaf`��=>"����t��ܗ�͵�U���n��ֱ���`P�a[D��73?F�L��S�DĹ�7��j1-��F�Z���T��rF�����w�z��Cf����6����]��Fj�m0p�Yg!I{:k@$M����q@f��m�_����K�4�yZ���3�U�}�����GGą1�Dꃁ�GD?3�N��f�Q�nX���x|f��*�ٿ(��3�*��ܘ���cx��xf1/��#������zp"Um�"\p�����Ԉ�U����a�����wf�2���#����[�a��`08��� o��_��X�g�:�;�63�G�O�����_u�pPD��*����γ�yhD���/~��ck������|��pPD<:3/�z6�����`�`0�ɢK���D�T�&�ټ}t���n_��&�h%!� 3�n�����a�#f}~0<��)��c�O��"�8�YT�=�YEq2P���x!���9W��k�s�jJ]��)���æ���e��T��w�{0>�J�D�d������]��}뚠}���8����3sUm�+#���~w��̓��7��\S_����W5Ϸ3r�+�� ��_>���"b�����g����D��Ts���N,n�JJ��,˳��{���� n�O.��a�<�l�̋���E�����d"i��D��d��������zGEıT���t��kn����uҸ�����E���u��u�b��<'3� >5bhݛ����>��De��3��D�>�fA�{���֋^�.������
�_�]Y'	� �����1�Kݟ*��bwH^ #����K��4�Uӷ����\�"x�������_Jռig�#����u����xjDܿy^�s��(^W��u����EY�ò,Ϯ���}���dy%i�d"I�ؾ}{���K��MӮ~�OQ����%3�P����N�-�Q�F���C2�_��zumP%��%u��o ���&�o�����m#��L�}�OQM��Ӛr�2�����ߓ�s����z�A��e��#����&��l۶��dnn������������T��^�����Yfgg盡���5���z4�����j�?"����?G<���I��X�d�C�3�eٮ��w��ffffN�������i�x�(I�{�{�7�β�j25�(
ʲ��t@D�,����̜���(���)���}"��;M�n���F�넺�g�'o��:��f��A�^��#�{���M��KF]g+@�f�����N���e�����֩G5J�[�b}�o��=;;�֭[�g��>�������~&	�(3���5��s�P������������E��q��w�����1��W��F|xИM7K94���6�~���#������n��vޘ��
Ї��� ����F�'�kS�R������;�	��|`D4��]=j�ֽ��.�AM�m��R��R��`q|@D\��z4ϥ�x�����xxD����6Ww����^QՒ�_��K�.d"i��	����^�4�*Pn%�[�é�Q���V򦽓X�Zc��>���H���o?����l�ۿ�j�����w����;n����K�SKm�����[�&�<l�k������|_��Y-��g�l��n9�!�O�j�̑�k|L��mv�v��'3��7{ֈeo��Cd)� ��/�tW�̧�ߢ�4�;������]�����!���z$�uWߏ&Hߺ+�0���Q��=2"��L.�
��$i�f"iZ� ��Ӄmt�G���?rդvWR7���?���b�Pŉ�M�l������E1�o���aQ�׈�s"�]�o	eYޱ�V���1�4��v��FĸQ��T�n5|�*���(��˲\ؗe�e5�i��>���z?�d�X8k��Q�㶚�}G
��G�7|�y[DLt��$iژ�H�V?h�F��1jD<?3G5���7w��ݨ�̐���~eYP���ø�JBF�{W}ݳeY����`�����疺�����w@]�� "�Vg�e��H�F�"i*�g3�?_�W=���m'�hX0��3 "bps�&��i7J>7�z�G6ssLj� �7���P͗��լ���4� 3ڝewQ����G63�O�{1s�$����&iZ]I�����xN������cB���&�m&lO��,w�ur@D�rS�n��LLX����4��,ٰaâ���f�U �~�i�$��}G}� 1h��x"P���%&�\Wu�{E��D��%ضm۶m[�O�Yd&��v��Z�֐	���S��"���7df�3�߼^��NB�]�J,�=�Y��	�3���W��%�� ��[���ٱ ᚴF΢~~}����h��u�}��&)�b�L�͵����^ςu\F5G�C#��o������"Q���b"ij���177���ۛ�_PM�w<�״��5o��2�D�e��/��7���E�̎�+QE�x\�߾;���"�j�ЈxK]&2�;�H oa�����8>3�FN���� �Y�{Q7��-".�o��Q�5.eY�if>v�N���m+��z�_���=&�$����\LIZ7& ��ٍEQ�E���T����}�����Q��D\��|�����=�7_813?��g�j@�������"`[f�23��}en\�&"��Ӕl~�SO=u�i~Ju_3"��'2���ˁWe���\;a04���F�S��gG��LD�="���j��Wf~%3933������:�P��kʲ�$"�Ũg!I{:ISaT�\Ϧ}iD<#"��^��eeY��2pYY��/��x#����R��\��� 3_����EĖ��7�	EQ�|�������x΋+2���0����U��px�p8��\���Wp�M��RuH+pU������
�<�A༝����gsqRY��-��z�Z����7Eħ�����pU��cʲ��eY^|�ճypwf�(3�V��.+�$�6��4���	ܮ �����Z�-F�ՙy�p8|w�׻z�1�D�̼�������T#Bm.��TA�pI�/�!�eY6�E~���F�u��w�E�Yť���]����̼�9D�����3���g�����Dē���>��s1����n8^���_��'�X����<xoD\2���u����g�w3�'��L�Fē3��s��ہ�#�/2�yNw�V��-�s���sou�;�7���m�͂�5G�m�/��6pp4��� 3�A=��$M#�t%M��7���Z��f��"b���}B����9|lD�R%w7��}m���V��i���x�sE1r�Iކ��h�[�P͙�k�=������6m�4���d� P%3[:��������
��9���g�J|�O���G���!�}};S�q�Rպ��?�Q��O?���吤=�M�$M�3�<s��cp�7ڰ8�\" ��do��]7�踗�^I?�1ǿ���.��͈n�j6�֤�?�� ��|n�{[R�d��!i��N�T9��SW%����6V�J��(��w��l%�_�$�;�H��D�߈�G���n�g�cK�V�M�$M�͛7/Z6* n��
��8��;ot���[�ݩ	֨㵚`-0��& l;��s-k5���҄cg���o�Y��F����1���{��ι
M��]�ܳ��=�	�$i�3")|��_�& �"�b���f�u�u���I��p,I�gDm�ˁ���oQM"y�O=RٯQp���c8ĭ$�/I�4��x<��κ!�w�ٙ��I�$i�2�$M������=~0�BDN5�Ե����~�c�a���ͯ$i}��H��B=˷����`A'�Q�%I��ax%I{��䑣tf�'3aJ�vI�^�����J�v�%I{�.�`Ѳ�`��yU����3�\�rI�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��5������/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.png-5122033cac747157decad52589e2295c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://index.png"
dest_files=[ "res://.import/index.png-5122033cac747157decad52589e2295c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_scene load_steps=2 format=2]

[sub_resource type="GDScript" id=1]

[node name="Node2D" type="Node2D"]
script = SubResource( 1 )

[node name="Label" type="Label" parent="."]
margin_left = 99.4456
margin_top = 62.0701
margin_right = 165.446
margin_bottom = 76.0701
text = "LOADING!"
__meta__ = {
"_edit_use_anchors_": false
}
        GDSC            J      ����������������Ķ��   �����϶�   ����������Ӷ   ���������Ӷ�   �����������ڶ���   ���������������۶���   �������¶���   ������ڶ   ��������Ķ��   ������������϶��   ������Ӷ   ����������Ӷ      ATTACH        distanceMap                                                  	   	   
   
                                                                &      '      ,      F      H      3YYYYYYYYY0�  PQV�  -YY0�  PQV�  -YYYYYY0�  PQV�  �  �?  PQ�  �  PQT�  P�  RW�  �  �  �	  �
  �  T�  PQQ�  -Y`          [remap]

path="res://KinematicBody.gdc"
        [remap]

path="res://Node2D.gdc"
               [remap]

path="res://Viewport.gdc"
             [remap]

path="res://World.gdc"
[remap]

path="res://viewportSetup.gdc"
        ECFG      _global_script_classes             _global_script_class_icons             application/config/name         shaderProject      application/run/main_scene         res://Node2D.tscn      display/window/size/width            display/window/size/height      �      display/window/size/test_width            display/window/size/test_height      X     display/window/stretch/mode         viewport   display/window/stretch/aspect         expand     input/move_forwards`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/move_backwards`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/move_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/move_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script      
   input/jump`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/key_exit`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/left_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres  