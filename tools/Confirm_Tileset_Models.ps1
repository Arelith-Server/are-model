$dir = $Args[0]
Get-ChildItem "../arelith_tilesets/$dir/mdl" -Filter *.mdl |
 Foreach-Object {
    $model = $_.BaseName
    #echo $model
	#echo $content "../$dir/mdl/*.mdl"
	#echo "\(texture\|bitmap\) \+\b$content\b"
	if(-Not (Select-String -Path "../arelith_tilesets/$dir/data/*.*" -pattern "$model" -Quiet)) { echo $model }
	#Get-ChildItem "../$dir/mdl" -Filter *.mdl |
	# Foreach-Object {
	#    write Get-Content $_.FullName | Select-String -pattern ".*$content.*" -AllMatches
     	#if((Get-Content $_.FullName | Select-String -pattern "$content" --AllMatches).length > 0) { echo $content }
	# }
}