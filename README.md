# stockMarketFullStackIOS
This has IOS frontend, SpringBoot backend, Mongodb


Instructions:

Create mongodb database with database name : stockMarket

create a document with name : stockDetails
and insert

/* 1 */
{
    "_id" : "GE",
    "name" : "General Electronics",
    "cpnPercentage" : 3.15,
    "currentCpn" : 9,
    "totalCpn" : 22,
    "currency" : "USD",
    "currentValue" : 98.551,
    "yeildPercentage" : 3.6,
    "change" : 0.14,
    "basePoint" : -4
}

/* 2 */
{
    "_id" : "Abja",
    "name" : "Investment Coorporation",
    "cpnPercentage" : 4.95,
    "currentCpn" : 5,
    "totalCpn" : 23,
    "currency" : "SGD",
    "currentValue" : 100.726,
    "yeildPercentage" : 4.75,
    "change" : 0.44,
    "basePoint" : -12
}

/* 3 */
{
    "_id" : "AG",
    "name" : "HSH Nord corporation",
    "cpnPercentage" : 7.25,
    "currentCpn" : 6,
    "totalCpn" : 49,
    "currency" : "USD",
    "currentValue" : 36.29,
    "yeildPercentage" : 19.86,
    "change" : -0.14,
    "basePoint" : 9
}

/* 4 */
{
    "_id" : "Casino",
    "name" : "Guichard Perra LTD",
    "cpnPercentage" : 4.561,
    "currentCpn" : 1,
    "totalCpn" : 23,
    "currency" : "EUR",
    "currentValue" : 103.863,
    "yeildPercentage" : 3.47,
    "change" : -1.67,
    "basePoint" : 45
}

/* 5 */
{
    "_id" : "Odebrecht",
    "name" : "Finance Ltd",
    "cpnPercentage" : 7.5,
    "currentCpn" : 9,
    "totalCpn" : 49,
    "currency" : "USD",
    "currentValue" : 15.538,
    "yeildPercentage" : 43.76,
    "change" : 0.02,
    "basePoint" : 0
}

/* 6 */
{
    "_id" : "GOOGL",
    "name" : "Alphabet Inc.",
    "cpnPercentage" : 3.15,
    "currentCpn" : 9,
    "totalCpn" : 22,
    "currency" : "USD",
    "currentValue" : 98.551,
    "yeildPercentage" : 3.6,
    "change" : -0.14,
    "basePoint" : -4
}

/* 7 */
{
    "_id" : "MSFT",
    "name" : "Microsoft Coorporation",
    "cpnPercentage" : 4.95,
    "currentCpn" : 5,
    "totalCpn" : 23,
    "currency" : "SGD",
    "currentValue" : 100.726,
    "yeildPercentage" : 4.75,
    "change" : 0.44,
    "basePoint" : -12
}

/* 8 */
{
    "_id" : "AAPL",
    "name" : "Apple corporation",
    "cpnPercentage" : 7.25,
    "currentCpn" : 6,
    "totalCpn" : 49,
    "currency" : "USD",
    "currentValue" : 36.29,
    "yeildPercentage" : 19.86,
    "change" : -0.14,
    "basePoint" : 9
}

/* 9 */
{
    "_id" : "INTC",
    "name" : "Intel Corporation",
    "cpnPercentage" : 4.561,
    "currentCpn" : 1,
    "totalCpn" : 23,
    "currency" : "EUR",
    "currentValue" : 103.863,
    "yeildPercentage" : 3.47,
    "change" : -1.67,
    "basePoint" : 45
}

/* 10 */
{
    "_id" : "CTSH",
    "name" : "Cognizant Technology Solutions",
    "cpnPercentage" : 7.5,
    "currentCpn" : 9,
    "totalCpn" : 49,
    "currency" : "USD",
    "currentValue" : 15.538,
    "yeildPercentage" : 43.76,
    "change" : 0.02,
    "basePoint" : 0
}


Create a document with name : userDetails
and insert

/* 1 */
{
    "_id" : "user1",
    "totalValue" : 0,
    "currency" : "USD",
    "totalChange" : 0,
    "stocks" : [ 
        {
            "$ref" : "stockDetails",
            "$id" : "GE"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "Abja"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "AG"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "Casino"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "Odebrecht"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "GOOGL"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "MSFT"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "AAPL"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "INTC"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "CTSH"
        }
    ]
}

/* 2 */
{
    "_id" : "user2",
    "totalValue" : 0,
    "currency" : "USD",
    "totalChange" : 0,
    "stocks" : [ 
        {
            "$ref" : "stockDetails",
            "$id" : "GE"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "Abja"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "AG"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "Odebrecht"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "GOOGL"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "MSFT"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "AAPL"
        }, 
        {
            "$ref" : "stockDetails",
            "$id" : "CTSH"
        }
    ]
}

Run spring boot application and Xcode application
