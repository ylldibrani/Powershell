Disable-AzContextAutosave

$ResourceGroupName = "rg-pwsh-test-001"
$Location = "West Europe"

$AppId = ""
$AppSecret = ""
$TenantId = ""
$SubscriptionId = ""

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force

$Credential = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $AppId,$SecureSecret

Connect-AzAccount -ServicePrincipal -Credential $Credential -TenantId $TenantId

Set-AzContext -Subscription $SubscriptionId

New-AzResourceGroup -Name $ResourceGroupName -Location $Location

# Remove-AzResourceGroup -Name $ResourceGroupName