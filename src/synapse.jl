# TODO:
# mergefiber - this should probably have interpolative, averaging, and fiber cut options/variations
# combinefibers - ditto

###
### Synapse interface
###
"""
    AbstractSynapse{Pre,Pos,AP,A}

"""
abstract type AbstractSynapse{Pre,Pos,AP,A} end

"""
    Synapse
"""
struct Synapse{Pre,Pos,AP,A} <: AbstractSynapse{Pre,Pos,AP,A}
    presynaptic::Pre
    postsynaptic::Pos
    activityparams::AP
    activity::A
end


"""
    presynaptic(s::AbstractSynapse)
"""
function presynaptic(s::AbstractSynapse) end
presynaptic(s::Synapse{Pre,Pos,AP,A}) where {Pre,Pos,AP,A} = getproperty(s, :presynaptic)::Pre

"""
    postsynaptic(s::AbstractSynapse)
"""
function postsynaptic(s::AbstractSynapse) end
postsynaptic(s::Synapse{Pre,Pos,AP,A}) where {Pre,Pos,AP,A} = getproperty(s, :postsynaptic)::Pos

"""
    activityparams(s::AbstractSynapse)
"""
function activityparams(s::AbstractSynapse) end
activityparams(s::Synapse{Pre,Pos,AP,A}) where {Pre,Pos,AP,A} = getproperty(s, :activityparams)::AP

"""
    activity(::AbstractSynapse)
"""
function activity(s::AbstractSynapse) end
activity(s::Synapse{Pre,Pos,AP,A}) where {Pre,Pos,AP,A} = getproperty(s, :activity)::A

"""
    activate!(s::AbstractSynapse)
"""
activate!(s::AbstractSynapse) = activity(s)(presynaptic(s), postsynaptic(s), activityparams(s))


###
### Fiber interface
###

"""
    AbstractFiberBundle

"""
abstract type AbstractFiberBundle{Nu,Syn,T,P} <: AbstractVector{T} end

"""
    FiberBundle

"""
struct FiberBundle{Nu,Syn,T,P<:AbstractVector{T}} <: AbstractFiberBundle{Nu,Syn,T,P}
    nucleus::Nu
    synapse::Syn
    pathway::P
end

"""
    nucleus(f::AbstractFiberBundle) -> AbstractAnatomy
"""
function nucleus(f::AbstractFiberBundle) end
nucleus(f::FiberBundle{Nu,Syn,T,P}) where {Nu,Syn,T,P} = getproperty(f, :nucleus)::Nu

"""
    synapse(f::AbstractFiberBundle) -> AbstractSynapse
"""
function synapse(f::AbstractFiberBundle) end
synapse(f::FiberBundle{Nu,Syn,T,P}) where {Nu,Syn,T,P} = getproperty(f, :synapse)::Syn

"""
    pathway(f::AbstractFiberBundle) -> AbstractSynapse
"""
function pathway(f::AbstractFiberBundle) end
pathway(f::FiberBundle{Nu,Syn,T,P}) where {Nu,Syn,T,P} = getproperty(f, :pathway)::P




"""
    mergefibers(method, f; kwargs...)

Merge fiber bundle segments along its pathway.
"""
function mergefiber(method, f::FiberBundle; kwargs...) end

"""
    combinefibers(method, f...; kwargs)

Merge fiber bundles together into a single fiber bundle.
"""
function combinefibers(method, f::FiberBundle...; kwargs...) end


