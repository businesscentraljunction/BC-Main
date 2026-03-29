# Hide / Disable AssistEdit Button in Business Central

## 📖 Blog Reference

Read full explanation here:
👉 https://community.dynamics.com/blogs/post/?postid=933e5555-99ef-ef11-be20-000d3a1a25a0
👉 https://khushburajvisdynamic365.blogspot.com/2024/09/demo.html

## 💡 Overview

This example demonstrates how to hide or disable the **AssistEdit button** using page extension in Dynamics 365 Business Central.

## 🔧 Features

* Hide AssistEdit button from UI
* Disable AssistEdit functionality
* Customize page behavior

## 📂 Project Structure

* src/pageextension
* AL extension example

## 🚀 How to Use

1. Open in VS Code
2. Download symbols
3. Publish extension
4. Verify AssistEdit button is hidden/disabled

---

## 🧪 Sample Code

```al
pageextension 50703 usersettting extends "User Settings"
{
    layout
    {
        modify("UserRoleCenter")
        {
            AssistEdit = false;
        }
    }
}
```

---

## ⚙️ Key Notes

* Set `AssistEdit = false` to hide/disable the button
* Set `AssistEdit = true` to enable it
* Use `OnAssistEdit` trigger for custom logic
