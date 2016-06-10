 
Proto4z.SQLStringArray = {}  
Proto4z.SQLStringArray.__getName = "SQLStringArray" 
Proto4z.SQLStringArray.__getDesc = "array" 
Proto4z.SQLStringArray.__getTypeV = "string" 
 
Proto4z.register(3000,"SQLResult") 
Proto4z.SQLResult = {}  
Proto4z.SQLResult.__getID = 3000 
Proto4z.SQLResult.__getName = "SQLResult" 
Proto4z.SQLResult[1] = {name="qc", type="ui16" }  
Proto4z.SQLResult[2] = {name="errMsg", type="string" }  
Proto4z.SQLResult[3] = {name="sql", type="string" }  
Proto4z.SQLResult[4] = {name="affected", type="ui64" }  
Proto4z.SQLResult[5] = {name="fields", type="SQLStringArray" }  
 
Proto4z.SQLResultArray = {}  
Proto4z.SQLResultArray.__getName = "SQLResultArray" 
Proto4z.SQLResultArray.__getDesc = "array" 
Proto4z.SQLResultArray.__getTypeV = "SQLResult" 
 
Proto4z.register(3001,"SQLQueryReq") 
Proto4z.SQLQueryReq = {} --通用SQL语句执行协议 
Proto4z.SQLQueryReq.__getID = 3001 
Proto4z.SQLQueryReq.__getName = "SQLQueryReq" 
Proto4z.SQLQueryReq[1] = {name="sql", type="string" }  
 
Proto4z.register(3002,"SQLQueryResp") 
Proto4z.SQLQueryResp = {} --通用SQL语句执行协议返回,SQLResult可以借助dbHepler进行构建DBResult 
Proto4z.SQLQueryResp.__getID = 3002 
Proto4z.SQLQueryResp.__getName = "SQLQueryResp" 
Proto4z.SQLQueryResp[1] = {name="retCode", type="ui16" }  
Proto4z.SQLQueryResp[2] = {name="result", type="SQLResult" }  
 
Proto4z.register(3003,"SQLQueryArrayReq") 
Proto4z.SQLQueryArrayReq = {} --通用批量SQL语句执行协议 
Proto4z.SQLQueryArrayReq.__getID = 3003 
Proto4z.SQLQueryArrayReq.__getName = "SQLQueryArrayReq" 
Proto4z.SQLQueryArrayReq[1] = {name="sqls", type="SQLStringArray" }  
 
Proto4z.register(3004,"SQLQueryArrayResp") 
Proto4z.SQLQueryArrayResp = {} --通用批量SQL语句执行协议 
Proto4z.SQLQueryArrayResp.__getID = 3004 
Proto4z.SQLQueryArrayResp.__getName = "SQLQueryArrayResp" 
Proto4z.SQLQueryArrayResp[1] = {name="retCode", type="ui16" }  
Proto4z.SQLQueryArrayResp[2] = {name="results", type="SQLResultArray" } --批量返回,注意不要超出协议包最大长度 