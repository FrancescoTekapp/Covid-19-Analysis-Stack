ATTACH TABLE _ UUID '68d1a80c-1532-4731-9540-df779a829d8c'
(
    `fascia_anagrafica` String,
    `totale` Float32,
    `sesso_maschile` Float32,
    `sesso_femminile` Float32,
    `categoria_operatori_sanitari_sociosanitari` Float32,
    `categoria_personale_non_sanitario` Float32,
    `categoria_ospiti_rsa` Float32,
    `ultimo_aggiornamento` Date
)
ENGINE = Log
