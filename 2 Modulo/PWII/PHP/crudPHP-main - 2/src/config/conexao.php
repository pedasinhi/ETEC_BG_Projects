<?php

$conexao = mysqli_connect("localhost", "root", "", "crud_php");

if (!$conexao) {
    die("Erro ao conectar: " . mysqli_connect_error());
}
