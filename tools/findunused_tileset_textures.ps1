$dir = $Args[0]
$filetype = $Args[1]

Get-ChildItem "../$dir/$filetype" -Filter *.$filetype |
 Foreach-Object {
    $content =  $_.BaseName
	#echo $content "../$dir/mdl/*.mdl"
	#echo "\(texture\|bitmap\) \+\b$content\b"
	if(-Not (Select-String -path "../$dir/mdl/*.mdl" -pattern "(texture|bitmap) +\b$content\b" -Quiet)) {
      if(-Not (Select-String -path "../$dir/data/*.set" -pattern ".*=.*$content.*" -Quiet)) {   
      echo $content } }
	#Get-ChildItem "../$dir/mdl" -Filter *.mdl |
	# Foreach-Object {
	#    write Get-Content $_.FullName | Select-String -pattern ".*$content.*" -AllMatches
     	#if((Get-Content $_.FullName | Select-String -pattern "$content" --AllMatches).length > 0) { echo $content }
	# }
}
