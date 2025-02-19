# E-commerce API by Deep KALYAN, Jules CAPEL and Moustapha ABDI ALI

## API Routes

### Product Management

- **POST** `/api/products` - Create a new product.
- **GET** `/api/products` - Retrieve all products.
- **GET** `/api/products/:id` - Retrieve a single product by ID.
- **PUT** `/api/products/:id` - Update a product by ID.
- **DELETE** `/api/products/:id` - Delete a product by ID.

### Customer Management

- **POST** `/api/customers` - Create a new customer.
- **GET** `/api/customers` - Retrieve all customers.

### Order Management

- **POST** `/api/orders` - Create a new order.
- **GET** `/api/orders/:id` - Retrieve an order by ID.
- **PUT** `/api/orders/:id` - Update an order by ID.
- **DELETE** `/api/orders/:id` - Delete an order by ID.
- **POST** `/api/orders/direct/:customerId` - Place an order for an existing customer.

## Running the Project with Podman

Run the following commands:

```bash
chmod +x run.sh
./run.sh
```
