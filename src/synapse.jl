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
abstract type AbstractFiberBundle{N,T} <: AbstractVector{T} end

"""
    FiberBundle



struct LineString{
        Dim, T <: Real,
        P <: AbstractPoint,
        V <: AbstractVector{<: LineP{Dim, T, P}}
    } <: AbstractVector{LineP{Dim, T, P}}
    points::V
    path::LineSegments
end

"""
struct FiberBundle{D,T,P,V}
    pathway::LineString{D,T,P,V}
end

merge_fiber_segments()

function mergefibers
end


