docker build --no-cache -f SQL\Dockerfile.PostgreSql -t shop2/postgre-sql ../SQL

docker build --no-cache -f Dockerfile -t shop2/app ../..
