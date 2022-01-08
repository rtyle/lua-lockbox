return {
    band    = function(l, r)    return l & r end,
    bor     = function(l, r)    return l | r end,
    bxor    = function(l, r)    return l ~ r end,
    bnot    = function(u)       return ~u end,
    lshift  = function(l, r)    return l << r end,
    rshift  = function(l, r)    return l >> r end,

    lrotate = function(l, r) r = r % 32; return 0xffffffff & ((l << r) | (l >> (32 - r))) end,
    rrotate = function(l, r) r = r % 32; return 0xffffffff & ((l >> r) | (l << (32 - r))) end,
}
