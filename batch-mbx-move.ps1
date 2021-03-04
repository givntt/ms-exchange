imnport-csv c:\opt\Lotti_Migrazione\file.txt | %{New-MoveRequest -Identity $_.mail -TargetDatabase DBxx -BadItemLimit 5 -AcceptLargeDataLoss -suspendwhenreadytocomplete:$true -Bacthname Batchname}
