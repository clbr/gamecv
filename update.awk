#!/usr/bin/awk -f

BEGIN {
	FS = OFS = ", "
}

{
	if (!/,/) {
		print
	} else {
		if (/unreleased/) {
			$1 = "x"
			$3 = "unreleased"
		}
		$NF = $NF " +"
		print
	}
}
