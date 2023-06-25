class Product{
   final String name;
   final String price;
   final int quantity;
   final String description;
   final String manufacturer;
   final List<Images> images;

   Product(this.name, this.price, this.quantity, this.description,
       this.manufacturer, this.images);
}

class Images{
   final String image;

   Images(this.image);
}

