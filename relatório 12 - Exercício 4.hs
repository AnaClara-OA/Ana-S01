data StatusAt = EmAndamento | Finalizado | Cancelado
    deriving (Show, Eq)

data Servico = Servico {
    nomeS :: String,
    tipoS :: String,
    precoS :: Double
} deriving (Show)

data Atendimento = Atendimento {
    servicos :: [Servico],
    statusAt :: StatusAt
} deriving (Show)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual ss =
    let totalBase = sum (map precoS ss)
        comBonus = if length ss > 3
                   then totalBase * 1.25
                   else totalBase
        final = if comBonus > 500
                then comBonus * 0.90
                else comBonus
    in final

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento _ Cancelado) = 0.0
valorFinalAtendimento (Atendimento ss _) = bonusEspiritual ss
