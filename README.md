A docker-compose stack for https://github.com/anishathalye/gavel

# Configuration

All configuration can be done via environment variables. The basic ones are pre-set in [docker-compose.yml](docker-compose.yml). It's currently setup to use [SendGrid](https://sendgrid.com/) but any email server can be used. `EMAIL_FROM`, `EMAIL_PASSWORD`, `SECRET_KEY` must be set outside of the docker-compose file to ensure they are not checked into GitHub.

Additional configuration information can be found [here](https://github.com/anishathalye/gavel/blob/master/config.template.yaml)

# Usage

1. `docker compose up`
2. Navigate to https://localhost:8080/admin to add judges and projects
3. Judges should receive unique magic links in their emails which must be used to begin judging