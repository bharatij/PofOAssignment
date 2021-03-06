% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TrioRecoverPostSlidingMissingHetSites.R
\name{TrioRecoverMissing}
\alias{TrioRecoverMissing}
\title{Step 3 of 3 : Recover het sites in offsprings set to missing during sliding window (step2) in Trios}
\usage{
TrioRecoverMissing(vcf1, vcf2, ped)
}
\arguments{
\item{vcf1}{Phased genotype vcf file for family before sliding window step (Step2) but after Mendel error (Step1)}

\item{vcf2}{Phased genotype vcf file (after phasing and QC and before sliding window step)}

\item{ped}{Tab delimited Pedigree file with four columns(FamilyID, IndividualID, FatherID, MotherID) with NO header.}
}
\description{
Compare offspring genotypes in imputed QC data and phase corrected data at het sites in offspring and if is missing in phase corrected data, use Medelian inheritance rule.
Takes in phased vcf files of trio familyd data before sliding window and after sliding windo, and pedigree file.
}
\note{
Automatically creates dir named 'PhaseSwitchMissingFix' one level above the data dir for the result file of this process
}
\examples{
TrioRecoverMissing("/my/dir/MendelErrorFixed/myphased.MendelErrorFixed.vcf","/my/dir/seSwitchSlidingWindown/myphased.MendelErrorFixed.PhaseSwitch.vcf","/my/dir/data/myped.txt")
}
\author{
Bharati Jadhav
}

