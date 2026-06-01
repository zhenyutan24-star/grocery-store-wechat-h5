create table if not exists public.grocery_store_state (
  store_id text primary key,
  products jsonb not null default '[]'::jsonb,
  orders jsonb not null default '[]'::jsonb,
  settings jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.grocery_store_state enable row level security;

drop policy if exists "public read grocery store state" on public.grocery_store_state;
drop policy if exists "public upsert grocery store state" on public.grocery_store_state;

create policy "public read grocery store state"
on public.grocery_store_state
for select
to anon
using (true);

create policy "public upsert grocery store state"
on public.grocery_store_state
for all
to anon
using (true)
with check (true);
