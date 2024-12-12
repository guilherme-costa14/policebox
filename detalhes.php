<?php
include_once './includes/header.php';
include './classes/Produto.php';

$id = $_GET['id'];
// var_dump($id);

$produto = new Produto();
$dados = $produto->Consultar1Produto($id);

?>

<section id="detalhes">
    <main class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 my-4">
                <img src="./assets/img/poster/<?= $dados['imagem'] ?>" alt="poster Jedi Survivor" class="foto ">
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 detalhe-produto py-5">
                <h1 class="titulo-jogo"><?= $dados['titulo'] ?></h1>

                <span class="avaliacao">
                    <?php
                    for ($j = 1; $j <= 5; $j++) {
                        if ($j <= $dados['avaliacao']) {
                            echo '<i class="bi bi-star-fill"></i>';
                        } else {
                            echo '<i class="bi bi-star"></i>';
                        }
                    }
                    ?>
                </span>

                <div class="genero">
                    <span style="background-color: #FF7733;">Ação</span>
                    <span style="background-color: #4EADA7;">Aventura</span>
                </div>

                <h3 class="preco">R$<?= number_format($dados['preco'], 2, ",", ".") ?></h3>

                <div class="versao-jogo m-3 ">
                    <button checked="">STANDARD</button>
                    <button>DELUX</button>
                    <button>ULTIMATE</button>
                </div>

                <button class="btn btn-success "><i class="bi bi-bag"></i> COMPRAR</button>
                <div class="sobre-jogo">
                    <h4>Descrição</h4>
                    <?= $dados['descricao'] ?>
                </div>

            </div>
        </div>
    </main>
</section>

<?php
include_once './includes/footer.php'

?>