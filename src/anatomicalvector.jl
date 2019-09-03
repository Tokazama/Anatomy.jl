
"""
    AnatomicalStructureList
"""
struct AnatomicalVector{T<:AbstractAnatomicalStructure} <: AbstractVector{T}
    values::Vector{T}
end

Base.getindex(av::AnatomicalVector, i::Int) = av.values[i]

Base.length(av::AnatomicalVector) = length(av.values)

Base.size(av::AnatomicalVector) = size(av.values)

Base.names(av::AnatomicalVector) = names.(av.values)

function splitbilaterals(av::AnatomicalVector{T}) where {T}
    out = T[]
    for a_i in av
        if isbilateral(a_i)
            push!(out, left(a_i))
            push!(out, right(a_i))
        else
            push!(out, a_i)
        end
    end
    return AnatomicalVector(out)
end


function Base.getindex(a::AnatomicalVector, i::AbstractAnatomicalStructure)
    getindex(a, Base.to_index(a, i))
end

function Base.to_index(a::AnatomicalVector, i::AbstractAnatomicalStructure)
    searchsortedfirst(names(a), names(i))
end

function Base.show(io::IO, a::AnatomicalVector)
    print(io, summary(a))
    for a_i in a
        print(io, summary(a_i))
    end
end
