$dir = $Args[0]
Get-ChildItem ../$dir/walkmesh |
 Foreach-Object {
    $content =  $_.BaseName
    if(-Not (Test-Path -Path "../$dir/mdl/$content.mdl"))
    {
        echo $content
    }
    
}

