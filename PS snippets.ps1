#Parameters to be used, change accordingly
$Location = "NorthEurope"
$RGName = "TechFestiveRG"
$applicationInsightsName = "TechFestiveAI"
$actionGroupName = "AlertTechFestiveAG"
$actionGroupShortName = "AlertTF"
$alertEmailReceiver = "Santa"
$alertEmailAddress = "santa@jukkasjarvi.com"

#Connect to Azure
Connect-AzAccount

#Select subscription
Get-AzSubscription -SubscriptionName "YOURSUBNAME" | Select-AzSubscription

#Create the Resource Group
New-AzResourceGroup  -Name $RGName `
-Location $Location

#Create the Application insights instance
New-AzResourceGroupDeployment -ResourceGroupName $RGName `
-TemplateFile .\AppInsightsIncludingSmartAlertsAndFailureAnomaliesActionGroup.json `
-applicationInsightsName $applicationInsightsName `
-actionGroupName $actionGroupName `
-actionGroupShortName $actionGroupShortName `
-alertEmailReceiver $alertEmailReceiver `
-alertEmailAddress $alertEmailAddress