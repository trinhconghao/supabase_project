create table users (
  id uuid primary key default gen_random_uuid(),
  email text unique not null,
  created_at timestamp default now()
);

create table notes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id) on delete cascade,
  content text not null,
  created_at timestamp default now()
);

create table tags (
  id uuid primary key default gen_random_uuid(),
  name text unique not null
);

create table note_tags (
  note_id uuid references notes(id) on delete cascade,
  tag_id uuid references tags(id) on delete cascade,
  primary key (note_id, tag_id)
);

create table shares (
  id uuid primary key default gen_random_uuid(),
  note_id uuid references notes(id) on delete cascade,
  shared_with uuid references users(id) on delete cascade,
  permission text check (permission in ('read', 'write')),
  created_at timestamp default now()
);
