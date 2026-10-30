<?php
include "../config/conexao.php";

$mensagem = "";

if (isset($_POST["nome"])) {
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $telefone = $_POST["telefone"];

    $sql = "INSERT INTO usuarios (nome, email, telefone) VALUES (?, ?, ?)";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, "sss", $nome, $email, $telefone);

    if (mysqli_stmt_execute($stmt)) {
        $mensagem = "Usuário cadastrado com sucesso!";
    } else {
        $mensagem = "Erro ao cadastrar.";
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <h1>Cadastrar usuário</h1>

    <p><?php echo $mensagem; ?></p>

    <form method="post">
        <label>Nome:</label>
        <input type="text" name="nome" required>

        <label>E-mail:</label>
        <input type="email" name="email" required>

        <label>Telefone:</label>
        <input type="text" name="telefone">

        <button type="submit">Cadastrar</button>
    </form>

    <a href="../../index.php">Voltar</a>
</body>
</html>
