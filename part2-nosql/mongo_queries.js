// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
{
  "product_id" : "N1045",
  "name": " Sony 42 inch Smart TV",
	"category": "Electronics",
	"Cost" : 50000,
	"Dealer": "Sony Smart TV LTD",
	"Warranty_years": 2,
	"Specifications": {
		"Screen_Size": "42 inch",
		"resolution": "4K UHD",
  },
  "features": ["Smart TV", "HDR10+", "Voice Control"],
  "stock": 30
},

{
  "product_id" : "C2040",
  "name": "Women's Cotton Kurti",
  "category": "Clothing",
  "Cost": 2199,
  "brand": "Libas",
  "sizes_available": ["S", "M", "L", "XL"],
  "colors_available": ["Red", "Orange", "Yellow"],
  "material": "100% Cotton",
  "care_instructions": {
    "wash": "Machine wash only",
    "dry": "Tumble dry low",
  },
  "stock": 15
},

{
  "product_id" : "G3120",
  "name": "Greek Yoghurt",
  "category": "Groceries",
  "Cost": 200,
  "brand": "Milky Mist LTD",
  "expiry_date": ISODate("2024-12-15"),
  "Nutritional_info": {
    "protein": "20g",
    "fat": "15g",
  },
  "ingredients": ["Milk", "Water", "Salt"],
  "packaging": {
    "type": "Carton",
    "Net_weight": "500g",
  },
  "stock": 20
}
]);

// OP2: find() — retrieve Electronics products with price > 20000

db.products.find(
{
category: "Electronics",
Cost: { $gt: 20000 }
}
);


// OP3: find() — retrieve Groceries expiring before 2025-01-01

db.products.find(
{
category: "Groceries",
expiry_date: { $lt: ISODate("2025-01-01") }
}
);


// OP4: updateOne() — add discount_percent to a product

db.products.updateOne(
{ product_id: "N1045" },
{ $set: { discount_percent: 10 } }
);


// OP5: createIndex() — create index on category field

db.products.createIndex({ category: 1 })

// This index improves query performance when filtering products by category
// such as Electronics, Clothing, or Groceries.