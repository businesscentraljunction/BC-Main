# CharAllowed Property in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=34e3efa9-cee7-f011-8544-0022482e2e9d
👉 https://khushburajvisdynamic365.blogspot.com/2026/01/dynamic-business-central-365.html

## 💡 Overview

This example demonstrates how to use the **CharAllowed** property to control user input at the UI level in Dynamics 365 Business Central.

## 🔧 Features

* Restrict characters allowed in a field
* Improve data quality at entry level
* Reduce need for complex validation logic
* Support multiple character range definitions
* Prevent invalid user inputs

## 📂 Project Structure

* src/tableextension
* src/pageextension
* AL validation example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open Customer Card page
5. Enter values in fields and observe restrictions

## ⚙️ Key Notes

* CharAllowed is a UI-level validation property
* Works on both Table and Page fields
* Validation happens only during user interaction
* Does not apply to values set via AL code
* Supports character ranges and specific value restrictions
* Can define multiple allowed ranges

## 🧠 Concept Insight

* Helps enforce data consistency at input stage 
* Should not be the only validation mechanism
* Best used for codes, identifiers, and controlled inputs
* Improves user experience by preventing invalid entries early
