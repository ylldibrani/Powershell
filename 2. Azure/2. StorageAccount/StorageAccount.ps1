# Authentication

Disable-AzContextAutosave

# RG params
$ResourceGroupName = "rg-pwsh-test-001"
$Location = "West Europe"

# SA params
$AccountName = ""
$AccountKind = "StorageV2"
$AccountSKU = "Standard_LRS"

$AppId = ""
$AppSecret = ""
$TenantId = ""
$SubscriptionId = ""

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force

$Credential = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $AppId,$SecureSecret

Connect-AzAccount -ServicePrincipal -Credential $Credential -TenantId $TenantId

Set-AzContext -Subscription $SubscriptionId

# Create Storage Account

New-AzStorageAccount -ResourceGroupName $ResourceGroupName -Location $Location -Kind $AccountKind -SkuName $AccountSKU -Name $AccountName

# Remove-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AccountName