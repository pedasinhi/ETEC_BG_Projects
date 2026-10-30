<?php
include "../config/conexao.php";

$sql = "SELECT * FROM usuarios";
$resultado = mysqli_query($conexao, $sql);
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Listar</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <h1>Usuários cadastrados</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Telefone</th>
            <th>Ações</th>
        </tr>

        <?php while ($usuario = mysqli_fetch_assoc($resultado)) { ?>
            <tr>
                <td><?php echo $usuario["id"]; ?></td>
                <td><?php echo htmlspecialchars($usuario["nome"]); ?></td>
                <td><?php echo htmlspecialchars($usuario["email"]); ?></td>
                <td><?php echo htmlspecialchars($usuario["telefone"]); ?></td>
                <td>
                    <a href="editar.php?id=<?php echo $usuario["id"]; ?>">Editar</a>
                    <a href="excluir.php?id=<?php echo $usuario["id"]; ?>">Excluir</a>
                </td>
            </tr>
        <?php } ?>
    </table>

    <a href="../../index.php">Voltar</a>
</body>
</html>
