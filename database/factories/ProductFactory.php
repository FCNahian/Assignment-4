<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Support\Facades\File;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition()
    {
        $product_id = $this->generateProductId();
        File::copy(public_path('product/product_sample_' . $this->faker->numberBetween(1, 5) . '.png'), public_path('product/' . $product_id . '.png'));

        return [
            'product_id' => $product_id, // A unique product identifier
            'name' => $this->generateProductName(), // Random product name
            'description' => $this->generateProductDescription(), // Random product description
            'price' => $this->faker->randomFloat(2, 10, 1000), // Random price between 10 and 1000
            'stock' => $this->faker->numberBetween(1, 100), // Random stock value between 1 and 100
            'image' => 'product/' . $product_id . '.png', // Random image URL
        ];
    }

    private function generateProductId()
    {
        $categories = [
            'Laptop' => 'LAP',
            'Smartphone' => 'SMP',
            'Tablet' => 'TAB',
            'Headphones' => 'HP',
            'Watch' => 'WCH',
            'Camera' => 'CAM',
            'Keyboard' => 'KB',
            'Monitor' => 'MON',
            'Speaker' => 'SPK',
            'Charger' => 'CHG'
        ];

        $category = $this->faker->randomElement(array_keys($categories));
        $categoryCode = $categories[$category];

        $brands = ['Apple', 'Samsung', 'Sony', 'Dell', 'HP', 'Bose', 'Canon', 'LG', 'Asus', 'Xiaomi'];
        $brand = $this->faker->randomElement($brands);
        $brandCode = strtoupper(substr($brand, 0, 3)); // Use first 3 letters of the brand

        $uniqueNumber = str_pad($this->faker->unique()->randomNumber(5), 5, '0', STR_PAD_LEFT);

        return $categoryCode . '-' . $brandCode . '-' . $uniqueNumber;
    }

    private function generateProductName()
    {
        $categories = ['Laptop', 'Smartphone', 'Tablet', 'Headphones', 'Watch', 'Camera', 'Keyboard', 'Monitor', 'Speaker', 'Charger'];
        $brands = ['Apple', 'Samsung', 'Sony', 'Dell', 'HP', 'Bose', 'Canon', 'LG', 'Asus', 'Xiaomi'];
        $features = ['Pro', 'Max', 'Ultra', 'Plus', 'Edition', '2023', 'Elite', 'X'];

        return $this->faker->randomElement($brands) . ' ' .
            $this->faker->randomElement($categories) . ' ' .
            $this->faker->randomElement($features);
    }

    private function generateProductDescription()
    {
        $descriptions = [
            'Laptop' => 'This powerful laptop features a high-performance processor and a stunning display, ideal for work and play.',
            'Smartphone' => 'Experience the next generation of smartphones with cutting-edge technology and a sleek design.',
            'Tablet' => 'Stay connected and productive with this lightweight tablet that offers incredible performance on the go.',
            'Headphones' => 'Immerse yourself in high-quality sound with these noise-cancelling, wireless headphones.',
            'Watch' => 'Track your fitness goals and stay connected with this stylish smartwatch.',
            'Camera' => 'Capture every moment with this professional-grade camera that features high resolution and advanced zoom.',
            'Keyboard' => 'A comfortable and responsive keyboard designed for both work and gaming.',
            'Monitor' => 'This high-definition monitor offers vibrant colors and crisp visuals, perfect for gaming and productivity.',
            'Speaker' => 'Fill your room with rich, clear sound with this portable Bluetooth speaker.',
            'Charger' => 'Keep your devices powered with this fast-charging, universal charger.',
        ];

        $category = $this->faker->randomElement(['Laptop', 'Smartphone', 'Tablet', 'Headphones', 'Watch', 'Camera', 'Keyboard', 'Monitor', 'Speaker', 'Charger']);
        return $descriptions[$category];
    }
}
