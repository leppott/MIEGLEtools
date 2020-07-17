# Shiny Global File

# Packages
library(shiny)
library(BioMonTools)
library(DT)
library(ggplot2)
# library(plotly)
library(shinyjs) # used for download button enable

# Drop-down boxes
#MMIs <- c("BIBI_genus", "BIBI_family", "FIBI")
#MMIs <- c("BIBI_MBSS", "BIBI_MSW", "FIBI")
MMIs <- c("MIEGLE_2020")
Community <- c("bugs")
col_Strata <- c("STRATA_R")

# File Size
# By default, the file size limit is 5MB. It can be changed by
# setting this option. Here we'll raise limit to 10MB.
options(shiny.maxRequestSize = 25*1024^2)

# define which metrics michigan wants to keep in indices

MichMetrics <- c("pt_nonIns"
                 , "nt_CruMol"
                 ,"pi_ffg_pred"
                 ,"pi_ffg_shred"
                 ,"pi_habit_cling"
                 ,"pi_CruMol"
                 ,"nt_tv_toler"
                 ,"pt_nonIns"
                 ,"pi_habit_climb"
                 ,"pi_EPT"
                 ,"pi_tv_toler"
                 ,"nt_EPT"
                 ,"pi_Cru"
                 ,"pt_tv_intol"
                 ,"nt_nonIns"
                 ,"pi_ffg_scrap"
                 ,"pi_IsoSnlLch"
                 ,"pi_nonIns"
                 ,"pi_Pleco"
                 ,"pt_tv_toler"
                 ,"pi_ffg_col"
                 ,"pi_habit_sprawl"
                 ,"nt_Trich"
                 ,"nt_habit_cling"
                 ,"pi_tv_intol"
                 ,"pi_ffg_cllct"
                 ,"pi_hab_sprwl"
                 ,"nt_tv_intol"
)# END MichMetricss

# Get Master Taxa Lists
# url_mt_fish <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Fish.csv"
# df_mt_fish  <- read.csv(url_mt_fish)
# url_mt_bugs <- "https://github.com/leppott/MBSStools_SupportFiles/raw/master/Data/CHAR_Bugs.csv"
# df_mt_bugs  <- read.csv(url_mt_bugs)

# Metrics.Bugs.Scores.MBSS <- read.csv(file.path(".", "Results", "Metrics.Bugs.Scores.MBSS.csv"))
#
# Metrics.Fish.Scores <- read.csv(file.path(".", "Results", "Metrics.Fish.Scores.csv"))


# plot_BIBI <- ggplot(Metrics.Bugs.Scores.MBSS, aes(IBI), fill=STRATA_R, shape=STRATA_R) +
#                     geom_dotplot(aes(fill=STRATA_R)) +
#                     labs(x="BIBI") + geom_vline(xintercept = 3) +
#                     scale_x_continuous(limits = c(1, 5)) +
#                     scale_fill_discrete(name="STRATA", breaks=c("COASTAL", "EPIEDMONT", "HIGHLAND")) +
#                     theme(axis.title.y=element_blank(), axis.ticks.y=element_blank(), axis.text.y=element_blank())
#
# plot_FIBI <- ggplot(Metrics.Fish.Scores, aes(IBI), fill=FIBISTRATA, shape=FIBISTRATA) +
#                     geom_dotplot(aes(fill=FIBISTRATA)) + #balks at bins=30
#                     labs(x="FIBI") +
#                     geom_vline(xintercept = 3) +
#                     scale_x_continuous(limits = c(1, 5)) +
#                     scale_fill_discrete(name="STRATA", breaks=c("COASTAL", "EPIEDMONT", "HIGHLAND", "COLD")) +
#                     theme(axis.title.y=element_blank(), axis.ticks.y=element_blank(), axis.text.y=element_blank())
#

# https://stackoverflow.com/questions/51292957/is-there-a-way-to-open-a-users-vignette-in-a-shiny-link
# Function to get link to a package Vignette
# get_vignette_link <- function(...) {
#   x <- vignette(...)
#   if (nzchar(out <- x$PDF)) {
#     ext <- tools::file_ext(out)
#     port <- if (tolower(ext) == "html")
#       tools::startDynamicHelp(NA)
#     else 0L
#     if (port > 0L) {
#       out <- sprintf("http://127.0.0.1:%d/library/%s/doc/%s",
#                      port, basename(x$Dir), out)
#       return(out)
#     }
#   }
#   stop("no html help found")
# }
