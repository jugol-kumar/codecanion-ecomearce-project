<template>
    <div class="container">
        <div class="row">
            <div class="col-md-12 offers">
                <div class="title text-center">
                    <h4>Hot Deal</h4>
                </div>
            </div>
        </div>

        <div class="row offers" v-if="!isLoading">
            <!--      <carousel-->
            <!--        :class="'offers col-md-10 m-auto'"-->
            <!--        :perPageCustom="[-->
            <!--          [0, 2],-->
            <!--          [580, 3],-->
            <!--          [1200, 3],-->
            <!--          [1500, 5],-->
            <!--        ]"-->
            <!--        :autoplay="true"-->
            <!--        :autoplayHoverPause="true"-->
            <!--        :autoplayTimeout="2000"-->
            <!--        :navigationEnabled="true"-->
            <!--      >-->
            <!--        <slide-->
            <!--          :class="'col-12 custom_class'"-->
            <!--          v-for="value in hotProducts"-->
            <!--          :key="value.id"-->
            <!--        >-->
            <!--          <single-product-->
            <!--            class="hot_deal_offers"-->
            <!--            :currency="currency"-->
            <!--            :product="value"-->
            <!--          >-->
            <!--          </single-product>-->
            <!--        </slide>-->
            <!--      </carousel>-->

                    <div
                        class="col-6 col-lg-3 col-sm-4"
                        v-for="value in hotProducts"
                        :key="value.id"
                    >
                        <!--          <single-product-card :currency="currency" :product="value"></single-product-card>-->
                        <single-product :currency="currency" :product="value"></single-product>
                    </div>

        </div>
        <div class="row" v-else>
            <div class="col-md-12 text-center">
                <img :src="url + 'images/loading.gif'"/>
            </div>
        </div>
    </div>
</template>

<script>
import {EventBus} from "../../../vue-assets";
import Mixin from "../../../mixin";
import SingleProduct from "./SingleProduct";
import {Carousel, Slide} from "vue-carousel";

export default {
    props: ["currency"],
    mixins: [Mixin],
    components: {
        "single-product": SingleProduct,
        Carousel,
        Slide,
    },
    data() {
        return {
            hotProducts: [],
            url: base_url,
            page: 1,
            lastPage: 0,
            isLoading: false,
        };
    },

    mounted() {
        this.getDeals();
    },

    methods: {
        fetchProduct: function () {
            // will pull last 20 hod deal item
            return axios.get(
                base_url + "product-list?no_paginate=yes&hot_deal=1&take_only=20"
            );
        },

        getDeals() {
            this.isLoading = true;
            this.fetchProduct()
                .then((response) => {
                    this.hotProducts = response.data.data;
                    this.isLoading = false;
                })
                .catch((e) => console.log(e));
        },
    },
};
</script>

<style scoped>
@media only screen and (max-width: 768px) {
    /* .custom_class {
      width: 200px !important;
    } */
}

</style>

