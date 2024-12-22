<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagamento</title>
</head>
<body>
    <h1>Escolha a forma de pagamento</h1>
    <form action="processaPagamento.php" method="POST">
        <label for="valor">Valor a ser pago:</label><br>
        <input type="number" step="0.01" name="valor" id="valor" required><br><br>

        <label for="forma_pagamento">Forma de pagamento:</label><br>
        <select name="forma_pagamento" id="forma_pagamento" required>
            <option value="cartao">Cartão</option>
            <option value="boleto">Boleto</option>
        </select><br><br>

        <button type="submit">Realizar Pagamento</button>
    </form>
</body>
</html>