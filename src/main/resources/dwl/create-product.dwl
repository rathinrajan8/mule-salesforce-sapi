%dw 2.0
output application/java
---
payload map(productItem,productIndex)->{
	"ExternalId__c" : productItem.externalId,
	"ProductCode" : productItem.productCode,
	"Name" : productItem.name,
	"ProductPrice__c" : productItem.productPrice as Number,
	"CurrencyCode__c": productItem.currencyCode,
	"Description": productItem.description
}