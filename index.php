<?php
include "./includes/header.php";
include "./classes/Produto.php";

include "./includes/html/banner.html";

$produto = new Produto();
$dadosProdutos = $produto->ListarProdutos(8);


include "./includes/produto.php";

include "./includes/footer.php";