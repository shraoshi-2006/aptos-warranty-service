# Aptos Warranty & Service History Smart Contract

This Move smart contract provides a simple **blockchain-based warranty and service history system** on the Aptos blockchain.  
It allows product owners to **register a product with warranty details** and **record service history** over time.  

---

## 📂 Project Structure
warranty_service/
├─ Move.toml # Project config (update with your Aptos account address)
├─ sources/
│ └─ WarrantyService.move # Smart contract source code
└─README.md

---

## ⚡ Features
- Register a product with a **unique product ID** and **warranty expiry date**.  
- Add **service records** as timestamps for maintenance history.  
- Warranty & service data is stored **on-chain** under the product owner's address.  

---

## Functions
- `register_product` → Register a product with warranty expiry.
- `add_service` → Add a service record (timestamp).

## Usage
1. Put the code in `sources/WarrantyService.move`
2. Update your account address in `Move.toml`
3. Run:
   ```bash
   aptos move compile
   aptos move publish --assume-yes
## 🛠 Setup and Deployment
git clone https://github.com/shraoshi-2006/aptos-warranty-service.git

