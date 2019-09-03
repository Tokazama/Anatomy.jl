
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
