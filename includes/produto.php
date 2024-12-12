<section id="produto">
    <h2 class="titulo">Produtos</h2>
    <main class="container produtos">
        <div class="row">
            <?php foreach ($dadosProdutos as $dados) { ?>
                <div class="col-3">
                    <figure>
                        <a href="./detalhes.php?id=<?= $dados['id']?>">
                            <img src="./assets/img/poster/<?= $dados['imagem'] ?>" alt="poster Assassin's Creed Mirage" class="foto-produto">
                            <figcaption>
                                <h4><?= $dados['titulo'] ?></h4>
                                <span class="preco">R$<?= number_format($dados['preco'], 2, ",", ".") ?></span>
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
                            </figcaption>
                        </a>
                    </figure>
                </div>
            <?php } ?>
        </div>
    </main>

</section>