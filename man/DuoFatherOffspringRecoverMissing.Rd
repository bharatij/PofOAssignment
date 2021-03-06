% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DuoFatherOffspringRecoverPostSlidingMissingHetSites.R
\name{DuoFatherOffspringRecoverMissing}
\alias{DuoFatherOffspringRecoverMissing}
\title{Step 3 of 3 : Recover het sites in offsprings set to missing during sliding window (step2) in father-offspring Duos}
\usage{
DuoFatherOffspringRecoverMissing(vcf1, vcf2, ped)
}
\arguments{
\item{vcf1}{Phased genotype vcf file for family before sliding window step (Step2) but after Mendel error (Step1)}

\item{vcf2}{Phased genotype vcf file (after phasing and QC and before sliding window step)}

\item{ped}{Tab delimited Pedigree file with four columns(FamilyID, IndividualID, FatherID, MotherID) with NO header.}
}
\description{
Compare offspring's genotypes in imputed QC data and phase corrected data at het sites in offspring where mothe ris homozygous and if is missing in phase corrected data, use Medelian inheritance rule.
Takes in phased vcf files of family data before sliding window and after sliding windo, and pedigree file.
}
\note{
Automatically creates dir named 'PhaseSwitchMissingFix/FatherOffsprings' one level above the data dir for the result file of this process
}
\examples{
DuoMotherOffspringRecoverMissing("/my/dir/MendelErrorFixed/FatherOffsprings/myphased.MendelErrorFixed.vcf","/my/dir/PhaseSwitchSlidingWindown/FatherOffsprings/myphased.MendelErrorFixed.PhaseSwitch.vcf","/my/dir/data/myped.txt")
}
\author{
Bharati Jadhav
}

