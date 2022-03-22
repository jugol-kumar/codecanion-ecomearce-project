<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

/**
 * @property mixed status
 * @property mixed brand_name
 * @property mixed brand_native_name
 * @property mixed|string brand_logo
 */
class Brand extends Model
{


    // relation with brand selected

	public function sub_sub_category_brand(){

		return $this->hasMany('App\Model\Brand');
	}

	// relation with product

	public function product(){

		return $this->hasMany('App\Model\Product');
	}

	// relation with order


}
