# Carehub

## install

```bash
mix deps.get
```

## generate relay schema

```bash
mix run -e GraphQL.Relay.generate_schema_json!
```

## migrate
```bash
mix ecto.create && mix ecto.migrate
```

## debug
http://localhost:4000
```bash
mix phoenix.server
```

## production
[check our deployment guides](http://www.phoenixframework.org/docs/deployment).
