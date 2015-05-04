# validate attributes against HIVE vocabularies
validateDataObjectAgainstOntology {

msiCurlGetStr(*url, *outStr);
writeLine("stdout", *outStr);
}
INPUT *url="http://localhost:8080/hive-voccabservice-rest-1.0-SNAPSHOT/rest/concept/uat/concept?uri=http%3A%2F%2Fpurl.org%2Fastronomy%2Fuat%23T100"
OUTPUT ruleExecOut

 
