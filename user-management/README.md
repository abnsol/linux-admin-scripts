# User Management

Here is a scenario where a Linux system is configured to support three departments: **Engineering**, **Sales**, and **IS**. The setup includes directory creation, user and group management, and proper permissions for security.

---

## Case Scenario

A company has hired new employees for three departments. As the Linux administrator, your tasks include:

-   Creating directories, groups, and users for each department.
-   Assigning permissions to ensure security and usability.
-   Setting up confidential files that only department admins can modify.

---

## Objectives

1. Create directories for each department under `/`.
2. Create groups for each department.
3. Create users (1 admin and 2 users per department) with Bash login shells.
4. Set directory permissions:
    - Admins have full control.
    - Users have read, write, and execute permissions.
    - Others have no access.
5. Create confidential files:
    - Readable by all users in the department.
    - Modifiable only by department admins.

---
