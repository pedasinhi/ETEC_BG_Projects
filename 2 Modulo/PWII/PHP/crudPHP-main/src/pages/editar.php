<?php
include "../config/conexao.php";

if (!isset($_GET["id"])) {
    die("Escolha um usuário na <a href='listar.php'>lista</a> para editar.");
}

$id = $_GET["id"];
$mensagem = "";

if (isset($_POST["nome"])) {
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $telefone = $_POST["telefone"];

    $sql = "UPDATE usuarios SET nome = ?, email = ?, telefone = ? WHERE id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, "sssi", $nome, $email, $telefone, $id);

    if (mysqli_stmt_execute($stmt)) {
        $mensagem = "Usuário atualizado com sucesso!";
    } else {
        $mensagem = "Erro ao atualizar.";
    }
}

$sql = "SELECT * FROM usuarios WHERE id = ?";
$stmt = mysqli_prepare($conexao, $sql);
mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
$usuario = mysqli_fetch_assoc(mysqli_stmt_get_result($stmt));

if (!$usuario) {
    die("Usuário não encontrado. <a href='listar.php'>Voltar para a lista</a>");
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Editar</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <h1>Editar usuário</h1>

    <p><?php echo $mensagem; ?></p>

    <form method="post">
        <label>Nome:</label>
        <input type="text" name="nome" value="<?php echo htmlspecialchars($usuario["nome"]); ?>" required>

        <label>E-mail:</label>
        <input type="email" name="email" value="<?php echo htmlspecialchars($usuario["email"]); ?>" required>

        <label>Telefone:</label>
        <input type="text" name="telefone" value="<?php echo htmlspecialchars($usuario["telefone"]); ?>">

        <button type="submit">Salvar</button>
    </form>

    <a href="listar.php">Voltar</a>
</body>
</html>
