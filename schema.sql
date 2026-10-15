-- Run once in Supabase: SQL Editor > New query > paste > Run
create table public.user_docs (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  j text not null,
  primary key (user_id, id)
);
alter table public.user_docs enable row level security;
create policy "users manage own rows" on public.user_docs
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
