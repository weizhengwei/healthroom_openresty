local cjson = require 'cjson'

if ngx.var.request_method ~= 'POST' then
	ngx.say('only support POST method')
	return
end


ngx.req.read_body()
local post_data = ngx.req.get_body_data()
---[[
	--ngx.say("postdata is")
	--ngx.say(post_data)
--]]


local db_name = 'tb_bonedensitydata'
local sql = 'insert into ' .. db_name .. '('
local s = ''
local ss = 'values(' .. '\''


local function save_data(sql)
	local mysql = require 'resty.mysql'
	local db, err = mysql:new()
	if not db then
		ngx.say('failed to init mysql: ', err)
		return
	end
	db:set_timeout(1000)
	local ok, err, errcode, sqlstate = db:connect{
		host = '127.0.0.1',
		port = 3306,
		database = 'healthroom',
		user = 'root',
		password = 'r00t',
		max_package_size = 1024*1024}
	if not ok then
		ngx.say('failed to connect: ', err, ': ', errcode)
		return
	end
	local res, err, errcode, sqlstate = db:query(sql)
	if not res then
		ngx.say('failed insert to db: ', err, ': ', errcode)
		return
	end
	ngx.say('upload data ok')
end

local function process2( d )
	for k, v in pairs(d) do
		--ngx.say(k, " = ")
		if k ~= 'data' then
			s = s .. k .. ','
			ss = ss .. v .. "\'," .. "'"
		end
		
		if k == 'data' then
			for kk,vv in ipairs(v) do
				for kkk, vvv in pairs(vv) do
					s = s .. kkk .. ','
					ss = ss .. vvv .. "'," .. "'"
				end
			end
		end
	end
	s = string.sub(s, 0, string.len(s)-1)
	ss = string.sub(ss, 0, string.len(ss)-2)
	--ngx.say("s ======= ", s)
	--ngx.say("ss ======= ", ss)
	ss = ss .. ');'

	sql = sql .. s .. ')' .. ' ' .. ss
	--ngx.say(sql)
	save_data(sql)
end


local json_data = cjson.decode(post_data)
process2(json_data)