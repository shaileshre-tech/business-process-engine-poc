## camunda-loan-process-poc

Start application       - > mvn spring-boot:run <br/>
Application url         - > http://localhost:8080/ <br/>
Application credentials - > kermit / superSecret <br/>
Postman collection name - > camunda-poc <br/>

<b>Order of rest call's by name (from Camunda-POC collection) </b><br/>
&emsp;1. Process Instance Start By Key - extract <b>id</b> (process instance id) from response <br/>
&emsp;2. Task All Process Get          - use extracted <b>id</b> value as <b>processInstanceId</b> query parameter <br/>
&emsp;3. Task Id Get                   - extract <b>id</b> (task instance id) from response <br/>
&emsp;4. Task Complete                 - use extracted <b>id</b> value as <b>taskInstanceId</b> path parameter <br/>

