# AllowedFileExtensions Property in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=b48f7053-f3ea-f011-8544-7c1e527f8bbe
👉 http://khushburajvisdynamic365.blogspot.com/2026/01/dynamic-business-central-365_5.html

## 💡 Overview

This example demonstrates how to use the **AllowedFileExtensions** property to restrict file types during upload in Dynamics 365 Business Central.

## 🔧 Features

* Restrict file uploads to specific formats
* Improve data integrity and security
* Support multiple file uploads
* Prevent invalid file types at UI level
* Enhance user experience during file selection

## 📂 Project Structure

* src/page
* src/action
* AL file upload example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Open the page with upload action
5. Try uploading different file types
6. Observe restriction behavior

## ⚙️ Key Notes

* Works only with Page File Upload Actions
* Accepts comma-separated file extensions
* Each extension must start with a dot (.)
* Validation is based on file extension only
* Does not validate actual file content
* Available from runtime version 13.0 onward

## 🧠 Concept Insight

* Helps enforce controlled file uploads
* Acts as first-level validation for file selection
* Should be combined with server-side validation for security
* Improves reliability of file handling processes
