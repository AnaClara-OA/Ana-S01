data Item = Item {
    nomeItem :: String,
    categoria :: String,
    precoItem :: Double
} deriving (Show)

data CompraZelda = CompraZelda {
    itens :: [Item]
} deriving (Show)

calculaDesconto :: [Item] -> Double
calculaDesconto xs =
    let total = sum (map precoItem xs)
    in if total > 200 then total * 0.10 else 0.0

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda xs) =
    let total = sum (map precoItem xs)
        desconto = calculaDesconto xs
        frete = if total <= 200 then 15 else 0
    in total - desconto + frete
