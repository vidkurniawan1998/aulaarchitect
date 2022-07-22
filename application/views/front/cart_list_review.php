<div class="dropdown dropdown-cart">
    <a href="<?php echo site_url('keranjang-belanja') ?>"
       class="cart_bt cart-total">
        <strong><?php echo $cart_total ?></strong>
    </a>
    <div class="dropdown-menu">
        <div class="cart-list-review">
            <ul>
                <?php
                $cart_price_total = 0;
                $no = 0;
                foreach ($cart_content as $row) {
                    $cart_price_total += $row['subtotal'];
                    $link = $this->main->permalink(array('produk', $row['options']['category_title'], $row['name']));
                    if ($no < $cart_view_limit) { ?>
                        <li>
                            <a href="<?php echo $link ?>">
                                <figure>
                                    <img src="<?php echo $row['options']['thumbnail']; ?>"
                                         data-src="<?php echo $row['options']['thumbnail']; ?>"
                                         width="50"
                                         height="50"
                                         class="lazy">
                                </figure>
                                <strong>
                                    <?php echo $row['name'] ?>
                                    <span><?php echo $row['qty'] ?> x <?php echo $this->main->format_currency($row['price']) ?></span>
                                    <?php echo $this->main->format_currency($row['subtotal']) ?>
                                </strong>
                            </a>
                            <a href="javascript:"
                               class="action cart-item-remove"
                               data-rowid="<?php echo $row['rowid'] ?>">
                                <i class="ti-trash"></i>
                            </a>
                        </li>
                        <?php
                    }
                    $no++;
                } ?>
            </ul>
        </div>
        <div class="total_drop">
            <div class="cart-item-more"><?php echo ($no - $cart_view_limit) > 0 ? '<a href="' . site_url('keranjang-belanja') . '">... selanjutnya</a>' : '' ?></div>
            <div class="clearfix"><strong>Total&nbsp;<span
                        class="cart-total-core"> (<?php echo $cart_total ?>)</span></strong><span><?php echo $this->main->format_currency($cart_price_total) ?></span>
            </div>
            <a href="<?php echo site_url('keranjang-belanja') ?>" class="btn_1 outline">Keranjang
                Belanja</a>
            <a href="javascript:" class="btn_1 cart-checkout">Checkout</a>
        </div>
    </div>
</div>