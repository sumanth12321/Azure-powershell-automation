# Prompt for credentials (once)
$cred = Get-Credential

# Create VM with credentials
New-AzVM -ResourceGroupName "PS-RG" `
         -Name "MyVM" `
         -Location "EastUS" `
         -VirtualNetworkName "MyVNet" `
         -SubnetName "MySubnet" `
         -SecurityGroupName "MyNSG" `
         -PublicIpAddressName "MyPublicIP" `
         -Credential $cred `
         -OpenPorts 22


