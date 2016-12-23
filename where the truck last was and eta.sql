 SELECT 
        `ds`.`idDeliveryStops` AS `idDeliveryStops`,
        `tr`.`truckrouteStopNumber` AS `truckrouteStopNumber`,
        `ds`.`deliverystopsArrival` AS `deliverystopsArrival`,
        `ds`.`deliverystopsDepart` AS `deliverystopsDepart`,
        CAST(`ds`.`deliverystopsArrival`as time(0)) AS `deliverystopsArrivalTime`,
        CAST(`ds`.`deliverystopsDepart`as time(0)) AS `deliverystopsDepartTime`,
        ADDTIME(CAST(`ds`.`deliverystopsArrival`as time(0)),
                `eta`.`estimatedtimesStopTime`) AS `ShouldHitTheRoad`,
        `tr`.`truckrouteTimeToNextStop` AS `truckrouteTimeToNextStop`,
        ADDTIME(CAST(`ds`.`deliverystopsDepart`as time(0)),
                CAST(`tr`.`truckrouteTimeToNextStop`as time(0))) AS `ETANextStop`,
        `ds`.`trucksNum` AS `trucksNum`,
        `ds`.`locationsStore` AS `locationsStore`,
        `ds`.`deliverystopsTime` AS `deliverystopsTime`,
        MINUTE(TIMEDIFF(`ds`.`deliverystopsDepart`,
                    ADDTIME(`ds`.`deliverystopsArrival`,
                            `eta`.`estimatedtimesStopTime`))) AS `OverUnderAmount`,
        (CASE
            WHEN
                (ADDTIME(`ds`.`deliverystopsArrival`,
                        `eta`.`estimatedtimesStopTime`) > `ds`.`deliverystopsDepart`)
            THEN
                'Early'
            ELSE 'Late'
        END) AS `Status`,
        `eta`.`estimatedtimesStopTime` AS `estimatedtimesStopTime`,
        `eta`.`estimatedtimesStopTimeWithHelp` AS `estimatedtimesStopTimeWithHelp`,
        `t`.`trucksPhysicalBox` AS `trucksPhysicalBox`
    FROM
        (((`deliverystops` `ds`
        JOIN `estimatedtimes` `eta` ON ((`eta`.`estimatedtimesLocation` = `ds`.`locationsStore`)))
        LEFT JOIN `trucks` `t` ON ((`t`.`trucksNum` = `ds`.`trucksNum`)))
        JOIN `truckroute` `tr` ON (((`tr`.`truckrouteTruck` = `ds`.`trucksNum`)
            AND (`tr`.`truckrouteLocation` = `ds`.`locationsStore`))))
    WHERE
        (`t`.`trucksPhysicalBox` = 1)
        
 GROUP BY `ds`.`trucksNum` , `ds`.`locationsStore`

 HAVING  ds.trucksNum='B2-3509' order by ds.idDeliveryStops  

   