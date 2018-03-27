# 2018-03-27
# Logan Marchione
# PowerShell script to act as a "mouse jiggler"

# Usage:
#  To run
#    .\mouse_jiggler.ps1
#  To quit
#    Ctrl+C

# How many seconds between jiggles
$seconds=300

# Pixels to jiggle
$pixels=1

# Add the .NET class
Add-Type -AssemblyName System.Windows.Forms

# Loop forever
while ($true) {
  # Get the current mouse position
  $Pos = [System.Windows.Forms.Cursor]::Position
  # Move the mouse a distance to the right, then wait
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + $pixels) , $Pos.Y)
  Start-Sleep -Seconds $seconds

  # Get the current mouse position
  $Pos = [System.Windows.Forms.Cursor]::Position
  # Move the mouse a distance to the left, then wait
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) - $pixels) , $Pos.Y)
  Start-Sleep -Seconds $seconds
}
