<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cadastro</title>
</head>
<body>
<form action="../View/cadastro-empresa-post.php" method="post">
    <p>Insira os dados da empresa</p><br>
    CNPJ: <input type="text" name="cnpj"><br>
    Razão Social: <input type="text" name="razao_social"><br>
    Nome Fantasia: <input type="text" name="nome_fantasia"><br>
    Email: <input type="text" name="email"><br>
    Telefone: <input type="text" name="telefone"><br><br>
    <input type="submit" value="Cadastrar">
</form>
</body>
</html>
