param (
    [string]$TenantId
    [string]$SubscriptionId
    [string]$AppId
    [string]$AppSecret
)

$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force

$Credential = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $AppId,$SecureSecret

Connect-AzAccount -ServicePrincipal -Credential $Credential -TenantId $TenantId

Set-AzContext -Subscription $SubscriptionId