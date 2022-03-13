class Food {
  String? imgUrl;
  String? desc;
  String? name;
  String? waitTIme;
  num? score;
  String? cal;
  num? price;
  num? quantity;
  List<Map<String, String>>? ingredients;
  String? about;
  bool highLight;
  Food(
      {this.imgUrl,
      this.desc,
      this.name,
      this.waitTIme,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      this.highLight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        imgUrl: 'assets/images/dish1.png',
        desc: 'No1. in sales',
        name: 'Soba Soup',
        waitTIme: '50min',
        score: 4.8,
        cal: '325 Kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',
        highLight: true,
      ),
      Food(
        imgUrl: 'assets/images/dish2.png',
        desc: 'No1. in sales',
        name: 'Sei Ua Samun Phrai',
        waitTIme: '50min',
        score: 4.8,
        cal: '325 Kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            ' A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta\'s Talat Market.',
        highLight: false,
      ),
      Food(
        imgUrl: 'assets/images/dish3.png',
        desc: 'No1. in sales',
        name: 'Ratatoullie Pasta',
        waitTIme: '50min',
        score: 4.8,
        cal: '325 Kcal',
        price: 12,
        quantity: 1,
        ingredients: [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
          {'Noodle': 'assets/images/ingre1.png'},
        ],
        about:
            'A ratatouille is, by its very definition, a combination of vegetables fried and then simmered in a tomato sauce.',
        highLight: false,
      )
    ];
  }

  static List<Food>? generatePopularFood() {
    return [
      Food(
          imgUrl: 'assets/images/dish4.png',
          desc: 'Most Popular',
          name: 'Tomato Chicken',
          waitTIme: '50min',
          score: 4.8,
          cal: '325 Kcal',
          price: 12,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'Noodle': 'assets/images/ingre1.png'},
          ],
          about:
              'Tomato Chicken Curry (Tamatar Murgh) is an Indian chicken curry cooked with lots of fresh tomatoes and mild spices. It goes very well with Indian bread or steamed rice.',
          highLight: false),
      Food(
          imgUrl: 'assets/images/dish1.png',
          desc: 'Most Popular',
          name: 'Soba Soup',
          waitTIme: '50min',
          score: 4.8,
          cal: '325 Kcal',
          price: 12,
          quantity: 1,
          ingredients: [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
            {'Noodle': 'assets/images/ingre1.png'},
          ],
          about:
              'Soba Noodle Soup, or Toshikoshi Soba, symbolizes good luck in the new year and is traditionally eaten by the Japanese on the 31st of December.',
          highLight: false),
    ];
  }
}
