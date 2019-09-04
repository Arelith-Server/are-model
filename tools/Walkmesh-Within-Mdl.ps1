$dir = $Args[0]
$filetype = $Args[1]
$list = @()
Get-ChildItem ../$dir/mdl -Filter *.mdl |
 Foreach-Object {
    $content =  $_.FullName

    $match = Get-Content $content | Select-String -Pattern ".*PWK.*" | Select-Object -First 1
    if(-Not ([string]::IsNullOrEmpty($match.Line)))
    {
      $base = $_.BaseName
      #$match | Select-String -Pattern ".*$base[_]pwk.*"
      if(-Not ($match | Select-String -Pattern ".*$base[_]pwk.*" -Quiet))
        {
         echo $base }
    }
    
}

