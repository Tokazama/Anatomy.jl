# Outline:
# * Abstract types
#   - AbstractAnatomy
#   - PositionedAnatomy
#     - positiontype
#   - PositionedStructure
#     - structuretype
#   - WeightedPositionedStructure
#     - weighttype
# * Structure types
#   - AnatomicalStructure
#   - BilateralStructure
#   - PointStructure
#   - WeightedPointStructure
# * Link types
#   - SimpleLink
#   - StructureLink
#   - WeightedStructureLink
#   - StructureLinkPath
#   - WeightedStructureLinkPath
# * Hierarchical types
#
# - TODO should weights be the field for colors or should that be a separate option.
#

###
### Abstract types
###

"""
    AbstractAnatomy

Supertype for representing anatomical information.
"""
abstract type AbstractAnatomy end

"""
    PositionedAnatomy

An `AbstractAnatomy` subtype that contains positional information.
"""
abstract type PositionedAnatomy{P} <: AbstractAnatomy end

"""
    positioneltype(::PositionedAnatomy)

Returns the underlying type of the position in an instance of
`PositionedAnatomy`.
"""
positiontype(::PA) where {PA<:PositionedAnatomy} = positiontype(PA)
positiontype(::Type{<:PositionedAnatomy{P}}) where {P} = P

"""
    PositionedStructure{S,P}

An `PositionedAnatomy` subtype that contains positional and structural
information.
"""
abstract type PositionedStructure{S,P} <: PositionedAnatomy{S,P} end

"""
    structuretype(::PositionedStructure)

Returns the underlying structure type in a `PositionedStructure`.
"""
structuretype(::P) where {P<:PositionedAnatomy} = structuretype(P)
structuretype(::Type{<:PositionedAnatomy{S}}) where {S} = S

"""
    WeightedPositionedStructure{W<:Number,S,P}

A `PositionedStructure` subtype that contains a weight in addition to
positional and structural information.
"""
abstract type WeightedPositionedStructure{W,S,P} <: PositionedAnatomy{S,P} end

weighttype(::WPS) where {WPS<:WeightedPositionedStructure} = weighttype(WPS)
weighttype(::Type{<:WeightedPositionedStructure{W}}) where {W} = W


###
### Point/node/vertex structs
###

"""
    AnatomicalStructure

Represents an  anatomical structure. 
"""
struct AnatomicalStructure <: AbstractAnatomy
    name::Symbol
end

AnatomicalStructure(n::String) = AnatomicalStructure(Symbol(n))

Base.names(s::AnatomicalStructure) = s.name

"""
    BilateralStructure
"""

struct BilateralStructure{S<:AnatomicalStructure} <: AbstractAnatomy
    structure::S
end

structure(s::BilateralStructure) = getproperty(s, :structure)

Base.names(s::) = names(structure(s))

"""
    PointStructure
"""
struct PointStructure{S<:AbstractAnatomy,T,N} <: PositionedStructure{S,Point{N,T}}
    structure::S
    position::Point{N,T}
end

position(s::PositionedStructure) = getproperty(s, :position)
structure(s::PositionedStructure) = getproperty(s, :structure)

"""
    WeightedPointStructure
"""
struct WeightedPointStructure{S<:AbstractAnatomy,T,N} <: WeightedPositionedStructure{W,S,Point{N,T}}
    structure::S
    position::Point{N,T}
    weight::W
end

position(s::WeightedPointStructure) = getproperty(s, :position)
structure(s::WeightedPointStructure) = getproperty(s, :structure)
weight(s::WeightedPointStructure) = getproperty(s, :weight)


###
### Link/edge structs
###

"""
    SimpleLink

A link containing only positional information that chains together anatomical
structures.
"""
struct SimpleLink{T,N} <: PositionedAnatomy{Point{N,T}}
    src::Point{N,T}
    dst::Point{N,T}
end

src(s::SimpleLink) = getproperty(s, :src)
dst(s::SimpleLink) = getproperty(s, :dst)

"""
    StructureLink

A link associating two distinct `PositionedStructures`.
"""
struct StructureLink{S,T,N,Src<:PositionedStructure{S,Point{N,T}},Dst<:PositionedStructure{S,Point{N,T}}} <: PositionedStructure{S,Point{N,T}}
    src::Src
    dst::Dst
end

src(s::StructureLink) = getproperty(s, :src)
dst(s::StructureLink) = getproperty(s, :dst)

"""
    WeightedStructureLink{W,S,T}
"""
struct WeightedStructureLink{W,T,N,Src<:PositionedStructure{S,Point{N,T}},Dst<:PositionedStructure{S,Point{N,T}}} <: WeightedPositionedStructure{S,Point{N,T}}
    src::Src
    dst::Dst
    weight::W
end

src(s::WeightedStructureLink) = getproperty(s, :src)
dst(s::WeightedStructureLink) = getproperty(s, :dst)
weight(s::WeightedStructureLink) = getproperty(s, :weight)

"""
    StructureLinkPath

A link associating two distinct `PositionedStructures` through series of
`SimpleLink` types.
"""
struct StructureLinkPath{S,T,Src<:PositionedStructure{S,Point{N,T}},Dst<:PositionedStructure{S,Point{N,T}}} <: PositionedStructure{S,Point{N,T}}
    src::Src
    dst::Dst
    pathway::Vector{SimpleLink{T}}
end

src(s::StructureLink) = getproperty(s, :src)
dst(s::StructureLink) = getproperty(s, :dst)

"""
    WeightedStructureLinkPath{W,S,T}

A link associating two distinct `PositionedStructures` through series of
`SimpleLink` types with accompanying weights.
"""
struct WeightedStructureLinkPath{W,T,N,Src<:PositionedStructure{S,Point{N,T}},Dst<:PositionedStructure{S,Point{N,T}}} <: WeightedPositionedStructure{S,Point{N,T}}
    src::Src
    dst::Dst
    pathway::Vector{SimpleLink{T}}
    weight::Vector{W}
end

src(s::WeightedStructureLink) = getproperty(s, :src)
dst(s::WeightedStructureLink) = getproperty(s, :dst)
weight(s::WeightedStructureLink) = getproperty(s, :weight)

const LinkeType = Union{StructureLink,StructureLinkPath,WeightedStructureLink,WeightedStructureLinkPath}

###
### Hierarchical links
###

"""
    HierarchicalLink
"""
Base.@kwdef struct HierarchicalLink{S<:AbstractAnatomy,P,C} <: AbstractAnatomy
    structure::S
    parent::P=nothing
    children::C=HierarchicalLink[]
end


const TopHierarchicalLink{S,C<:Vector} = HierarchicalLink{S,Nothing,C}
const BottomHierarchicalLink{S,P<:AbstractAnatomy} = HierarchicalLink{S,P,Nothing}

Base.parent(s::HierarchicalLink) = getproperty(s, :parent)

AbstractTrees.children(s::HierarchicalLink) = getproperty(s, :children)

Base.getindex(v::HierarchicalLink, i::Int) = children(v)[i]

# TODO find function for searching tree structure
function addchild!(tree:HierarchicalLink, parent::AbstractAnatomy, child::AbstractAnatomy)
end

function addchild!(parent::HierarchicalLink, child::AbstractAnatomy)
    push!(parent.children, HierarchicalLink(child, parent, HierarchicalLink[]))
end

function addchild!(parent::HierarchicalLink, child::Vector)
    for childe_i in child
        addchild!(parent, child)
    end
end


"""
    nchildren(::HierarchicalLink)

Returns the number of children that belong to a node.
"""
nchildren(s::HierarchicalLink) = length(children(s))



function AbstractTrees.printnode(io::IO, v::AbstractAnatomicalStructure)
    print(io, "$(typeof(v).name)($(names(v)))")
end

function Base.show(io::IO, v::AbstractAnatomicalStructure)
    print_tree(v)
end



#=
"""
    MetaStructure{C,M}
"""
struct MetaStructure{V<:AbstractAnatomicalStructure,M} <: AbstractAnatomicalStructure
    node::V
    meta::M
end

"""
    PointStructure
"""
struct PointStructure{V<:AbstractAnatomicalStructure,T<:Real,N} <: AbstractAnatomicalStructure
    vertex::V
    point::NTuple{N,T}
end

struct AnatomicalEdge
    parent::P
    child::C
end


struct SiblingEdge{W,S,D} <: AbstractEdge{W}
    src::S
    dst::D
    weight::W
end

struct ParentChildEdge{

weight(e::SiblingEdge) = e.weight
src(e::SiblingEdge) = e.src
dst(e::SiblingEdge) = e.dst


"""
    AnatomicalSiblings
"""
struct AnatomicalSiblings{names,T}
    siblings::NamedTuple{names,T}
end

siblings(x::AnatomicalSiblings) = getproperty(x, :siblings)

function Base.getproperty(x::AnatomicalSiblings, p::Symbol)
    getproperty(siblings(x), p)
end

Base.getindex(x::AnatomicalSiblings, i::Int) = getindex(siblings(x), i)
Base.getindex(x::AnatomicalSiblings, i::Symbol) = getproperty(x, i)


"""
    substructuretype(s::AbstractAnatomicalStructure) -> Type

Returns the type of the structure immediately wrapped by a given anaatomical
structure type. If the given type doesn't wrap anything it returns the type of
the original arugment.

# Examples
```
hippocampus = BilateralStructure(:hippocampus)

substructuretype(hippocampus)
```
"""
substructuretype(::S) where {S<:AbstractAnatomicalStructure} = S

=#
