"""
    AbstractSynapse

"""
abstract type AbstractSynapse{Pre<:AbstractAnatomy,Pos<:AbstractAnatomy} end


abstract type FiberBundle{N,T} <: AbstractVector{T} end
