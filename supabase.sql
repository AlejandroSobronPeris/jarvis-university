create table if not exists public.jarvis_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.jarvis_data enable row level security;
create policy "solo mis datos" on public.jarvis_data
  for all to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
