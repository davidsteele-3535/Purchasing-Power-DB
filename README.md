# Purchasing Power Dashboard

Call analytics dashboard for Purchasing Power (January 2026). Single-page HTML dashboard with **Overview** and **Additional Insights** tabs.

## Setup

1. Place your data file in this folder: **`Purchasing Power January 2026.csv`**
2. Open the dashboard:
   - **Option A:** Double-click **`start-dashboard.bat`** to start a local server and open the dashboard in your browser.
   - **Option B:** Open **`index.html`** in a browser; use **Load CSV** to select the file if it doesn’t load automatically.

## Overview tab

- **Cards:** Total calls, Finish, Finish transfer, Bizrule transfer, Finish + Finish transfer, Authenticated (1005a), Supervisor Requested (authenticated vs non-authenticated).
- **Calls by day of week:** Bar chart and table with avg calls per day (by weekday); uses January 2026 calendar (31 days).
- **Caller intent (authenticated):** Pie chart of intents (WisMO, Account Balance, Spending Limit, etc.) for callers with breadcrumb 1005a.
- **End state deep dive:** Top 10 end states for Finish, FinishXfer, and BizruleXfer (count, % of outcome, % of total).
- **Supervisor Requested with 1047a:** Intent breakout for SR calls with breadcrumb 1047a (table + pie).

## Additional Insights tab

- **All outcomes distribution** – Pie chart of every outcome type.
- **Authentication rate by day of week** – Bar chart of % authenticated per weekday.
- **Top employers by call volume** – Top 15 employers (table).
- **Top end states (all calls)** – Top 15 end states (table).
- **After hours** – Count and % of total; outcomes and end states for calls with “After hours” in end state.
- **Summary stats** – Total calls, authenticated, after hours, unique outcomes, unique employers.

## CSV format

Expects a header row with columns such as: **UniqueCallId**, **Outcome**, **EndState**, **Breadcrumb**, **EmployerName**. Day of week is derived from UniqueCallId when no date column is present. Authenticated = breadcrumb contains `1005a`. Outcomes: `finish`, `finishxfer`, `bizrulexfer` (case-insensitive).

## Tech

Vanilla HTML/CSS/JS, [Chart.js](https://www.chartjs.org/), [Papa Parse](https://www.papaparse.com/) (CDN). No build step.
