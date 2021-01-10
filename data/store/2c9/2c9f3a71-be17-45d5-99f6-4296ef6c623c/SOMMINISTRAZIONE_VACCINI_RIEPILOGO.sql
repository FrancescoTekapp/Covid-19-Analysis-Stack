ATTACH TABLE _ UUID '13b6ae29-af79-4008-acb6-ce0e2207d73e'
(
    `data_somministrazione` Date,
    `area` String,
    `totale` Float32,
    `sesso_maschile` Float32,
    `sesso_femminile` Float32,
    `categoria_operatori_sanitari_sociosanitari` Float32,
    `categoria_personale_non_sanitario` Float32,
    `categoria_ospiti_rsa` Float32
)
ENGINE = Log
