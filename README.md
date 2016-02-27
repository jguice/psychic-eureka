# psychic-eureka
bollinger band anonymous alerting service

Default is `n=2`...need to add a new way for this to be set/updated

No values for X amount of time and the endpoint will be deleted

## Usage
New stream
`POST /new`
Returns 201
```
{
  id: "a203pok-fob0293wij"
}
```

Push data
`POST /data/a203pok-fob0293wij`
```json
{
  "value": 0
}
```
Returns `200`

If the service detects a value above or below the band it returns
```
{
  "anamoly": "above"
  "value": 0
}
```

`anamoly` can also be `below`.
  
