<section id="produto">
    <h2 class="titulo">Produtos</h2>
    <main class="container produtos">
        <div class="row">
            <?php for($i = 0; $i < 8; $i++) { ?>
            <div class="col-3">
                <figure>
                    <img src="./assets/img/poster/mirage.png" alt="poster Assassin's Creed Mirage" class="foto-produto">
                    <figcaption>
                        <h4>Assassin's Creed Mirage</h4>
                        <span class="preco">R$ 00,00</span>
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