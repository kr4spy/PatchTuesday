# PatchTuesday
This script will help predict when a patching event can occur given an offset amount of weeks from Patch Tuesday.

There are two scripts, one written in powershell, the other Python 2.x.  Either way, it may need to be altered with a different iteration of the week implemented.

Either way the intention is to demonstrate when Patch tuesday is for a given year.  With the offset, it can demonstrate when the patch date will be.

For instance, in the default powershell script, the patch date will be set to the same week as Patch Tuesday and set to the Saturday after that week.  So for January of 2020, patch tuesday was Jan 14, 2020 and the patch date would be Saturday, Jan 18, 2020.

Altering the week to say week 3 (two weeks after patch tuesday) and setting the patch date to a Sunday it would show a patch tuesday of Jan 14, 2020 and a patch date of Sunday, Feb 2, 2020.

Powershell usage (bypassing execution policy):
powershell -ep bypass ./PatchTuesday.ps1

Python usage (version 2.x):
python PatchTuesday.py
