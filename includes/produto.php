<section id="produto">
    <h2 class="titulo">Produtos</h2>
    <main class="container produtos">
        <div class="row">
            <?php foreach($dadosProdutos as $dados){?>
            <div class="col-3">
                <figure>
                    <img src="./assets/img/poster/<?= $dados['imagem']?>" alt="poster Assassin's Creed Mirage" class="foto-produto">
                    <figcaption>
                        <h4><?= $dados['titulo']?></h4>
                        <span class="preco"><?= $dados['preco']?></span>
                        <span class="avaliacao">
                            <?php
                            for ($j = 0; $j < 5; $j++){
                                echo '<i class="bi bi-star-fill"></i>';
                            }
                            ?>
                        </span>
                    </figcaption>
                </figure>
            </div>
            <?php } ?>
        </div>
    </main>

</section>