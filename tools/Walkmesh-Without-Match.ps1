$dir = $Args[0]
$filetype = $Args[1]
$list = @()
Get-ChildItem ../$dir/walkmesh -Filter *.pwk |
 Foreach-Object {
    $content =  $_.BaseName
    if(-Not (Test-Path -Path "../$dir/mdl/$content.mdl"))
    {
        echo $content
    }
    
}

