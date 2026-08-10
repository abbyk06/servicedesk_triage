# Servicedesk Triage

Ruby on Rails search-based ticket routing web application. Type ticket keywords and get back the employee, department, and manager it should be assigned to.

## Stack
Ruby on Rails, PostgreSQL, Docker Compose

## Schema
- `Department` has many `Employee`s
- `Employee` belongs to a `Department`, optionally belongs to a manager (self-referential)
- `Topic` holds keywords and belongs to the `Employee` it routes to

## Run locally

```bash
export RAILS_MASTER_KEY=$(cat config/master.key)
docker compose up
docker compose exec web bin/rails db:create db:migrate db:seed
```

Visit `localhost:3000`.
