FROM microsoft/dotnet:sdk

ENV HOME /usr/src
ENV NUGET_PACKAGES /usr/nuget/package
ENV PORT 5000

WORKDIR /usr/src

COPY MvcMovie.csproj /usr/src/

RUN dotnet restore

CMD ["dotnet","watch","run"]