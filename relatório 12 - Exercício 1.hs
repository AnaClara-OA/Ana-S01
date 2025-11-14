data TipoPedido = Aberto | Entregue | Cancelado
    deriving (Show, Eq)

data Bebida = Bebida {
    nome :: String,
    tipo :: String,
    preco :: Double
} deriving (Show)

data Pedido = Pedido {
    bebidas :: [Bebida],
    status :: TipoPedido
} deriving (Show)

taxaServico :: Double
taxaServico = 5.0

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido _ Cancelado) = 0.0
valorTotalPedido (Pedido lista _) =
    sum (map preco lista) + taxaServico
