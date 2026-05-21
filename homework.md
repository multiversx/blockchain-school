# Homework

## Assignment 1: Send EGLD on Devnet

Send a small amount of EGLD on the **MultiversX Devnet** to the following address:

```
erd10c03rvj9ptfsqjmek4vtdewhgd3wtvyghzu82qujkqd4x4rnhngssjkyj6
```

**Requirements:**
- Network: Devnet (`https://devnet-api.multiversx.com`)
- Amount: any small amount (e.g. 0.1 EGLD)
- **Data field:** add your name, optionally a message

**Tips:**
- You can use the [Devnet Web Wallet](https://devnet-wallet.multiversx.com) or `mxpy` CLI
- Make sure your wallet is funded — use the [Devnet Wallet](https://devnet-wallet.multiversx.com/faucet) if needed

**Submission:**  
The transaction itself is the submission — no need to share anything separately.

---

## Assignment 2: Deploy an Adder Contract

Deploy an `adder` contract using **your own wallet** on Devnet and make the stored sum equal the number of letters in your name.
*(e.g. "Alice" → call `add` with 5, or five calls of `add` with 1)*

**Steps:**
1. Generate a wallet: `sc-meta wallet new --format pem --outfile my-wallet.pem`
2. Fund it from the [Devnet Wallet](https://devnet-wallet.multiversx.com/faucet)
3. Deploy using snippets or the interactor
4. Call `add` until `sum` returns the right number

**Submission:**  
Post your contract address in the Telegram group or Google Classroom.  
We will inspect it together in the explorer next lesson.
