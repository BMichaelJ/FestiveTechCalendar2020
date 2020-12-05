# FestiveTechCalendar2020
This is a Contribution to https://festivetechcalendar.com

Read the full blog post: https://azurefabric.com/azure-monitor-for-paas-services-where-is-the-ai-and-how-do-i-arm-it/

Template does the following.

-Creates the application insights instance with Type “general” (This I have tried to understand deeper but failing to find the docs for it, if you know please reach out on twitter :))
-Adds an email to all smart detect rules (not the preview) and ensures they are enabled
-Creates an Action group with “Monitoring Reader”, “Monitoring Contributor” and email receivers enabled.
-Created the “Failure Anomalies” alert and connects it to the action group
