#Enter Maintenance Mode
Set-ServerComponentState exc08 –Component HubTransport –State Draining –Requester Maintenance
Redirect-Message –Server exc08 –Target exc07
Set-ServerComponentState exc08 –Component ServerWideOffline –State InActive –Requester Maintenance
#Exit Maintenance Mode
Set-ServerComponentState exc08 -Component ServerWideOffline -State Active -Requester Maintenance
Set-ServerComponentState exc08 -Component HubTransport -State Active -Requester Maintenance
#Get Component State
Get-ServerComponentState exc08 | Select Component, State

