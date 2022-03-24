<template>
    <div>
        <div class="card" id="single-product">
            <div class="card-body">
                <div class="img-fluid">
                    <img v-lazy="product.feature_image" class="img-fluid"/>
                </div>
            </div>
            <div class="card-footer">
                <div class="item-cart" v-if="havingProduct">
                    <a
                        title="Remove On"
                        @click.prevent="updateCart(havingProduct.rowId, 'decrement')"
                        class="float-left qty-minus"
                    >
                        <strong><i class="lni lni-minus"></i></strong>
                    </a>

                    <div class="qty-text float-left">
                        <strong>{{ havingProduct.qty }} in Cart</strong>
                    </div>

                    <a
                        title="Add One More"
                        @click.prevent="updateCart(havingProduct.rowId, 'increment')"
                        class="float-left qty-plus"
                    >
                        <strong><i class="lni lni-plus"></i></strong>
                    </a>
                </div>
                <a
                    v-else
                    @click.prevent="
          addToCart(
            product.id,
            product.product_name,
            product.quantity_unit,
            1,
            product.current_quantity,
            product.discount_status == 1 && product.discount_amount > 0
              ? product.selling_price - product.discount_amount
              : product.selling_price,
            product.feature_image,
            product.discount_status == 1 && product.discount_amount > 0
              ? product.discount_amount
              : 0
          )
        "
                    href=""
                    class="add-to-cart-btn"
                >
                    <i class="lni-shopping-basket"></i>{{ cart_button }}</a>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "SingleProductCard.vue",
    props: ["currency", "product"],

    data() {
        return {
            cart_button: "Add To Bag",
        }
    },

    computed: {
        havingProduct() {
            return this.$store.getters.productWithId(this.product.id);
        },
    },

    methods: {
        addToCart(
            id,
            product_name,
            qty_unit,
            qty,
            current_qty,
            price,
            product_image,
            discount
        ) {
            this.playCartSound();
            this.cart_button = "Adding...";
            axios
                .post(base_url + "add-to-cart", {
                    id: id,
                    product_name: product_name,
                    qty_unit: qty_unit,
                    qty: qty,
                    current_qty: current_qty,
                    price: price,
                    product_image: product_image,
                    discount: discount,
                })
                .then((response) => {
                    if (response.data.status === "success") {
                        // this.successMessage(response.data);
                        // dispatch a store commit
                        this.$store.dispatch("getCart");
                        this.cart_button = "Add to Cart";
                    } else {
                        this.successMessage(response.data);
                        this.cart_button = "Add to Cart";
                    }
                });
        },

        updateCart(id, status) {
            this.playCartSound();
            axios
                .get(base_url + "cart/update/" + id + "/" + status)
                .then((response) => {
                    if (response.data.status === "success") {
                        this.$store.dispatch("getCart");
                    } else {
                        this.successMessage(response.data);
                    }
                });
        },
    },

}
</script>

<style scoped>
.add-to-cart-btn{
    color: #ff686e;
    padding: 3px 4px;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: space-evenly;
    font-weight: 500;
}
#single-product .card-footer{
    padding: 0px !important;
}
</style>
