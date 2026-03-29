# AssistEdit Property in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=e9cbddd8-4eed-f011-8544-000d3a110526
👉 https://khushburajvisdynamic365.blogspot.com/2026/01/dynamic-business-central-365_8.html

## 💡 Overview

This example demonstrates how to use the **AssistEdit** property to provide contextual assistance, automation, and guided input directly within page fields in Dynamics 365 Business Central.

## 🔧 Features

* Add AssistEdit (⋯) button to page fields
* Trigger custom logic on user interaction
* Generate or validate field values dynamically
* Improve usability with guided input
* Reduce manual data entry effort

## 📂 Project Structure

* src/tableextension
* src/pageextension
* AL UI interaction example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open Customer Card page
5. Click AssistEdit (⋯) button on field
6. Observe automated value generation

## ⚙️ Key Notes

* Applies to Page Field level
* Default value is false
* Must be enabled explicitly (AssistEdit = true)
* Uses OnAssistEdit trigger for custom logic
* Ideal for generating reference numbers or lookup values
* Improves user experience without adding extra UI elements

## 🧠 Concept Insight

* Enables contextual, user-driven automation
* Reduces dependency on manual inputs
* Enhances data consistency and accuracy
* Commonly used for number generation, lookups, and validations
