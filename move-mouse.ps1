[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
 
Clear-Host
Echo "moving test"
Add-Type -AssemblyName System.Windows.Forms
 
$signal = 1
while($true)
{
    $p = [System.Windows.Forms.Cursor]::Position
    Echo $p
    $x = $p.X + $signal * 1000
    $y = $p.Y + $signal * 1000
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
    Start-Sleep -Seconds 600
    $signal *= -1
}
