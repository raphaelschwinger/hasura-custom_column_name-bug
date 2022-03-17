# import database from backup
# see https://stackoverflow.com/a/69510163/7387549
FROM mcr.microsoft.com/mssql/server:2019-latest
ENV DEFAULT_MSSQL_SA_PASSWORD=myStrongDefaultPassword42
ENV ACCEPT_EULA=Y
USER root

COPY restore-db.sh entrypoint.sh /opt/mssql/bin/
RUN chmod +x /opt/mssql/bin/restore-db.sh /opt/mssql/bin/entrypoint.sh

RUN mkdir /var/opt/mssql/backup
RUN mkdir /var/opt/mssql/data
ADD testDatabase.sql /var/opt/mssql/backup


RUN chown -R mssql:root /var/opt/mssql/backup && \
    chown -R mssql:root /var/opt/mssql/data && \
    chmod 0755 /var/opt/mssql/backup && \
    chmod 0755 /var/opt/mssql/data && \
    chmod -R 0650 /var/opt/mssql/backup/*

USER mssql
RUN /opt/mssql/bin/restore-db.sh
CMD [ "/opt/mssql/bin/sqlservr" ]
ENTRYPOINT [ "/opt/mssql/bin/entrypoint.sh" ]
