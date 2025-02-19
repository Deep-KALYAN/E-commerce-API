#!/bin/bash

# Test Product Endpoints
echo "Testing Product Endpoints..."
curl -X POST --json '{"name": "Laptop", "price": 999.99, "description": "High-end gaming laptop"}' http://localhost:5201/api/products
curl http://localhost:5201/api/products
curl http://localhost:5201/api/products/1
curl -X PUT --json '{"name": "Updated Laptop", "price": 1099.99}' http://localhost:5201/api/products/1
curl -X DELETE http://localhost:5201/api/products/1

# Test Customer Endpoints
echo "Testing Customer Endpoints..."
curl -X POST --json '{"name": "John Doe", "email": "john@example.com"}' http://localhost:5201/api/customers
curl http://localhost:5201/api/customers

# Test Order Endpoints
echo "Testing Order Endpoints..."
curl -X POST --json '{"customer": "65a42b1fcf6a1c3d9b123456", "products": ["65a42b1fcf6a1c3d9b654321"]}' http://localhost:5201/api/orders
curl http://localhost:5201/api/orders/1
curl -X PUT --json '{"products": ["65a42b1fcf6a1c3d9b654321", "65a42b1fcf6a1c3d9b654322"]}' http://localhost:5201/api/orders/1
curl -X DELETE http://localhost:5201/api/orders/1
curl -X POST --json '{"products": ["65a42b1fcf6a1c3d9b654321"]}' http://localhost:5201/api/orders/direct/65a42b1fcf6a1c3d9b123456