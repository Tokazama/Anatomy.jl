
###
### Neuroanatomy specific structures
###

abstract type AbstractFiber <: AbstractAnatomicalStructure end



"""
    WhiteMatter
"""
struct WhiteMatter <: AbstractWhiteMatter
    structure::AnatomicalStructure
end

"""
    Commisure
"""
struct Commisure <: AbstractWhiteMatter
    structure::AnatomicalStructure
end
Commisure(s::AbstractAnatomicalStructure) = Commisure(WhiteMatter(s))

abstract type AbstractGrayMatter <: AbstractAnatomicalStructure end

"""
    GrayMatter
"""
struct GrayMatter{S<:AbstractAnatomicalStructure} <: AbstractGrayMatter
    structure::S
end

#=
TODO: These need to recur over children (note substructures)
"""
    hasgraymatter -> Bool
"""
function hasgraymatter(s::AbstractAnatomicalStructure)
    HasGrayMatter{true}() === HasGrayMatter(s)
end

"""
    haswhitematter -> Bool
"""
function haswhitematter(s::AbstractAnatomicalStructure)
    HasWhiteMatter{true}() === HasWhiteMatter(s)
end
=#

"""
    Sulcus
"""
struct Sulcus{S<:AbstractAnatomicalStructure} <: AbstractAnatomicalStructure
    structure::S
end

issulcus(::Sulcus) = true
struct NeuroStructure{S<:AbstractAnatomicalStructure,C<:Tuple} <: AbstractAnatomicalStructure
    structure::S
    children::C
end


"""
    iswhitematter(::AbstractAnatomicalStructure) -> Bool
"""
iswhitematter(s::AbstractAnatomicalStructure) = iswhitematter(substructuretype(s))
iswhitematter(::Type{S}) where {S<:AbstractAnatomicalStructure} = iswhitematter(substructuretype(s))
iswhitematter(::Type{S}) where {S<:WhiteMatter} = true
iswhitematter(::Type{S}) where {S<:AnatomicalStructure} = false

"""
    isgraymatter(::AbstractAnatomicalStructure) -> Bool
"""
isgraymatter(s::AbstractAnatomicalStructure) = iswhitematter(substructuretype(s))
isgraymatter(::Type{S}) where {S<:AbstractAnatomicalStructure} = iswhitematter(substructuretype(s))
isgraymatter(::Type{S}) where {S<:GrayMatter} = true
isgraymatter(::Type{S}) where {S<:AnatomicalStructure} = false

function NeuroStructure(
    structure::String;
    substructures::Tuple=(),
    position::Symbol=:unilateral,
    graymatter::Bool=true,
    whitematter::Bool=true)

    s = AnatomicalStructure(structure)
    if graymatter
        s = GrayMatter(s)
    end
    if whitematter
        s = WhiteMatter(s)
    end
    NeuroStructure(s, substructures)
end

