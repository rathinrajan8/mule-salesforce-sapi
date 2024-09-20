%dw 2.0
output application/json
---
payload map((responseItem,responseIndex) -> {
  "productId" : responseItem.Id,
  "productCode" : responseItem.ProductCode,
  "name" : responseItem.Name,
  "productPrice" : responseItem."ProductPrice__c" as String,
  "currencyCode": responseItem."CurrencyCode__c",
  "description": responseItem.Description
})