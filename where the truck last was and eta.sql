select 
ds.deliverystopsArrival, 
ds.deliverystopsDepart, 
ds.trucksNum, 
ds.locationsStore, 
ds.deliverystopsTime, 
`eta`.`estimatedtimesStopTime` AS `estimatedtimesStopTime`,
`eta`.`estimatedtimesStopTimeWithHelp` AS `estimatedtimesStopTimeWithHelp`,
ADDTIME(ds.deliverystopsArrival,eta.estimatedtimesStopTime) as `ShouldHitTheRoad`,
MINUTE(timediff(ds.deliverystopsDepart,ADDTIME(ds.deliverystopsArrival,eta.estimatedtimesStopTime))) as `OverUnderAmount`,
case when ADDTIME(ds.deliverystopsArrival,eta.estimatedtimesStopTime)>ds.deliverystopsDepart THEN 'Early' else 'Late' end as 'Status'
       
from deliverystops ds
join estimatedtimes eta on eta.estimatedtimesLocation=ds.locationsStore

group by trucksNum, locationsStore 
HAVING  ds.trucksNum='T3-Trailer' order by ds.idDeliveryStops desc ;
