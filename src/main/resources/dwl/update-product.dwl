%dw 2.0
output application/json skipNullOn="everywhere"
---
[{
  "Id": vars.productId,
  "Name" : vars.inputPayload.name default null,
  "ProductPrice__c" : vars.inputPayload.productPrice as Number default null,
  "CurrencyCode__c": vars.inputPayload.currencyCode default null,
  "Description": vars.inputPayload.description default null
}]