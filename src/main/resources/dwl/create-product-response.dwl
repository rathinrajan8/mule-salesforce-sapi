%dw 2.0
output application/json skipNullOn="everywhere"
---
payload.items map((responseItem,responseIndex) ->
	{
		"productId": responseItem.Id default "",
		"isSuccess": if(isEmpty(responseItem.exception)) true else false,
		"error": if(!isEmpty(responseItem.exception)) responseItem.exception.localizedMessage else null
	})