data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Show, Eq)

data Banda = Banda {
    nomeBanda :: String,
    genero :: String,
    cache :: Double
} deriving (Show)

data Evento = Evento {
    bandas :: [Banda],
    statusEvento :: StatusEvento
} deriving (Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0.0
custoTotalEvento (Evento bs _) =
    let totalCaches = sum (map cache bs)
    in totalCaches * 1.20  -- adiciona os 20%

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada."
bandaAbertura (Evento (b:_) _) = nomeBanda b

bandaFechamento :: Evento -> String
bandaFechamento (Evento [] _) = "Nenhuma banda cadastrada."
bandaFechamento (Evento bs _) = nomeBanda (last bs)
