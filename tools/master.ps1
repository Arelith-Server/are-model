$date = Get-Date -format "dd_MM_yy_HH_mm_ss"
write "Checksums: "
write " Creature TGA"
./Checksums arelith_creatures tga
write " Creature MDL"
./Checksums arelith_creatures mdl
write " Placeables TGA"
./Checksums arelith_placeables tga
write " Placeables MDL"
./Checksums arelith_placeables mdl
write " Placeables TXI"
./Checksums arelith_placeables txi
write " Placeables OVR TGA"
./Checksums arelith_placeables\override tga
write " Placeables OVR MDL"
./Checksums arelith_placeables\override mdl
write " Placeables OVR TXI"
./Checksums arelith_placeables\override txi
write " Portraits TGA"
./Checksums arelith_portraits tga
write "Finding unused files.."
write "  Creature Tgas"
./findunused arelith_creatures tga
write "  Placeable txis"
./findunused arelith_placeables txi
write "  Placeable tga"
./findunused arelith_placeables tga

write "  Placeable override txis"
./findunused arelith_placeables\override txi
write "  Placeable override tga"
./findunused arelith_placeables\override tga
write "Tilesets:"
Get-ChildItem ..\arelith_tilesets -Directory |
 Foreach-Object {
    $folder =  $_.BaseName
	write "${folder}:"
	write " ..Checksums.."
	write " mdl"
	./Checksums arelith_tilesets\$folder mdl
	write " tga"
	./Checksums arelith_tilesets\$folder tga
	write " txi"
	./Checksums arelith_tilesets\$folder txi
	
	write "..Unussed.."
	write "  txi"
	./findunused arelith_tilesets\$folder txi
	write "  tga"
	./findunused arelith_tilesets\$folder tga
}