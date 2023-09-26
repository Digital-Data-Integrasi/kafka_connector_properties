curl -H 'Content-Type: application/json' 192.168.18.191:8083/connectors --data '{
    "name": "elastic4",
	"config": {
		"connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
		"type.name": "kafka_connect",
		"topics": "owntracks",
		"consumer.override.auto.offset.reset": "latest",
		"key.ignore": "true",
		"schema.ignore": "true",
		"value.converter.schemas.enable": "false",
		"connection.url": "http://192.168.18.188:9200",
		"value.converter": "org.apache.kafka.connect.json.JsonConverter"
  }
}'
