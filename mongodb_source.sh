curl -H 'Content-Type: application/json' 192.168.18.191:8083/connectors --data '{
  "name": "mongoSourceConfig",
  "config": {
    "connector.class": "com.mongodb.kafka.connect.MongoSinkConnector",
    "connection.uri": "mongodb://192.168.18.188:27017",
    "tasks.max": "1",
	"key.converter": "org.apache.kafka.connect.json.JsonConverter",
	"value.converter": "org.apache.kafka.connect.json.JsonConverter",
	"key.converter.schemas.enable": "false",
	"value.converter.schemas.enable": "false",
    "database": "mqtt",
    "collection": "mqtt",
    "topics": "kemenag"
  }
}'
