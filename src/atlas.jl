"""
    HasAnatomicalStructures{T}


"""
struct HasAnatomicalStructures{T} end

struct HasVertices end

struct HasFaces end

struct HasCoordinates end

"""
    AnatomicalAtlas

Serves as a metadata to assist other types (arrays, meshes, etc.) in defining
atlases.
"""
struct AnatomicalAtlas{A,I,C,P,H}
    anatomy::A
    identifier::I
    colors::C
    positions::P
    hierarchy::H
end

# This is the GL type we try to immitate
# - GLNormalAttributeMesh
# - GLNormalMesh
# - GLNormalUVMesh
# - GLNormalVertexcolorMesh
# - GLPlainMesh
#
