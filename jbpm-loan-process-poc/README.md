## jbpm-loan-process-poc

Application url         - > http://localhost:8080/jbpm-console/ <br/>
Application credentials - > krisv / krisv <br/>
Postman collection name - > jbpm-poc <br/>

<b>Steps to deploy </b><br/>
&emsp;1. Download and setup jbpm server - https://docs.jboss.org/jbpm/release/7.19.0.Final/jbpm-docs/html_single/#_jbpminstaller <br/>
&emsp;2. On command prompt, navigate to the <b>jbpm-loan-process-poc</b> folder <br/>
&emsp;3. Create a new folder <b>.git</b> <br/>
&emsp;4. Copy all the contents from <b>business-central-dot-git</b> folder to the newly created <b>.git</b> folder <br/>
&emsp;5. Start the jbpm server (refer the jbpm reference documentation) <br/>
&emsp;6. Login into the business central application using the provided application url <br/>
&emsp;7. Create a new group 'loan-applicant-group' <br/>
&emsp;8. Create a new user 'loan-applicant-user' with 'user' role and 'loan-applicant-group' group <br/>
&emsp;9. Import this project using file:///<PATH_TO_THIS_FOLDER> <br/>
&emsp;10. Build and deploy the project in business central <br/>
&emsp;11. Use the <b>jbpm-poc</b> postman collection to invoke jbpm exposed rest endpoints <br/>


