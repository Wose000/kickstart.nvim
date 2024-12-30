require('luasnip.session.snippet_collection').clear_snippets 'php'

local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('php', {
  s('po', fmt('<?php {} ?>', { i(1) })),
})
