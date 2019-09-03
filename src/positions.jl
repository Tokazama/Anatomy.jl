"""
    BilateralStructure

An anatomical structure that occurs bilaterally.
"""
struct BilateralStructure{S<:AnatomicalStructure} <: AbstractAnatomicalStructure
    structure::S
end

BilateralStructure(s::Symbol) = BilateralStructure(AnatomicalStructure(s))

BilateralStructure(s::String) = BilateralStructure(Symbol(s))

function BilateralStructure(; name, children::Tuple=(), traits::Tuple=())
    BilateralStructure(AnatomicalStructure(name, children, traits))
end

structure(s::BilateralStructure) = getproperty(s, :structure)
Base.names(s::BilateralStructure) = names(structure(s))

isbilateral(s::AnatomicalStructure) = false
isbilateral(s::BilateralStructure) = true
isbilateral(s::AbstractAnatomicalStructure) = isbilateral(structure(s))

"""
    LeftStructure

Represents the left side of a `BilateralStructure`.
"""
struct LeftStructure{S<:BilateralStructure} <: AbstractAnatomicalStructure
    structure::S

    LeftStructure(s::BilateralStructure) = new{typeof(s)}(s)
end

left(s::BilateralStructure) = LeftStructure(s)

structure(s::LeftStructure) = getproperty(s, :structure)

substructuretype(::S) where {S<:LeftStructure} = substructuretype(S)
substructuretype(::Type{<:LeftStructure{S}}) where S = S

Base.names(s::LeftStructure) = names(structure(s))

Base.show(io::IO, v::LeftStructure) = print(io, Symbol("left $(names(v))"))

"""
    RightStructure

Represents the right side of a `BilateralStructure`.
"""
struct RightStructure{S<:BilateralStructure} <: AbstractAnatomicalStructure
    structure::S

    RightStructure(s::BilateralStructure) = new{typeof(s)}(s)
end

right(s::BilateralStructure) = RightStructure(s)

structure(s::RightStructure) = getproperty(s, :structure)

Base.names(s::RightStructure) = names(structure(s))

Base.show(io::IO, v::RightStructure) = print(io, Symbol("right $(names(v))"))

