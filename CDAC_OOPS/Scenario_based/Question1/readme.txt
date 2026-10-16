# Dynamic Grid Thermal Risk Calculator

An enterprise-grade Java application designed to analyze thermal sensor grids within data centers to detect critical overheating risks. This project demonstrates advanced **2D data structures (`ArrayList<ArrayList<Integer>>`)**, robust **nested control flows**, and standard **modular package architecture** in Java.

---

## 🛠️ Concepts & Implementation Overview

### 1. Dynamic Matrix Modeling
Unlike rigid primitives (`int[][]`), this solution utilizes nested dynamic arrays (`ArrayList<ArrayList<Integer>>`). This provides:
* **Dynamic Scale:** The capacity adjusts dynamically to handle diverse server grid variations.
* **O(1) Access Efficiency:** Contiguous memory lookups enable swift element analysis via `.get(row).get(col)`.

### 2. Multi-Pass Grid Evaluation
To determine systemic hardware failure vectors without data leakage, a precise **two-pass evaluation strategy** was implemented:
* **Pass 1:** Evaluates the entire coordinate matrix to isolate the maximum ambient sensor temperature.
* **Pass 2:** Identifies maximum stress loci and computes their mathematical grid cross-product (`row * column`).

### 3. Production Directory Architecture
The solution enforces a strict **Reverse Domain Name Service (DNS)** packaging rule, segmenting processing engines from application executors to safeguard encapsulation boundaries.
* `com.datacenter.security` — Contains the internal calculations and algorithmic engines.
* `com.datacenter.app` — Acts as the public orchestration layer handling data routing.

---

## 📋 The Problem Challenge

### Scenario: Data Center Thermal Grid
A sensitive server room is represented as an **N × M grid** of temperature sensors. High temperatures signal potential hardware degradation. To prevent critical outages, the system computes a total **Thermal Risk Score** using these criteria:
1. Identify the maximum temperature value present across the entire grid.
2. Find every sensor matching this specific maximum temperature.
3. For each max-temperature sensor, calculate its structural risk coefficient by multiplying its 0-indexed row number by its 0-indexed column number (`row * col`).
4. Aggregate all computed coefficients to output the final absolute **Thermal Risk Score**.

### Sample Test Vectors
#### Test Case 1 (Visible)
* **Input Parameters:** `N = 3, M = 3`
* **Grid Topography:**
  ```text
  [ 10, 20, 30 ]
  [ 55, 40, 55 ]
  [ 12, 23, 34 ]
  ```
* **Expected Output Summary:** Max value isolated is `55` at coordinates `(1,0)` and `(1,2)`. 
* **Calculated Risk:** `(1 * 0) + (1 * 2) = 2`

#### Edge Cases Handled
* Grid boundaries where the maximum thermal event resides exactly at index origin `(0, 0)`.
* Uniform grid distribution where all nodes display identical critical values.
* Rectangular matrices where `N != M`.

---

## 💻 Compiling & Running the System

Execute the commands below from the root of your source directory to compile the modular package tree and run the application:

```bash
# 1. Generate directory boundaries and compile byte-code structures
javac -d . com/datacenter/security/ThermalCalc.java com/datacenter/app/Main.java

# 2. Execute the application via its Fully Qualified Name (FQN)
java com.datacenter.app.Main
```
