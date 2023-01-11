Steps to replicate the issue:

- Prepare DB:
    ```
    rails db:create
    rails db:migrate
    rails db:seed:replant
    ```
- ```rails s```
- Go to http://localhost:3000/products/2: 
  - Change handle to ```product``` so that uniqueness validation fails
  - Press update product
  - Both Variant inputs title will be empty (no translation). 
  - The Product input title still shows the correct translation. 
  - Expecting that both variants should "hold on" to their value, e.g. Variant 1, Variant 2, when validation fails
  
- A refresh of the page shows that translations are still "there"