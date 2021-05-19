class CatalogModel {
  static final item = [
    Item(
        id: 12,
        name: "i-Phone 12 Max Pro ",
        desc:
            "Apple iPhone 12 Pro Max has a 6.7 (17.02 cm) display, which means bigger screen for enjoying movies and games on the go, though might not be ergonomic or pocketable. It has a 1284 x 2778 pixels resolution, which results in pixel density of 19.5:9 and offers ",
        price: 1000,
        color: "#000000",
        image:
            "https://www.91-img.com/gallery_images_uploads/e/d/ed5c062684de8f5ff3e0a83dc3faaf808698865b.JPG?tr=h-550,w-0,c-at_max"),
    Item(
        id: 12,
        name: "green screen",
        desc: " ajsdfkajt fjdjsa ",
        price: 1000,
        color: "#000000",
        image:
            "https://www.91-img.com/gallery_images_uploads/e/d/ed5c062684de8f5ff3e0a83dc3faaf808698865b.JPG?tr=h-550,w-0,c-at_max")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
