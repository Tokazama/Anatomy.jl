const AnteriorCingulum = BilateralStructure("anterior cingulum")

const AnteriorCingulateCortex = BilateralStructure("anterior cingulate cortex")

const PosteriorCingulateCortex = BilateralStructure("posterior cingulate cortex")

const PosteriorCingulum = BilateralStructure("posterior cingulum")

const CingulateCingulum = BilateralStructure("cingulate cingulum")
const ParahippocampalCingulum = BilateralStructure("parahippocampal cingulum")

const CingulateGyrus = BilateralStructure(
    name = "cingulate gyrus",
    children = (
        AnteriorCingulateCortex,
        AnteriorCingulum,
        PosteriorCingulateCortex,
        PosteriorCingulum
   )
)
