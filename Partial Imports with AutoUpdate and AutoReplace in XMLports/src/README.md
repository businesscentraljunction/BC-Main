# AutoUpdate vs AutoReplace in XMLport (Business Central)

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=e327fed1-97e8-f011-8544-7c1e52fdfc34
👉 https://khushburajvisdynamic365.blogspot.com/2026/01/dynamic-business-central-365-handling.html

## 💡 Overview

This example demonstrates the difference between **AutoUpdate** and **AutoReplace** properties in XMLport during data import in Dynamics 365 Business Central.

## 🔧 Features

* Import partial data using AutoUpdate
* Replace full records using AutoReplace
* Understand behavior of missing and empty fields
* Compare update vs replace scenarios
* Improve data import strategies

## 📂 Project Structure

* src/table
* src/page
* src/xmlport
* AL data import example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open demo list page
5. Run import actions
6. Upload import file
7. Observe data behavior after import

## ⚙️ Key Notes

* AutoUpdate updates only fields present in import file
* AutoReplace replaces entire record
* Missing fields remain unchanged in AutoUpdate
* Missing fields are reset in AutoReplace
* AutoReplace should be used with caution
* Always test imports in sandbox before production

## 🧠 Concept Insight

* Helps control how Business Central handles imported data 
* AutoUpdate is best for partial updates (e.g., price updates)
* AutoReplace is suitable only for complete datasets
* Choosing the wrong property can lead to data loss
