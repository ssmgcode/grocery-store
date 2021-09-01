class GroceryStoreProduct {
  const GroceryStoreProduct({
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.weight,
  });

  final double price;
  final String name;
  final String description;
  final String image;
  final String weight;
}

const groceryProducts = <GroceryStoreProduct>[
  GroceryStoreProduct(
    price: 8.30,
    name: 'Avocado',
    description:
        'The avocado is a fleshy exotic fruit obtained from the tropical tree of the same name.',
    image: 'assets/avocado.png',
    weight: '500g',
  ),
  GroceryStoreProduct(
    price: 11.00,
    name: 'Banana',
    description: 'It is a good fruit for everyone except diabetics and obese.',
    image: 'assets/banana.png',
    weight: '1000g',
  ),
  GroceryStoreProduct(
    price: 15.40,
    name: 'Mango',
    description:
        'Mango is recognized as one of the 3-4 finest tropical fruits.',
    image: 'assets/mango.png',
    weight: '500g',
  ),
  GroceryStoreProduct(
    price: 4.15,
    name: 'Pineapple',
    description:
        'The tropical pineapple is the fruit obtained from the plant that receives the same name.',
    image: 'assets/pineapple.png',
    weight: '1000g',
  ),
  GroceryStoreProduct(
    price: 2.35,
    name: 'Cherry',
    description:
        'The cherry is a red fruit (drupe type) that comes from the cherry tree.',
    image: 'assets/cherry.png',
    weight: '500g',
  ),
  GroceryStoreProduct(
    price: 6.15,
    name: 'Orange',
    description:
        'The orange is a hesperidium fruit (fleshy pulp between the endocarp and the seeds).',
    image: 'assets/orange.png',
    weight: '1000g',
  ),
];
