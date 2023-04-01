class ProductModelClass {
  String? title;
  String? subTitle;
  String? imgPath;
  String? price;
  List<String>? subImages;
  List<String>? imagesTitle;
  ProductModelClass(
      {this.title,
      this.subTitle,
      this.imgPath,
      this.price,
      this.subImages,
      this.imagesTitle});
}

List<ProductModelClass> productList = [
  ProductModelClass(
      title: "5 T-Shirt Dry and Cleaning",
      subTitle: "You will get \$10 off buy this package",
      price: "\$80",
      imgPath: "assets/images/1.png",
      subImages: [
        "assets/images/11.png",
        "assets/images/33.png",
        "assets/images/112.png",
      ],
      imagesTitle: [
        "Wash ",
        "Dry Clean",
        "Iron"
      ]),
  ProductModelClass(
      title: "Shirt Jeans Dry Clean",
      subTitle: "You will get \$10 off buy this package",
      price: "\$40",
      imgPath: "assets/images/2.png",
      subImages: [
        "assets/images/11.png",
        "assets/images/33.png",
        "assets/images/112.png",
      ],
      imagesTitle: [
        "Wash ",
        "Dry Clean",
        "Iron"
      ]),
  ProductModelClass(
      title: "5 Jeans Dry and Cleaning",
      subTitle: "You will get \$10 off buy this package",
      price: "\$60",
      imgPath: "assets/images/3.png",
      subImages: [
        "assets/images/11.png",
        "assets/images/33.png",
        "assets/images/112.png",
      ],
      imagesTitle: [
        "Wash ",
        "Dry Clean",
        "Iron"
      ]),
  ProductModelClass(
      title: "2 Uniform Dry and Clean",
      subTitle: "You will get \$10 off buy this package",
      price: "\$50",
      imgPath: "assets/images/4.png",
      subImages: [
        "assets/images/11.png",
        "assets/images/33.png",
        "assets/images/112.png",
      ],
      imagesTitle: [
        "Wash ",
        "Dry Clean",
        "Iron"
      ]),
  ProductModelClass(
      title: "5 Linen Dry and Clean",
      subTitle: "You will get \$10 off buy this package",
      price: "\$80",
      imgPath: "assets/images/5.png",
      subImages: [
        "assets/images/11.png",
        "assets/images/33.png",
        "assets/images/112.png",
      ],
      imagesTitle: [
        "Wash ",
        "Dry Clean",
        "Iron"
      ])
];
