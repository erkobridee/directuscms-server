# directuscms-server

Testing of [Directus](https://directus.io/) CMS

- [[GitHub] directus/directus](https://github.com/directus/directus)

- [Self-hosted pricing](https://directus.io/pricing/self-hosted)

## Project setup

1\. `cp .env.example .env` if the `.env` is not present then update its values

2\. setup ( restore the database if the backupt is present )

```shell
make
```

## CLI Commands

start

```shell
docker compose up -d
```

> http://localhost:8055
>
> use the email and password defined at the `.env` file

cleanup

```shell
docker compose down
```

## Useful References

- [Directus Docs](https://directus.io/docs/)
  - [Create a Project | Getting Start - Directus Docs](https://directus.io/docs/getting-started/create-a-project)

  - [Fetch Data from Directus with Astro | Getting Start - Directus Docs](https://directus.io/docs/tutorials/getting-started/fetch-data-from-directus-with-astro)

  - [Translations | Guides - Directus Docs](https://directus.io/docs/guides/content/translations#content-translations)

  - [Deploy Directus to an Ubuntu Server | Tutorials / Self-Hosting - Directus Docs](https://directus.io/docs/tutorials/self-hosting/deploy-directus-to-an-ubuntu-server)

  - [Understanding Kubernetes | Tutorials / Tips & Tricks - Directus Docs](https://directus.io/docs/tutorials/tips-and-tricks/understanding-kubernetes)

- [Deploying DIRECTUS CMS to a Linux Server Using Docker and Nginx as a Reverse Proxy, and Cerbot for SSL. | by TechWithTwin - Medium](https://medium.com/@techwithtwin/deploying-directus-cms-to-a-linux-server-using-docker-and-nginx-as-a-reverse-proxy-and-cerbot-for-ff2eb267497c)

- [Self-hosting Directus with Docker on a Ubuntu Server | Sliplane](https://sliplane.io/blog/self-hosting-directus-with-docker-on-ubuntu-server)

- [[GitHub] ahmedShawareb567/zid-grow-website](https://github.com/ahmedShawareb567/zid-grow-website) - A modern, headless Next.js website powered by Directus CMS. This project showcases a scalable architecture for building dynamic content-driven websites with server-side rendering and real-time CMS integration.

### PostgreSQL

- [How to Backup a PostgreSQL Database in Docker: Step-by-Step Guide | DEV Community](https://dev.to/mdarifulhaque/how-to-backup-a-postgresql-database-in-docker-step-by-step-guide-cp2)

- [Dump & Restore PostgreSQL database in a Docker | Peter's Notes](https://petersnotes.com/posts/dump--restore-postgresql-database-in-a-docker/)
