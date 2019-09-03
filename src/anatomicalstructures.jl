"""
    AbstractAnatomy

Supertype for representing anatomical information.
"""
abstract type AbstractAnatomy end

"""
    AnatomicalStructure{P}

Represents an  anatomical structure. 
"""
struct AnatomicalStructure <: AbstractAnatomy
    name::Symbol
end

AnatomicalStructure(n::String) = AnatomicalStructure(Symbol(n))

Base.names(s::AnatomicalStructure) = s.name

"""
    PositionedStructure
"""
abstract type PositionedAnatomy{S} <: AbstractAnatomy end

struct RelativelyPositionedAnatomy{R,P} end



"""
    PositionedStructure
"""
struct PositionedStructure{T} <: AbstractAnatomy
    structure::AnatomicalStructure
    position::Point3{T}
end

"""
    AbstractAnatomicalLink

Supertype for representing anatomical information that links other
`AbstractAnatomy` subtypes.
"""
abstract type AbstractAnatomicalLink{T} <: AbstractAnatomy end


"""
    SimpleLink

A link containing only positional information that chains together anatomical
structures.
"""
struct SimpleLink{T} <: AbstractAnatomicalLink{T}
    src::Point3{T}
    dst::Point3{T}
end

"""
    FlowLink

Represents a link where something flows between two structures.
"""
struct FlowLink{T} <: AbstractAnatomicalLink{T}
    src::PositionedStructure{T}
    dst::PositionedStructure{T}
end

"""
    NeuronFiberLink
"""
struct NeuronFiberLink{T} <: AbstractAnatomicalStructure{T}
    fibers::AnatomicalStructure
    link::FlowLink{T}
end

"""
    NeuronFibersPathway
"""
struct NeuronFibersPathway{T} <: AbstractAnatomicalStructure{T}
    fibers::AnatomicalStructure
    link::FlowLink{T}
    pathway::Vector{SimpleLink{T}}
end

"""
    HierarchicalLink
"""
struct HierarchicalLink{S<:AbstractAnatomy,P,C} <: AbstractAnatomy
    structure::S
    parent::P
    children::C
end

const TopHierarchicalLink{S,C<:Vector} = HierarchicalLink{S,Nothing,C}
const BottomHierarchicalLink{S,P<:AbstractAnatomy} = HierarchicalLink{S,P,Nothing}

Base.parent(s::HierarchicalLink) = getproperty(s, :parent)

AbstractTrees.children(s::HierarchicalLink) = getproperty(s, :children)

Base.getindex(v::AbstractAnatomicalStructure, i::Int) = children(v)[i]

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
