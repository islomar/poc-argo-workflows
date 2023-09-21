curl --request GET https://localhost:2746/api/v1/workflows/argo/suspend-template-j4txg --header "Content-Type: application/json" -d '{"nodeFieldSelector":"displayName=approve"}' --insecure | jq
 
 # Extract the status parameter
 #curl --request GET https://localhost:2746/api/v1/workflows/argo/suspend-template-j4txg --header "Content-Type: application/json" -d '{"nodeFieldSelector":"displayName=approve"}' --insecure | jq '.status.nodes[] | select(.outputs.parameters != null) | .outputs.parameters[].value'