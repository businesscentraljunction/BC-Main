# AnalysisModeEnabled Property in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=50cf47a7-85ec-f011-8544-7ced8d1e92e2
👉 https://khushburajvisdynamic365.blogspot.com/2026/01/dynamic-business-central-365_7.html

## 💡 Overview

This example demonstrates how to use the **AnalysisModeEnabled** property to control whether users can analyze data directly on a page in Dynamics 365 Business Central.

## 🔧 Features

* Enable built-in data analysis on pages
* Allow grouping, filtering, and sorting
* Support quick insights without exporting data
* Control visibility of Analyze toggle
* Improve user decision-making experience

## 📂 Project Structure

* src/page
* AL page configuration example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open the target list page
5. Toggle Analyze mode (if enabled)
6. Explore grouping and filtering options

## ⚙️ Key Notes

* Applies only to Page objects
* Available from runtime version 12.0
* Default value is true
* true → Enables analysis mode
* false → Disables analysis mode
* Works best on list pages

## 🧠 Concept Insight

* Enables self-service analytics directly in Business Central
* Reduces dependency on Excel and reports
* Should be enabled for data review pages
* Should be disabled for transactional or sensitive pages
* Helps balance usability and control in application design

## 📌 When to Use

**Enable Analysis Mode when:**

* Page is used for data review
* Users need quick insights
* Page acts like a lightweight report

**Disable Analysis Mode when:**

* Page is used for data entry or workflows
* Data is incomplete or intermediate
* You want controlled reporting only
