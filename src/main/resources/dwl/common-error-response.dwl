%dw 2.0
output application/json
---
{
	"API Name": p('api.name'),
	exceptionDetails: {
		description: error.description,
		exceptionCode: vars.httpStatus,
		exceptionMessage: if(error.muleMessage != null) error.muleMessage.payload else null,
		exceptionTimestamp: now()
	},
	httpStatusCode: vars.httpStatus,
	success: false,
	correlationId: vars.correlationId
}