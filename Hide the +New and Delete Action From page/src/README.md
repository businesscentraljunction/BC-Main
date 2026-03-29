# Disable New and Delete Actions on Pages in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=0434ed40-158b-f011-b4cc-000d3a13d3fe
👉 https://khushburajvisdynamic365.blogspot.com/2025/09/how-to-hide-new-and-delete-action.html

## 💡 Overview

This example demonstrates how to restrict users from creating or deleting records on pages in Dynamics 365 Business Central.

## 🔧 Features

* Disable “+ New” action
* Prevent record deletion
* Allow users to view and edit existing records

## 📂 Project Structure

* src/pageextension
* AL extension example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open Customer page
5. Verify New and Delete actions are disabled

## ⚙️ Key Notes

* Uses `InsertAllowed` and `DeleteAllowed` properties
* Applies to entire page for all users
* Users can still edit records unless restricted separately
* Useful for controlled data environments
