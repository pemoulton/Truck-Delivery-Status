update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='54.0' , truckrouteTimeToNextStop='1:16:33' where truckrouteStopNumber = '0';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='16.0' , truckrouteTimeToNextStop='0:21:59' where truckrouteStopNumber = '1';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='38.1' , truckrouteTimeToNextStop='0:56:39' where truckrouteStopNumber = '2';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='21.8' , truckrouteTimeToNextStop='0:33:54' where truckrouteStopNumber = '3';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='4.3' , truckrouteTimeToNextStop='0:13:34' where truckrouteStopNumber = '4';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='2.8' , truckrouteTimeToNextStop='0:07:49' where truckrouteStopNumber = '5';
update truck_delivery_status.truckroute set truckrouteDistanceToNextStop='58.1' , truckrouteTimeToNextStop='0:58:16' where truckrouteStopNumber = '6';

select * from truckroute order by truckrouteStopNumber;

select * from email where emailTruck=