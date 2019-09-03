export # White matter
       CorpusCallosum,
       ForcepsMajor,
       ForcepsMinor,
       CingulateCingulum,  # TODO I dislike the label cingulate cingulum very much
       ParahippocampalCingulum,
       Fornix,
       InferiorFrontalOccipitalFasciculus,
       InferiorLongitudinalFasciculus,
       CorticospinalTract,
       SuperiorLongitudinalFasciculus,
       ArcuateFasciculus,
       AnteriorThalamicRadiation,
       Uncinate


#include("neurotypes.jl")
include("cerebellum.jl")
include("cingulate.jl")
include("fibers.jl")
include("temporal_lobe.jl")
include("frontal_lobe.jl")
include("occipital_lobe.jl")
include("parietal_lobe.jl")
include("diencephalon.jl")
