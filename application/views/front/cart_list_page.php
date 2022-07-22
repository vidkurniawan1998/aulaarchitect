<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="<?php echo site_url() ?>">Beranda</a></li>
                    <li>Keranjang Belanja</li>
                </ul>
            </div>
            <h1>Keranjang Belanja</h1>
        </div>

        <form action="<?php echo site_url('cart/update') ?>" method="post">
            <table class="table table-striped cart-list">
                <thead>
                <tr>
                    <th>
                        Produk
                    </th>
                    <th>
                        Harga
                    </th>
                    <th>
                        Qty
                    </th>
                    <th>
                        Subtotal
                    </th>
                    <th>

                    </th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($cart_list as $row) { ?>
                    <tr
                            data-price="<?php echo $row['price'] ?>"
                            data-subtotal="<?php echo $row['subtotal'] ?>">
                        <td>
                            <a href="<?php echo $this->main->permalink(array('produk', $row['options']['category_title'], $row['name'])) ?>"
                               target="_blank">
                                <div class="thumb_cart">
                                    <img src="<?php echo $row['options']['thumbnail'] ?>"
                                         data-src="<?php echo $row['options']['thumbnail'] ?>" class="lazy" alt="Image">
                                </div>
                                <span class="item_cart"><?php echo $row['name'] ?></span>
                            </a>
                        </td>
                        <td class="font-weight-bolder"><?php echo $this->main->format_currency($row['price']) ?></td>
                        <td>
                            <div class="numbers-row">
                                <input type="text" value="<?php echo $row['qty'] ?>" id="quantity_1"
                                       class="qty2 cart-list-qty-input" name="qty[<?php echo $row['rowid'] ?>]">
                                <div class="inc button_inc cart-list-qty-plus">+</div>
                                <div class="dec button_inc cart-list-qty-min">-</div>
                            </div>
                        </td>
                        <td class="cart-list-item-subtotal font-weight-bolder">
                            <?php echo $this->main->format_currency($row['subtotal']) ?>
                        </td>
                        <td class="options">
                            <a href="javascript:" class="cart-item-remove-on-page"
                               data-rowid="<?php echo $row['rowid'] ?>"><i
                                        class="ti-trash"></i></a>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="2" align="center" class="font-weight-bolder">TOTAL</td>
                    <td align="center" class="cart-item-total font-weight-bolder"><?php echo $cart_total_item; ?></td>
                    <td class="cart-price-total font-weight-bolder"><?php echo $this->main->format_currency($cart_total_price) ?></td>
                    <td></td>
                </tr>
                </tfoot>
            </table>

            <div class="row add_top_30 cart_actions">
                <div class="col-sm-5">
                    <a href="<?php echo site_url('produk') ?>" class="btn_1 outline"><i class="ti-shopping-cart"></i> Lanjut Belanja</a>
                </div>
                <div class="col-sm-7 text-right">
                    <button type="submit" class="btn_1 gray"><i class="ti-pencil"></i> Perbarui Keranjang Belanja
                    </button>
                    <button type="button" class="btn_1 cart-checkout"><i class="ti-check"></i> Checkout</button>
                </div>
            </div>
        </form>

    </div>
</main>