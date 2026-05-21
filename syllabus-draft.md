# xAcademy Blockchain Course Syllabus Draft

This course is designed to span 5 weeks, with 2 lessons scheduled per week, totaling 10 lessons. The final three lessons are dedicated to project-based learning and support. Course Schedule (10 Lessons)

Week 1: Fundamentals

* **Lesson 1: Blockchain Overview**  
  * Introduction to blockchain technology, decentralized systems, and core concepts.  
  * Consensus, SPoS, validators, sharding.  
  * Various token models, native tokens.  
  * Smart contract concepts.
  * Hands-on: explore the Explorer, play with the wallet 


* **Lesson 2: Smart Contract Introduction & Basic Tooling**  
  * Start a contract from a template; build and test it locally.  
  * Investigate the build output: bytecode, ABI, and the assembly.  
  * Explore the project structure: contract, tests, interaction tools.  
  * Deploy and interact on Devnet using scripts and the Rust interactor.  
  * Hands-on: deploy with your own wallet, verify on Explorer.

Week 2: Transactions

* **Lesson 3: DeFi & Transactions**  
  * Hands-on: using the DEX.  
    1. Start with the xExchange interface  
    2. Analyze the transactions  
    3. Send them manually  
    4. Send them programmatically (we will encourage TypeScript, because of the web focus of this course, but other languages are also welcome). 

* **Lesson 4: Your First dApp Tutorial (Part 1: Setup and Contract Deployment)**  
  * Setting up the required developer environment (Rust, `multiversx-sc-meta`, Node.js, and `pnpm`).  
  * Creating a PEM wallet and funding it with test EGLD from the Devnet Wallet.  
  * Deploying a sample Rust smart contract, which is compiled to a Web Assembly (WASM) file.

Week 3: Development

* **Lesson 5: Your First dApp Tutorial (Part 2: Frontend Integration and Interaction)**  
  * Following the official MultiversX tutorial to complete building the decentralized application (dApp).  
  * Cloning and configuring the dApp frontend template with the new smart contract address.  
  * Interacting with the live application by logging in with the PEM wallet to deposit and subsequently claim funds after a lock duration ("ping" and "pong").  

* **Lesson 6: Smart Contract Tutorial**  
  * An introduction to writing, compiling, and testing a basic smart contract in Rust for the MultiversX Virtual Machine.

Week 4: Advanced Topics & Project Workshop

* **Lesson 7: Microservices and APIs**  
  * Exploring how to integrate and scale dApps using MultiversX APIs and microservices for data querying, indexing, and off-chain computation.  
* **Lesson 8: Project Help & Workshop 1**  
  * Dedicated session for students to define their blockchain project concepts and receive initial guidance and technical feedback.

Week 5: Project Support

* **Lesson 9: Project Help & Workshop 2**  
  * Focused session for addressing implementation challenges and debugging code related to student projects.  
* **Lesson 10: Project Help & Workshop 3**  
  * Final consultation session on project completion, deployment readiness, and next steps for open-sourcing or launching their applications.

