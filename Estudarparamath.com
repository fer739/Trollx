<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aviso Urgente!</title>
    <style>
        body { background-color: black; color: red; font-family: sans-serif; text-align: center; padding-top: 50px; }
    </style>
</head>
<body>
    <h1>⚠️ ERRO CRÍTICO NO SISTEMA ⚠️</h1>
    <p>Seu celular foi infectado por um vírus de batata.</p>

    <script>
        // Loop que exibe mensagens infinitas ao carregar a página
        while(true) {
            alert("Seu celular vai explodir em 5 segundos!");
            alert("Brincadeira! Mas você não vai conseguir fechar essa aba tão cedo haha");
        }
    </script>
</body>
</html>
