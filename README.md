# bottle-cocroach

to run:

docker run -p 5000:5000 -e DB_URL={COCROACH_URL} heyal/flask-cockroach:latest


then goto localhost:5000


#required stuff:
>cockroach running on port: `26275` (can be overridden with DB_PORT)

>cockroach user created with name: `maxroach` (can be overridden with DB_USER)

>cockroach DB table with name `bank` (can be overridden with DB_TABLE env var)

>pass in `-e DB_URL` with the url/ip of the cockroach address


This relies on an unsecured cockroachdb install!!


#The App

its like a "bank" which can create accounts and values, delete them and randomize the funds
controlled through web-browser (or making get requests to the appropriate places)

