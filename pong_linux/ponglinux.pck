GDPC                                                                                <   res://.import/ball.png-ca93c4f2e7b7f8325cbd933673092ff4.stex?      ^       (??Ÿě??Q????f<   res://.import/bcn.png-36c1aa6cc3a4bcd2925481cb625c6e22.stex ?!      ?       ƿ????d?&????N<   res://.import/mad.png-aa38dc51006908d32cdaa80f8697fb07.stex ?$      v       ?$X????i??Y???   res://Ball/Ball.gd.remap?(      $       ???Af?X?j&2?P?   res://Ball/Ball.gdc ?      I      X
8?u?j ;B??????   res://Ball/Ball.tscn?      ?      MRl? K?Ξk
??H?q   res://Level/Level.gd.remap   )      &       ^?r????}??????   res://Level/Level.gdc   ?	      [      =??b?%??)?? ??   res://Level/Level.tscn  0      
      ?}?o`?c?j??~=?T?    res://Opponent/Opponent.gd.remap0)      ,       ????y8??:? T???   res://Opponent/Opponent.gdc @      t      J???Bִn???='   res://Opponent/Opponent.tscn?      ?      ?H"p???[???oi??   res://Player/Player.gd.remap`)      (       HŊ?C?@p;P*/??   res://Player/Player.gdc ?      ?      	?5Z?35a??Ȩ%E   res://Player/Player.tscn?            ??M_????9?u   res://assets/ball.png.import       ?      h?U?Q+?8???>Z?M   res://assets/bcn.png.import @"      ?      k?<5?x*9????/   res://assets/mad.png.import p%      ?      ?T??w+?
x?(??7HE   res://default_env.tres   (      ?       um?`?N??<*ỳ?8   res://project.binary?)      ?      <:?s???sV?t#6??    GDSC            c      ????????????τ??   ????Ҷ??   ???????϶???   ????????   ?????϶?   ζ??   ϶??   ???????????????Ŷ???   ????׶??   ????????????ܶ??   ???????????????Ӷ???   ?????Ӷ?   ?????ڶ?   X                ????????                                                 ,   	   >   
   ?      F      R      V      a      3YY;?  Y;?  ?  T?  YY0?  PQV?  ?%  PQ?  ?  T?  L?  R?  ML?&  PQ?  M?  ?  T?  L?  R?  ML?&  PQ?  M?  Y0?  P?  QV?  ;?	  ?
  P?  ?  ?  Q?  &?	  V?  ?  ?  T?  P?	  T?  QY`       [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/ball.png" type="Texture" id=1]
[ext_resource path="res://Ball/Ball.gd" type="Script" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 8.0

[node name="Ball" type="KinematicBody2D"]
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
            GDSC            \      ???Ӷ???   ??????????Ӷ   ????????????Ӷ??   ????????????????????Ҷ??   ???϶???   ???ڶ???   ???????ض???   ?????????????????????Ҷ?   ???????Ŷ???   ????׶??   ??????????Ӷ   ???¶???               h                                                         "   	   &   
   '      .      :      >      ?      F      P      Z      3YY;?  Y;?  YYY0?  P?  QV?  W?  T?  ?  P?  R?  Q?  ?  ?  YY0?  P?  QV?  W?  T?  ?  P?  R?  Q?  ?  ?  ?  Y0?  P?	  QV?  W?
  T?  ?>  P?  Q?  W?  T?  ?>  P?  QY`     [gd_scene load_steps=7 format=2]

[ext_resource path="res://Player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Opponent/Opponent.tscn" type="PackedScene" id=2]
[ext_resource path="res://Ball/Ball.tscn" type="PackedScene" id=3]
[ext_resource path="res://Level/Level.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 539, 10 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 28.5, 354 )

[node name="Level" type="Node"]
script = ExtResource( 4 )

[node name="ColorRect" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -3.0
margin_top = 13.0
margin_bottom = 13.0
color = Color( 0.14902, 0.376471, 0.168627, 1 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, 576 )

[node name="Opponent" parent="." instance=ExtResource( 2 )]
position = Vector2( 1040, 144 )

[node name="StaticBody2D" type="StaticBody2D" parent="."]
position = Vector2( 0, 12 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( 540, -10 )
shape = SubResource( 1 )

[node name="StaticBody2D2" type="StaticBody2D" parent="."]
position = Vector2( 8, 741 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2"]
position = Vector2( 533, -11 )
shape = SubResource( 1 )

[node name="Ball" parent="." instance=ExtResource( 3 )]
position = Vector2( 540, 360 )

[node name="Left" type="Area2D" parent="."]
position = Vector2( -47, 10 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Left"]
position = Vector2( 18.5, 356 )
shape = SubResource( 2 )

[node name="Right" type="Area2D" parent="."]
position = Vector2( 1088, 14 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Right"]
position = Vector2( 20, 350 )
shape = SubResource( 2 )

[node name="Playerscore" type="Label" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 200.0
margin_top = 350.0
margin_right = -520.0
margin_bottom = -338.0
text = "SCORE
"
align = 1
valign = 1

[node name="OpponentScore" type="Label" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 536.0
margin_top = 342.0
margin_right = -216.0
margin_bottom = -343.0
text = "SCORE"
align = 1
valign = 1

[connection signal="body_entered" from="Left" to="." method="_on_Left_body_entered"]
[connection signal="body_entered" from="Right" to="." method="_on_Right_body_entered"]
GDSC            g      ????????????τ??   ????Ҷ??   ???ڶ???   ?????϶?   ?????????¶?   ????????Ӷ??   ???????????????Ŷ???   ????׶??   ?????????????Ӷ?   ?????????????????????ض?   ???????ض???   ϶??   ?        Ball                                                                       	      
   &      4      5      ;      L      Z      `      e      3YY;?  Y;?  YY0?  PQV?  ?  ?  PQT?  P?  Q?  ?  Y0?  P?  QV?  ?  P?  P?  R?	  PQQ?  Q?  Y0?	  PQV?  &?  P?  T?
  T?  ?
  T?  Q?  V?  &?  T?
  T?  ?
  T?  V.?  ?  (V.?  ?  (V.?  Y`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/mad.png" type="Texture" id=1]
[ext_resource path="res://Opponent/Opponent.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 64 )

[node name="Opponent" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
   GDSC   
         >      ????????????τ??   ????Ҷ??   ???????????????Ŷ???   ????׶??   ???????϶???   ????????   ????¶??   ????????????????Ҷ??   ϶??   ?????????????Ӷ?   ?        ui_up               ui_down                          	                         &   	   /   
   5      <      3YY;?  YY0?  P?  QV?  ;?  ?  T?  ?  &?  T?  P?  QV?  ?  T?  ?  ?  &?  T?  P?  QV?  ?  T?  ?  ?  ?	  P?  ?  QY`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/bcn.png" type="Texture" id=1]
[ext_resource path="res://Player/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 64 )

[node name="Player" type="KinematicBody2D"]
position = Vector2( 100, 500 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
      GDST               B   WEBPRIFF6   WEBPVP8L)   /??BM ??A?T???d??*:5?ܻ??d?    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-ca93c4f2e7b7f8325cbd933673092ff4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/ball.png"
dest_files=[ "res://.import/ball.png-ca93c4f2e7b7f8325cbd933673092ff4.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST    ?            h   WEBPRIFF\   WEBPVP8LO   /?   ??? R @Xb]????Nv???`ϴ?H?}?
I)4f??=R#??Ķ	?{??dh???a?T???             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bcn.png-36c1aa6cc3a4bcd2925481cb625c6e22.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/bcn.png"
dest_files=[ "res://.import/bcn.png-36c1aa6cc3a4bcd2925481cb625c6e22.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST    ?            Z   WEBPRIFFN   WEBPVP8LB   /?  H?ܟd!A???cI`?k=???
?@?P???~??\7gD?' '??_???g??Z?          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/mad.png-aa38dc51006908d32cdaa80f8697fb07.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/mad.png"
dest_files=[ "res://.import/mad.png-aa38dc51006908d32cdaa80f8697fb07.stex" ]

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
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Ball/Ball.gdc"
            [remap]

path="res://Level/Level.gdc"
          [remap]

path="res://Opponent/Opponent.gdc"
    [remap]

path="res://Player/Player.gdc"
        ECFG	      application/config/name         Pong   application/run/main_scene          res://Level/Level.tscn     display/window/size/width      8     display/window/size/height      ?     display/window/size/resizable             display/window/size/borderless         +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres          