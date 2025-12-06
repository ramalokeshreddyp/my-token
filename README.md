# MyToken (MTK) — ERC-20 Token Project

This repository contains an ERC-20 token implementation written in Solidity and deployed using Remix IDE.  
The project demonstrates the core principles behind fungible tokens on the Ethereum blockchain, including transfers, allowances, and event emissions.

---

## 🔗 Token Details

| Property | Value |
|---------|--------|
| **Name** | MyToken |
| **Symbol** | MTK |
| **Decimals** | 18 |
| **Total Supply** | 1,000,000 MTK (1 million tokens) |
| **Initial Mint** | Entire supply minted to deployer |

**On-chain `totalSupply` value (due to 18 decimals):**
```
1000000000000000000000000
```

---

## 📘 What is an ERC-20 Token?

ERC-20 is the official Ethereum standard for fungible (interchangeable) tokens.  
It defines a consistent token behavior that enables compatibility with wallets, exchanges, decentralized apps, and other smart contracts.

### Core ERC-20 Behaviors
- Transfer tokens between addresses  
- Track balances  
- Approve another address to spend tokens  
- Delegated transfers using `transferFrom`  
- Emit `Transfer` and `Approval` events  

---

## ✨ Implemented Features

### ✔ Balance Tracking
- `balanceOf(address)` — returns token balance

### ✔ Direct Transfer
- `transfer(address to, uint256 amount)` — moves tokens from sender to recipient

### ✔ Allowance System
- `approve(address spender, uint256 amount)` — allows spender to use tokens  
- `allowance(address owner, address spender)` — checks approved amount

### ✔ Delegated Transfer
- `transferFrom(address from, address to, uint256 amount)` — spends approved tokens

### ✔ Events
- `Transfer` — emitted on token movement  
- `Approval` — emitted when allowance is set

### ✔ Validation
- Prevent transfers to zero address  
- Check sufficient balance  
- Check sufficient allowance  

---

## 🚀 Deployment Instructions (Remix IDE)

### 1. Open Remix
https://remix.ethereum.org/

### 2. Add Contract
Create `/contracts/MyToken.sol` and paste the Solidity code.

### 3. Compile
- Compiler: **Solidity 0.8.x**
- Click **Compile MyToken.sol**

### 4. Deploy
- Environment: **Remix VM (Prague)**
- Initial supply input:
```
1000000000000000000000000
```
- Click **Deploy**

### 5. Interact Using Remix
Test functions like:
- `name()`, `symbol()`, `decimals()`, `totalSupply()`
- `transfer()`
- `approve()`
- `transferFrom()`
- `allowance()`
- `balanceOf()`

---

## 📝 Usage Examples

### Check Balance
```
balanceOf(0xYourAddress)
```

### Transfer 1 MTK
```
transfer(0xRecipient, 1000000000000000000)
```

### Approve 5 MTK
```
approve(0xSpender, 5000000000000000000)
```

### Spender Transfers 2 MTK
```
transferFrom(0xOwner, 0xReceiver, 2000000000000000000)
```

---

## 🧪 Testing Performed

### Metadata Verification
- Name, Symbol, Decimals, Total Supply

### Transfer Test
- Sent **1 MTK** from Account A → B

### Approval Test
- Approved Account B to spend **5 MTK**

### transferFrom Test
- B transferred **2 MTK** from A → C

### Edge Case Handling
- Zero-address transfer → reverted  
- Insufficient balance → reverted  
- Insufficient allowance → reverted  

---

## 📸 Screenshots

Screenshots stored in `/screenshots/`:
- `compilation.png`
- `deployment.png`
- `token-info.png`
- `transfer-test.png`
- `events.png`

---

## 📚 What I Learned

- Internal functioning of ERC-20 tokens  
- How allowances and delegated transfers work  
- Importance of blockchain events for transparency  
- How to compile, deploy, and test contracts in Remix  
- Best practices like validations and event logging  

---

## 📂 Project Structure
```
my-token/
├── contracts/
│   └── MyToken.sol
├── screenshots/
│   ├── compilation.png
│   ├── deployment.png
│   ├── token-info.png
│   ├── transfer-test.png
│   └── events.png
└── README.md
```

---

## ✅ Submission Ready

This project includes:
- Fully working ERC-20 token  
- Required screenshots  
- Complete documentation  
- Successful testing  
- Clean, readable code and professional README  
