# Show / Hide Field Based on Company in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=c8a42db5-ebed-ef11-be20-7c1e52465fa1
👉 https://khushburajvisdynamic365.blogspot.com/2025/02/dynamic-visibility-of-controls-company.html

## 💡 Overview

This example demonstrates how to control field or section visibility based on the current company in Dynamics 365 Business Central.

## 🔧 Features

* Show fields for specific companies
* Hide fields for other companies
* Dynamic visibility using page logic

## 📂 Project Structure

* src/pageextension
* AL extension example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open Sales Order page
5. Verify visibility based on company

## ⚙️ Key Notes

* Uses `Visible` property with Boolean variable
* Logic executed in `OnOpenPage` trigger
* Company name controls visibility behavior
