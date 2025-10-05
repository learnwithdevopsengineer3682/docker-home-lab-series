#Run DB with out volume
docker run -d --name db1 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  postgres:14

#Insert sample data
docker exec -it db1 psql -U demo -d mydb -c "CREATE TABLE IF NOT EXISTS test (id INT PRIMARY KEY); INSERT INTO test VALUES (2);"

#Now remove container:
docker rm -f db1

#Re-run container without volume:

docker run -d --name db1 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  postgres:14

docker exec -it db1 psql -U demo -d mydb -c "SELECT * FROM test;"

#create volume
docker volume create pgdata

# Run db2 container
docker run -d --name db2 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  -v pgdata:/var/lib/postgresql/data \
  postgres:14

# Insert data into db2
docker exec -it db2 psql -U demo -d mydb -c "CREATE TABLE IF NOT EXISTS test (id INT PRIMARY KEY); INSERT INTO test VALUES (2);"

# Remove db2
docker rm -f db2

# Once again run db2
docker run -d --name db2 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  -v pgdata:/var/lib/postgresql/data \
  postgres:14

# Test if data is available
docker exec -it db2 psql -U demo -d mydb -c "SELECT * FROM test;"

# Run with wrong bind mount

docker run -d --name db3 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  -v /tmp/db-data:/var/lib/postgresql/data \
  postgres:14

docker logs db3

# Fix it 

docker rm -f db3

docker run -d --name db3 \
  -e POSTGRES_USER=demo \
  -e POSTGRES_PASSWORD=demo \
  -e POSTGRES_DB=mydb \
  -v pgdata:/var/lib/postgresql/data \
  postgres:14

