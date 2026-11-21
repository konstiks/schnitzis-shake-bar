-- Schnitzis Shake Bar: gemeinsame Online-Bestenliste
-- Im Supabase-Dashboard unter "SQL Editor" einfügen und auf "Run" klicken.

create table if not exists public.scores (
  id         bigint generated always as identity primary key,
  name       text        not null check (char_length(btrim(name)) between 1 and 14),
  score      integer     not null check (score between 1 and 5000000),
  best       text        check (best is null or char_length(best) <= 40),
  created_at timestamptz not null default now()
);

create index if not exists scores_score_idx on public.scores (score desc);

-- Zugriffsregeln: alle dürfen lesen und neue Einträge anlegen,
-- niemand (außer dir im Dashboard) darf Einträge ändern oder löschen.
alter table public.scores enable row level security;

drop policy if exists "Bestenliste lesen" on public.scores;
create policy "Bestenliste lesen"
  on public.scores for select
  to anon, authenticated
  using (true);

drop policy if exists "Eintrag hinzufuegen" on public.scores;
create policy "Eintrag hinzufuegen"
  on public.scores for insert
  to anon, authenticated
  with check (true);

grant select, insert on public.scores to anon, authenticated;
