ATTACH TABLE _ UUID '7c395d6e-798f-421e-9025-d64e01abfe32'
(
    `data_somministrazione` Date,
    `area` String,
    `fascia_anagrafica` String,
    `sesso_maschile` Float32,
    `sesso_femminile` Float32,
    `categoria_operatori_sanitari_sociosanitari` Float32,
    `categoria_personale_non_sanitario` Float32,
    `categoria_ospiti_rsa` Float32
)
ENGINE = Log
