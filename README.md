# Purchasing Power Dashboard

A single-page dashboard for **Purchasing Power** call/IVA data from the January 2026 CSV export.

## Quick start

1. **Open the dashboard**  
   Double-click `start-dashboard.bat` (or open `index.html` in your browser).

2. **Load the data**  
   Click **Load CSV**, then choose `Purchasing Power January 2026.csv` in this folder.

3. **View metrics**  
   The dashboard shows KPIs and charts for call outcomes, dates, end states, employers, call center, and VA duration.

## What’s on the dashboard

- **KPI cards**: Total calls, finish/hangup/transfer counts and %, average and median VA duration, calls with transfer.
- **Outcome distribution**: Pie/doughnut of outcome types (finish, hangup1/2, finishXfer, callerXfer, etc.).
- **Calls by date**: Line chart of daily volume.
- **Top end states**: Bar chart of the top 12 end states.
- **Top employers**: Bar chart of the top 10 employers by call volume.
- **Call center**: Doughnut of call center (or “none”).
- **VA duration**: Histogram of VA time in minutes (buckets 0–1, 1–2, 2–3, 3–5, 5–10, 10–20, 20+).

## Files

| File | Purpose |
|------|--------|
| `index.html` | Dashboard UI; load any CSV with the same column names. |
| `Purchasing Power January 2026.csv` | Call data (UniqueCallId, DateTimeET, VAsec, VAmin, Outcome, EndState, EmployerName, CallCenter, etc.). |
| `2024.04.10 Purchasing Power Empathy Redesign FD.pdf` | Design/flow reference (not used by the dashboard). |

## CSV columns used

The dashboard expects at least: `DateTimeET`, `VAsec`, `VAmin`, `Xfersec`, `Outcome`, `EndState`, `EmployerName`, `CallCenter`. Other columns in the CSV are ignored for the charts.

## Browser

Use a modern browser (Chrome, Edge, Firefox). The dashboard uses Chart.js and PapaParse from CDNs; an internet connection is needed on first load.
