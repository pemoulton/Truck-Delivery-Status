insert into estimatedtimes (estimatedtimesLocation) 
SELECT locationsStoreName FROM truck_delivery_status.locations where locationsStoreName not in ('Food City (Bridgton)',
'H - Bayside',
'H-Airport Mall',
'H-Alton Bay',
'H-Athol',
'H-Auburn',
'H-Augusta - Cony',
'H-Augusta - Whitten Rd',
'H-Ayer',
'H-Bar Harbor',
'H-Barre',
'H-Bedford - Kilton Rd',
'H-Bedford - Rt 101',
'H-Belfast',
'H-Bethel',
'H-Biddeford',
'H-Boothbay',
'H-Bradford',
'H-BRATTLEBORO',
'H-KEENE',
'H-LEOMINSTER - Lancaster',
'H-LEOMINSTER - Twin City',
'H-LUNENBURG',
'H-RINDGE',
'IFS',
'K - Lee')