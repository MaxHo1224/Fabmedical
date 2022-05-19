host=""fabmedical-mix.mongo.cosmos.azure.com
username="fabmedical-mix"
password="rxoq1FWjOGhWVN4mIfcBxNUkScWQuhbDhcdNSJAl2lXZMbWCUirWLD6aqN0NY7j4RVENV99WynMxulsCNpbgsA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
