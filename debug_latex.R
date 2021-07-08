# https://yihui.org/tinytex/r/#debugging
# Update all your R and LaTeX packages:

update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()

# If you see an error message like “tlmgr: Remote repository is newer than local (2018 < 2019)” when updating LaTeX packages, it means your TinyTeX is too old now, and you need to reinstall it for a newer version:
  
tinytex::reinstall_tinytex()
  
# If neither updating nor reinstalling solves the problem, set the option in R:
  
options(tinytex.verbose = TRUE)

# before you compile the document. This may show additional messages to help you debug the problem. If you are using R Markdown and the Knit button in RStudio, you should set the option in a code chunk in the R Markdown document.

# ```{r, include=FALSE}
# options(tinytex.verbose = TRUE)
# ```

# You can, and perhaps should, remove this option after you finish debugging (to silence LaTeX, because you no longer need to read the full log).

# If none of these steps work, please follow the guide to report your problem. In case you are too busy, please remember the most important thing when reporting problems: a minimal reproducible example.
# https://yihui.org/issue/

# did not work, newer cannot seem to  overwrite older MS R Open ver even if complied
install.packages("mice", type="binary")

# PLOS example error:
#   LaTeX Error: Environment CSLReferences undefined.
# Error: LaTeX failed to compile PLOSexample.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See PLOSexample.log for more info.
#   Execution halted

# StatsMed example warning:
#   Output created: StatsMedexample.pdf
# Warning message:
#   LaTeX Warning: Unused global option(s):
#   [AMA,STIX1COL]. 

# Tufte PDF example warning:
#   Output created: TufteExample.pdf
# Warning messages:
#   1: In block_exec(params) : Failed to tidy R code in chunk 'setup'. Reason:
#   Error in loadNamespace(name) : there is no package called 'formatR'
# 
# 2: LaTeX Warning: Marginpar on page 1 moved.
# LaTeX Warning: Marginpar on page 2 moved.
# LaTeX Warning: Marginpar on page 2 moved.
# Package fontspec Warning: \addfontfeature(s) ignored on line 262; it cannot be
# (fontspec)                used with a font that wasn't selected by a fontspec
# (fontspec)                command.
# (fontspec)                 
# (fontspec)                 The current font is "\TU/lmr/m/n/10 ".
# (fontspec)                  The requested feature is "LetterSpace=10". 
# Package fontspec Warning: \addfontfeature(s) ignored on line 320; it cannot be
# (fontspec)                used with a font that wasn't selected by a fontspec
# (fontspec)                command.
# (fontspec)                 
# (fontspec)                 The current font is "\TU/lmr/m/n/10 ".
# (fontspec)                  The requested feature is "LetterSpace=10". 
# LaTeX Warning: Marginpar on page 4 moved.
# LaTeX Warning: Marginpar on page 4 moved.
# Package fontspec Warning: \addfontfeature(s) ignored on line 360; it canno [... truncated] 

