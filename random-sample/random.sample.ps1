#!powershell.exe -File
$wavout=$args[0]
$folder=$args[1]
$file=gci $folder/*.wav | where-object {$_.length -lt 100000} | random -c 1
try{
	write-host $file
	Copy-Item $file -Destination $wavout
	exit 0
}catch{
	exit 1
}


