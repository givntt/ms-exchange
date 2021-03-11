$exc="exc07"
#Enter Maintenance Mode
Set-ServerComponentState $exc –Component HubTransport –State Draining –Requester Maintenance
Redirect-Message –Server $exc –Target exc07
Set-ServerComponentState $exc –Component ServerWideOffline –State InActive –Requester Maintenance
#Exit Maintenance Mode
Set-ServerComponentState $exc -Component ServerWideOffline -State Active -Requester Maintenance
Set-ServerComponentState $exc -Component HubTransport -State Active -Requester Maintenance
#Get Component State
Get-ServerComponentState $exc | Select Component, State

