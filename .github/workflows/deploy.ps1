Expand-Archive -Path "C:\Temp\*.zip" -DestinationPath "C:\Temp\BlazorApp1\"
iisreset /stop
Copy-Item "C:\Temp\BlazorApp1\*" -Destination "C:\BlazorApp1\" -Force
iisreset /start
Remove-Item -Path "C:\Temp\*.zip" -Force
Remove-Item -Path "C:\Temp\BlazorApp1\" -Recurse -Force
