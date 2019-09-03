const CerebellarVemusLobuleI = AnatomicalStructure("cerebellar vermus lobule I")
const CerebellarVemusLobuleII = AnatomicalStructure("cerebellar vermus lobule II")
const CerebellarVemusLobuleIII = AnatomicalStructure("cerebellar vermus lobule III")
const CerebellarVemusLobuleIV = AnatomicalStructure("cerebellar vermus lobule IV")
const CerebellarVemusLobuleV = AnatomicalStructure("cerebellar vermus lobule V")
const CerebellarVemusLobuleVI = AnatomicalStructure("cerebellar vermus lobule VI")
const CerebellarVemusLobuleVII = AnatomicalStructure("cerebellar vermus lobule VII")
const CerebellarVemusLobuleVIII = AnatomicalStructure("cerebellar vermus lobule VIII")
const CerebellarVemusLobuleIX = AnatomicalStructure("cerebellar vermus lobule IX")
const CerebellarVemusLobuleX = AnatomicalStructure("cerebellar vermus lobule X")

const FlocculonodularLobe = AnatomicalStructure("flocculonodular lobe")

# TODO sub structures need more about cerebellar lob components
const Vestibulocerebellum = BilateralStructure(
    name = "vestibulocerebellum",
    children = (
        FlocculonodularLobe,
    )
)
const Archicerebellum = Vestibulocerebellum

# TODO sub structures for Cerebrocerebellum
const Cerebrocerebellum = BilateralStructure(
    name = "cerebrocerebellum"
)

"""
    Vermis

* Catani and Thiebaut de Schotten, 2008
* Dell'Acqua et al., 2013
* Meola et al., 2016a; Meola et al., 2016c; Wakana et al., 2004
"""
const Vermis = AnatomicalStructure("vermis")

const CerebellumCortex = AnatomicalStructure("cerebellum cortex")
#const CerebellumWhiteMatter = AnatomicalStructure("cerebellum white matter")

#= TODO this needs a different separation than white matter vs cortex
const Cerebellum = AnatomicalStructure(
    name = "Cerebellum",
    children = (
        CerebellumCortex,
        CerebellumWhiteMatter
    )
)
=#

# TODO double check paravermis
const Paravermis = BilateralStructure("paravermis")

const Spinocerebellum = BilateralStructure(
    name = "ppinocerebellum",
    children = (
        Vermis,
        Paravermis  # TODO Paravermis
    )
)
const Paleocerebellum = Spinocerebellum

