#Parameters to be used

$Location = "NorthEurope"

$MonitoringRGName = "SantaOperationsRG"

$applicationInsightsName = "FestiveTechAI1"
$ActionGroupName = "SeriousElfAlerts"
$ActionGroupResourceGroup = $MonitoRingRGName
$AlertEmailAddress = "joulupukki@Nordpolen.fi"


#Connect to Azure
Connect-AzAccount

#Select subscription
Get-AzSubscription -SubscriptionName "YOURSUBNAME" | Select-AzSubscription

#Create the Resource Group
New-AzResourceGroup  -Name $MonitoringRGName `
-Location $Location