# 🧠 RF Signal Log Analyzer

A Haskell-based command-line tool that parses CSV log files of RF signals, calculates packet loss, and reports average RSSI for diagnostic purposes.

---

## 🔍 Why This Project Matters

This project demonstrates essential skills in Haskell development including:

- CSV parsing with type-safe decoding
- Functional data filtering and aggregation
- Command-line file handling
- Modular project organization and reusable data types

---

## 🛠️ Tech Stack

- **Language:** Haskell
- **Tools:** GHC, Cabal, VSCode
- **Concepts:** Type classes, Generic derivation, Functional transformations, IO operations

---

## 🚀 How to Run

**Option 1:** Using GHC directly

```
Compile using GHC
ghc -o analyzer Main.hs Analyzer.hs Types.hs

Run with default sample file
./analyzer

Or run with a custom CSV file
./analyzer path/to/log.csv
```

**Option 2:** Using Cabal

```
Initialize the project if needed
cabal init  # (follow prompts if not yet initialized)

Build the project
cabal build

Run the executable (adjust name if needed)
cabal run analyzer -- path/to/log.csv
```

📌 _Requires GHC and cassava package (cabal install cassava if not included)_

---

## 📘 What I Learned

- Parsing CSV with Haskell’s `cassava` library using `FromNamedRecord`
- Structuring a Haskell project across multiple modules
- Aggregating and formatting statistical output (e.g., average RSSI)
- Handling command-line arguments and default behavior
- Clean separation of types, logic, and main execution flow

---

## 📁 File Structure

```
rf-signal-analyzer/
|   app/
|   ├── Main.hs         # CLI entry point, CSV decoding and dispatch
|   ├── Analyzer.hs     # Analysis logic and formatted output
|   └── Types.hs        # Data type definitions and CSV parsing instance
├── rf-analyzer.cabal # Build file
├── sample_logs.csv   # Sample log files used for testing
└── README.md
```

---

## 🧑‍💻 Author

**Dalton Mosley**
[GitHub](https://github.com/DaltonMo) • [LinkedIn](https://www.linkedin.com/in/dalton-lee-mosley/)
