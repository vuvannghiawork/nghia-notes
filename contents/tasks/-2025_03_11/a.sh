# # Xem tất cả số lượng
# curl -X 'GET' \
#   'http://localhost:9010/api/bss/department-plans/count-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' | jq

# # status = draft
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["draft"]},"sort":[],"page":1,"pageSize":10}
# ' | jq

# # status = pending + tab = sender
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["pending"],"tab":"sender"},"sort":[],"page":1,"pageSize":10}
# ' | jq

# # status = pending + tab = reviewer
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["pending"],"tab":"reviewer"},"sort":[],"page":1,"pageSize":10}
# ' | jq



# # status = approved + tab = reviewer
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["approved"],"tab":"reviewer"},"sort":[],"page":1,"pageSize":10}
# ' | jq



 
# # status = approved + tab = approver
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["approved"],"tab":"approver"},"sort":[],"page":1,"pageSize":10}
# ' | jq 


            
# # status = completed
# curl -X 'POST' \
#   'http://localhost:9010/api/bss/department-plans' \
#   -H 'accept: application/json' \
#   -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
#   -H 'Content-Type: application/json' \
#   -d '{"filters":{"status":["completed"]},"sort":[],"page":1,"pageSize":10}
# ' | jq
     
# status = approved + rejected + completed
curl -X 'POST' \
  'http://localhost:9010/api/bss/department-plans' \
  -H 'accept: application/json' \
  -H 'apiKey: d6b8ca7d11fcfd670707e0f33d8e454b2366af8216c2e05536f49ed9c343e8ea' \
  -H 'Content-Type: application/json' \
  -d '{"filters":{"status":["approved","rejected","completed"]},"sort":[],"page":1,"pageSize":10}
' | jq
