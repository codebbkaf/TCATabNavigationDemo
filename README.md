# TCA Navigation App

## Overview
This project is a SwiftUI application built using **The Composable Architecture (TCA)**, implementing a structured navigation system. The app features:
- A **LoginView**
- A **ContentView** with a **TabView** that contains:
  - **NavA Feature** → `NavA` (NavAFirstPage → NavASecPage)
  - **NavB Feature** → `NavB` (NavBFirstPage → NavBSecPage)
- **Independent NavigationStacks** for Feature `NavA` and `NavB`
- Usage of **TCA’s NavigationStackStore and destination APIs** for managing navigation states

## Features
- **State Management**: Fully managed using `Store` and `Reducer`.
- **NavigationStack**: Each tab (`NavA` and `NavB`) has its own independent `NavigationStack`.

## Project Structure
```
TCA Tab Navigation App
│── TCATabNavigatrionDemoApp.swift  # Entry point
│── ContentView.swift
│── Feature
│   ├── Login
│   ├── NavA
│   ├── NavB
```
