$COLOR_GOLD = "f49e24"
$COLOR_PURPLE = "5600c4"
$KRAKEN_CPU = "49742F3E353"
$KRAKEN_GPU = "6D7A3377515"
$KRAKEN_SMART = "00000000001A"

Function Set-CoolerSettings {
    Invoke-Expression "liquidctl initialize all"
    Invoke-Expression "liquidctl.exe set fan speed 20 10 30 30 40 50 45 60 50 100 --serial $KRAKEN_GPU"
    Invoke-Expression "liquidctl.exe set fan speed 20 10 30 30 40 50 45 60 50 100 --serial $KRAKEN_CPU"
    Invoke-Expression "liquidctl.exe set pump speed 20 30 30 50 40 80 50 100 --serial $KRAKEN_GPU"
    Invoke-Expression "liquidctl.exe set pump speed 20 30 30 50 40 80 50 100 --serial $KRAKEN_CPU"
    Invoke-Expression "liquidctl.exe set fan3 speed 60 --serial $KRAKEN_SMART"
    Invoke-Expression "liquidctl.exe set sync color off --serial $KRAKEN_GPU"
    Invoke-Expression "liquidctl set ring color tai-chi $COLOR_PURPLE $COLOR_GOLD --serial $KRAKEN_CPU"
}

Export-ModuleMember -Function Set-CoolerSettings
