
local Config = {
    env = ""
}

function Config:setup(opts)
    for k,v in pairs(opts) do self[k] = v end
    self:validate()
end

function Config:validate()
    vim.validate{
        env = {self.env, 'string'}
    }
end

return Config

