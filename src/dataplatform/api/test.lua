local mysql = require "resty.mysql"
local db, err = mysql:new()
if not db then
    ngx.say("failed to instantiate mysql: ", err)
    return
end

db:set_timeout(1000) -- 1 sec

-- or connect to a unix domain socket file listened
-- by a mysql server:
--     local ok, err, errcode, sqlstate =
--           db:connect{
--              path = "/path/to/mysql.sock",
--              database = "ngx_test",
--              user = "ngx_test",
--              password = "ngx_test" }

local ok, err, errcode, sqlstate = db:connect{
    host = "127.0.0.1",
    port = 3306,
    database = "healthroom",
    user = "root",
    password = "r00t",
    max_packet_size = 1024 * 1024 }

if not ok then
    ngx.say("failed to connect: ", err, ": ", errcode, " ", sqlstate)
    return
end

ngx.say("connected to mysql.")

local sql = "insert into tb_heighweightdata(orgCode,orgName,familyName,examDate,conclusion,heigh,residentEMPI,bmi,weight,residentName,familyCode,dataSource,machineID) values('orgCode','orgName','familyName','2017-11-11 11:11:11','aaabbbcccdddeeefff','180','residentEMPI','23','55','residentName','familyCode','1','12341234');"

local res, err, errcode, sqlstate =
    db:query(sql)
if not res then
    ngx.say("bad result: ", err, ": ", errcode, ": ", sqlstate, ".")
    return
end


-- put it into the connection pool of size 100,
-- with 10 seconds max idle timeout
local ok, err = db:set_keepalive(10000, 100)
if not ok then
    ngx.say("failed to set keepalive: ", err)
    return
end

-- or just close the connection right away:
-- local ok, err = db:close()
-- if not ok then
--     ngx.say("failed to close: ", err)
--     return
-- end




