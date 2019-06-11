


$params = @{
    $scaleSetName = ""
    $keyVaultName = ""
    $keyVaultResourceGroup = ""
    $adminSecretName = "scalesetAdminPassword"
    $computerNamePrefix = ""
    $computeSku = ""
    $initialCapacity = 3
    $vnetName = "VPTeam-Perf"
    $subnetName = ""
    $networkResourceGroup = "VPTeam-Peformance-V3"
    $dnsLabel = ""
    $automationAccountName = ""
    $automationAccountResourceGroup = ""
}

Login-AzAccount

New-AzResourceGroupDeployment -Name "" -ResourceGroupName "VPTeam-Peformance-V3" -TemplateParameterObject $params -TemplateFile templates/webserver-vmss.json -mode Incremental