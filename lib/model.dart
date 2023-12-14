class Model
{
  String? image;
  String? text;


  Model(this.image,this.text);
}

List lis = modelData.map((a) => Model(a["image"], a["text"])).toList();

var modelData = [
  {"image":"assets/he.jpg","text":"hello"},
  {"image":"assets/ip.jpg","text":"hello2"},
  {"image":"assets/he.jpg","text":"hello"},
  {"image":"assets/he.jpg","text":"hello"},
  {"image":"assets/he.jpg","text":"hello"},
];
class Model1
{
  String? image;
  String? text;


  Model1(this.image,this.text);
}

List lis1 = model1Data.map((b) => Model1(b["image"], b["text"])).toList();

var model1Data = [
  {"image":"assets/he.jpg","text":"covai"},
  {"image":"assets/ip.jpg","text":"avinashi"},
  {"image":"assets/wa.jpg","text":"mumbai"},
  {"image":"assets/wa1.jpg","text":"patna"},
  {"image":"assets/wa2.jpg","text":"goa"},
  {"image":"assets/w3.jpg","text":"pondi"},
  {"image":"assets/w4.jpg","text":"india"},
];



