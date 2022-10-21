require('neoscroll').setup({
    -- Set any options as needed
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<ScrollWheelUp>'] = {'scroll', {'-0.15', 'false', '100'}}
t['<ScrollWheelDown>'] = {'scroll', { '0.15', 'false', '100'}}

require('neoscroll.config').set_mappings(t)
