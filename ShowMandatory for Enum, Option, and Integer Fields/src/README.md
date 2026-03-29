# ShowMandatory Not Working? Use BlankZero in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=33fcd283-72cf-f011-bbd3-7c1e52fdfc34
👉 https://khushburajvisdynamic365.blogspot.com/2025/12/dynamics-365-business-central.html

## 💡 Overview

This example explains why the **ShowMandatory** property does not always work as expected for numeric, enum, and option fields in Dynamics 365 Business Central—and how to fix it using **BlankZero**.

## 🔧 Features

* Display mandatory indicator (red asterisk) correctly
* Handle Enum, Option, and Integer fields properly
* Improve data validation experience
* Ensure users select meaningful values

## 📂 Project Structure

* src/tableextension
* src/pageextension
* src/enum
* AL validation example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open Customer Card page
5. Observe mandatory indicators on fields
6. Validate behavior when fields are empty or default

## ⚙️ Key Notes

* ShowMandatory highlights required fields visually
* Enum, Option, and Integer fields always have default values
* System does not treat default values as “blank”
* Use BlankZero to treat default values as empty
* Combine ShowMandatory + BlankZero for correct behavior
* Enum should include a blank/default value for best results

## 🧠 Concept Insight

* Improves user guidance and reduces incorrect entries
* Ensures mandatory fields behave consistently across data types
* Helps build more intuitive and reliable forms
* Important for real-world implementations where validation matters
