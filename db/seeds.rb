Product.create(title: "Product 1", handle: "product")
product = Product.create(title: "Product 2")

Variant.create(title: "Variant 1", product: product)
Variant.create(title: "Variant 2", product: product)