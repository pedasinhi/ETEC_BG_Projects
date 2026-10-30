<?php
include "../config/conexao.php";

if (!isset($_GET["id"])) {
    die("Escolha um usuário na <a href='listar.php'>lista</a> para excluir.");
}

$id = $_GET["id"];

if (isset($_POST["confirmar"])) {
    $sql = "DELETE FROM usuarios WHERE id = ?";
    $stmt = mysqli_prepare($conexao, $sql);
    mysqli_stmt_bind_param($stmt, "i", $id);
    mysqli_stmt_execute($stmt);

    header("Location: listar.php");
    exit;
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
    <title>Excluir</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <h1>Excluir usuário</h1>

    <p>Tem certeza que deseja excluir <strong><?php echo htmlspecialchars($usuario["nome"]); ?></strong>?</p>

    <form method="post">
        <button type="submit" name="confirmar">Sim, excluir</button>
    </form>

    <a href="listar.php">Cancelar</a>
</body>
</html>
