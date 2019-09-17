$dir = $Args[0]
$filetype = $Args[1]
$list = @()
Get-ChildItem ../$dir/$filetype -Filter *.$filetype |
 Foreach-Object {
    $content =  $_.FullName
	
    $sha = (Get-FileHash $content)
	foreach ($hash in $list) {
	  if($hash.Hash -eq $sha.Hash) { echo "Matches in "  $content $hash.Path }
	}
	$list += $sha
}

