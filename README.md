# Test Repo for Hasura [#8314](https://github.com/hasura/graphql-engine/issues/8314)

## Setup

1. Reopen in devcontainer or start docker container with

   ```bash
   docker compose up -d
   ```

1. Apply Hasura metadata [docs](https://hasura.io/blog/moving-from-local-development-staging-production-with-hasura/)

   Currently, `hasura-cli` is not working from within the devcontainer, so [install](https://hasura.io/docs/latest/graphql/core/hasura-cli/install-hasura-cli.html#install-hasura-cli) it on your host. See [Issue](https://github.com/hasura/graphql-engine/issues/5594).

   ```bash
   cd hasura
   hasura metadata apply
   ```

1. Start Hasura console

   ```bash
   hasura console
   ```

1. Try to run mutation in GraphiQL

   ```graphql
   mutation MyMutation {
     insert_Article(objects: {Name: "testName", Number: 10, With_Space: "spaces"}) {
       returning {
        Name
        Number
        With_Space
      `
     }
   }
   ```
