curl -H 'Content-Type: application/json' 192.168.18.191:8083/connectors --data '{
  "name": "kemenagv20",
  "config": {
		"connector.class" : "io.confluent.connect.mqtt.MqttSourceConnector",
		"mqtt.server.uri" : "tcp://p1a944b2.emqx.cloud:1883",
		"mqtt.password" : "ddi123",
		"mqtt.username" : "kafka",
		"mqtt.topics" : "geo",
		"kafka.topic" : "kemenag20",
		"tasks.max" : "1",
		"confluent.topic.bootstrap.servers" : "192.168.18.191:9092",
		"confluent.topic.replication.factor" : "1",
		"value.converter.schemas.enable": "false",
		"key.converter.schemas.enable": "false",
		"value.converter": "org.apache.kafka.connect.converters.ByteArrayConverter",
		"key.converter": "org.apache.kafka.connect.json.JsonConverter"
  }
}'
