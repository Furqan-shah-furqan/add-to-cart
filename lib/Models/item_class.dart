class ItemClass {
  final String imagePath;
  final String name;
  final String price;

  ItemClass({required this.imagePath, required this.name, required this.price});
}

List<ItemClass> _itemList = [
  ItemClass(
    imagePath: "assets/images/image1.jpg",
    name: "name1",
    price: " price1",
  ),
  ItemClass(
    imagePath: "assets/images/image2.jpg",
    name: "name2",
    price: " price2",
  ),
  ItemClass(
    imagePath: "assets/images/image3.jpg",
    name: "name3",
    price: " price3",
  ),
  ItemClass(
    imagePath: "assets/images/image4.jpg",
    name: "name4",
    price: " price4",
  ),
  ItemClass(
    imagePath: "assets/images/image5.jpg",
    name: "name5",
    price: " price5",
  ),
  ItemClass(
    imagePath: "assets/images/image7.jpg",
    name: "name7",
    price: " price7",
  ),
  ItemClass(
    imagePath: "assets/images/image8.jpg",
    name: "name8",
    price: " price8",
  ),
  ItemClass(
    imagePath: "assets/images/image9.jpg",
    name: "name9",
    price: " price9",
  ),
];
List<ItemClass> get itemList => _itemList;
