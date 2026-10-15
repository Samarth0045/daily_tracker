# DayLedger – daily tracker (GitHub Pages + Supabase)

GitHub Pages only serves static files, so the database lives in Supabase (free tier). Your site stays on GitHub; Supabase stores accounts and data permanently, so users can log in from any device.

## Setup (about 10 minutes)
1. Create a free project at https://supabase.com.
2. Open **SQL Editor**, paste the contents of `schema.sql`, click **Run**.
3. Go to **Project Settings > API**. Copy the **Project URL** and the **anon public key**.
4. In `index.html`, replace `PASTE_YOUR_SUPABASE_URL` and `PASTE_YOUR_SUPABASE_ANON_KEY` with them. The anon key is safe to publish; row-level security means each user can only read and write their own rows.
5. Optional: **Authentication > Providers > Email** – turn off "Confirm email" if you want instant sign-up without an email check.
6. Create a GitHub repository, upload `index.html`, then **Settings > Pages > Deploy from branch > main / root**.
7. In Supabase **Authentication > URL Configuration**, set **Site URL** to your GitHub Pages address (https://USERNAME.github.io/REPO/).

## Notes
- Free Supabase projects pause after about a week of no activity. Data is kept, but you must click "Restore" in the Supabase dashboard.
- Use the Profile page "Download backup" now and then as an extra copy.
