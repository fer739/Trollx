<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Presente Especial para Você!</title>
    <style>
        body { margin: 0; padding: 0; background: #000; font-family: sans-serif; text-align: center; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; overflow: hidden; }
        button { padding: 15px 30px; font-size: 20px; cursor: pointer; background: #25d366; border: none; color: white; border-radius: 5px; font-weight: bold; }
        #troll { display: none; position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; background: black; z-index: 9999; }
        img { width: 100%; height: 100%; object-fit: cover; }
    </style>
</head>
<body>

    <div id="inicial">
        <h2>Você recebeu uma mensagem secreta!</h2>
        <p>Clique abaixo para abrir:</p>
        <button onclick="ativarTrollagem()">ABRIR MENSAGEM</button>
    </div>

    <div id="troll">
        <!-- Substitua pelo link de uma imagem de susto ou meme -->
        <img src="https://giphy.com" alt="Troll">
        <!-- Substitua pelo link de um áudio alto/estourado -->
        <audio id="grito" src="https://soundjay.com" loop></audio>
    </div>

    <script>
        function ativarTrollagem() {
            // Entra em tela cheia no celular
            let elem = document.documentElement;
            if (elem.requestFullscreen) elem.requestFullscreen();
            else if (elem.webkitRequestFullscreen) elem.webkitRequestFullscreen();

            // Mostra a trollagem
            document.getElementById('inicial').style.display = 'none';
            document.getElementById('troll').style.display = 'block';

            // Toca o som alto
            let som = document.getElementById('grito');
            som.volume = 1.0;
            som.play();

            // Faz o celular vibrar (apenas Android)
            if (navigator.vibrate) {
                navigator.vibrate([500, 200, 500, 200, 500]);
            }
        }
    </script>
</body>
</html>
