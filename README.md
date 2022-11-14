# Getting Started with Analytics Engineering

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/)

## Getting Started

```sh
make up
```

To initialize a dbt project:

```sh
dbt init
```

To debug the dbt project:

```sh
export DBT_ENV_SECRET_PG_PASSWORD=postgres
cd <dbt_project_name>
dbt debug
```
