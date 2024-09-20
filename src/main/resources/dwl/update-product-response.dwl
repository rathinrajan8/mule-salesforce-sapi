%dw 2.0
output application/json skipNullOn="everywhere"
var updatedPayload = payload.items[0].payload
---
{
	"productId": if(vars.emptyUpdateIdFlag default false)vars.productId else updatedPayload.Id,
	"isSuccess": updatedPayload.success default false,
	"error": if(!isEmpty(updatedPayload.errors))updatedPayload.errors else if (vars.emptyUpdateIdFlag default false) "Product ID is not available to Update in Salesforce" else null
}