# 📘 Bison (Yacc) Practice Tasks for Compiler Construction

## 🔰 Beginner Tasks (Syntax Parsing)

1. **Simple Calculator (Integers Only)**
   - Supports `+`, `-`, `*`, `/` and `()` 
   - Input: `3 + 4 * (2 - 1)`
   - Output: Result: `7`

2. **Detect Balanced Parentheses**
   - Input: A string of brackets like `(()(()))`
   - Output: Valid/Invalid based on matching

3. **Validate Arithmetic Expressions**
   - Input: Expressions like `5 + 2 *`
   - Output: Syntax Error / Valid

4. **Check for Valid Assignment Statements**
   - Grammar for: `id = expr;`
   - Input: `x = a + 3 * 5;`
   - Output: Valid / Invalid

---

## ⚙️ Intermediate Tasks (Expression Evaluation & Grammar Rules)

5. **Enhanced Calculator (with variables and floats)**
   - Input: `a = 5.5; b = a * 2;`
   - Output:
     ```
     a = 5.5
     b = 11.0
     ```

6. **Parse Relational Expressions**
   - Input: `x > y && z < 5`
   - Output: Parse tree or valid/invalid check

7. **Detect Valid `if-else` Statements**
   - Grammar for:
     ```
     if (condition)
         statement;
     else
         statement;
     ```
   - Output: Valid / Invalid

8. **Simple Boolean Expression Evaluator**
   - Input: `1 && 0 || 1`
   - Output: Result: `1`

---

## 🧠 Advanced / Exam-Worthy Tasks

9. **Syntax Analyzer for a Tiny Language**
   - Support:
     - Variable declarations
     - Assignment
     - Arithmetic operations
     - `if`, `while` control structures
   - Output: Parse success or syntax error

10. **Create Parse Tree / Derivation Output**
    - Print step-by-step reduction of input

11. **Support Multiple Data Types**
    - Handle `int`, `float`, `char` declarations and expressions

---

## 🧪 Mini Project Task (if allowed)

12. **Mini Interpreter (With Symbol Table)**
   - Variable storage using symbol table
   - Evaluate statements like:
     ```c
     int a = 5;
     int b = a + 3;
     print(b); // 8
     ```

---
