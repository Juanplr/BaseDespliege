FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Perro16tonto!
ENV MSSQL_PID=Express

USER root
RUN chmod +x /opt/mssql/bin/sqlservr

EXPOSE 1433

USER mssql
CMD ["/opt/mssql/bin/sqlservr"]

