
"""
    structure(anatomy)
"""
function structure(a::AbstractAnatomy) end

"""
"""
function structuretype(::AbstractAnatomy) end


"""
    coordinates(anatomy)
"""
function positions(a::AbstractAnatomy) end


"""
    weights
"""
function weights(a::AbstractAnatomy) end

"""
    weighttype(anatomy)
"""
function weighttype(::AbstractAnatomy) end

"""
    in(a::AbstractAnatomy, b::AbstractAnatomy) -> Bool

"""
function Base.in(a::AbstractAnatomy, b::AbstractAnatomy) end
