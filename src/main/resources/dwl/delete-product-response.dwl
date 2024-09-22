%dw 2.0
output application/json skipNullOn="everywhere"
var updatedPayload = payload.items[0].payload
---
{
	"productId": updatedPayload.Id,
	"isSuccess": updatedPayload.success,
	"error": if(!isEmpty(updatedPayload.errors))updatedPayload.errors else null
}