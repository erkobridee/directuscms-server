# directuscms-server

Testing of [Directus](https://directus.io/) CMS

- [[GitHub] directus/directus](https://github.com/directus/directus)

- [Self-hosted pricing](https://directus.io/pricing/self-hosted)

## Project setup

```shell

mkdir extensions

mkdir uploads

mkdir database

chmod 777 database uploads extensions

```

or

```shell
make
```

## CLI Commands

start

```shell
docker compose up -d
```

> http://localhost:8055

cleanup

```shell
docker compose down
```

## Super Admin example

> To be defined on the first access

- name: `Super Admin`

- email: `admin@directus.io`

- password: `Admin987654321`

## Useful References

- [Directus Docs](https://directus.io/docs/)
  - [Create a Project | Getting Start - Directus Docs](https://directus.io/docs/getting-started/create-a-project)

  - [Fetch Data from Directus with Astro | Getting Start - Directus Docs](https://directus.io/docs/tutorials/getting-started/fetch-data-from-directus-with-astro)

  - [Translations | Guides - Directus Docs](https://directus.io/docs/guides/content/translations#content-translations)

  - [Deploy Directus to an Ubuntu Server | Tutorials / Self-Hosting - Directus Docs](https://directus.io/docs/tutorials/self-hosting/deploy-directus-to-an-ubuntu-server)

  - [Understanding Kubernetes | Tutorials / Tips & Tricks - Directus Docs](https://directus.io/docs/tutorials/tips-and-tricks/understanding-kubernetes)

- [Deploying DIRECTUS CMS to a Linux Server Using Docker and Nginx as a Reverse Proxy, and Cerbot for SSL. | by TechWithTwin - Medium](https://medium.com/@techwithtwin/deploying-directus-cms-to-a-linux-server-using-docker-and-nginx-as-a-reverse-proxy-and-cerbot-for-ff2eb267497c)
