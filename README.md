Jira Complete Connector for Power BI

[![Power BI](https://img.shields.io/badge/PowerBI-Connector-blue)](https://powerbi.microsoft.com/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

A full-featured Power BI custom connector for Jira Cloud, supporting OAuth 2.0 authentication and enabling you to fetch Projects, Boards, Sprints, and Issues.

This repository includes:

* Full source code (.pq) for the connector
* OAuth 2.0 implementation
* Helper functions
* Compiled .mez connector for Power BI
* Optional icons
* Example Power BI report

---

## Features

* Connect to Jira Cloud using OAuth 2.0
* Access Projects, Boards, Sprints, Issues
* Multi-user dashboards supported
* Ready for Power BI Service publishing
* Full source code included for development and customization
* Sample PBIX report demonstrating usage

---

## Installation (End Users)

1. Copy connector file

   * Move dist/JiraCompleteConnector.mez to:

   
   C:\Users\<YourUserName>\Documents\Power BI\Custom Connectors
   

   * Copy optional icons from icons/ folder

2. *Enable custom connectors in Power BI*

   * Open Power BI Desktop
   * Go to File → Options → Security → Data Extensions
   * Tick “Allow any extension to load without warning”
   * Click OK and restart Power BI

3. #Connect to #Jira

   * Go to Get Data → Other → Jira Complete Connector
   * Enter OAuth credentials:

     * Client ID
     * Client Secret
     * Redirect URL
   * Select tables (Projects, Boards, Sprints, Issues) → Click *Load*

4. *Publish & Refresh*

   * Publish report to Power BI Service
   * Configure Gateway if required
   * Schedule automatic refreshes

---

## Developer Instructions

* src/ – All Power Query .pq source code

  * JiraConnector.pq – Main connector logic
  * OAuthHandler.pq – OAuth 2.0 flow
  * Utils.pq – Helper functions for data transformation
* dist/ – Compiled .mez file for Power BI
* examples/ – Sample PBIX report using the connector
* icons/ – Optional icons for better menu visibility

### Building the Connector

1. Open the *Power Query SDK / Visual Studio*
2. Load all .pq files from src/
3. Build the project → output goes to dist/JiraCompleteConnector.mez

---

## Usage Example

See the examples/SampleReport.pbix to explore a working report using this connector, demonstrating fetching *Projects, Boards, Sprints, and Issues* from Jira Cloud.

---

## Notes

* Works only with Jira Cloud
* Requires Power BI Desktop (Download Version) — Microsoft Store version does not support custom connectors
* Test OAuth connection before scheduling refresh
* Supports *multiple users* and large datasets

---

## License

This project is licensed under the *MIT License* — see the [LICENSE](LICENSE) file for details.
