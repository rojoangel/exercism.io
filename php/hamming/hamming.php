<?php

function distance($strandA, $strandB)
{
    guardSameStrandLength($strandA, $strandB);

    if (empty($strandA) && empty($strandB)) {
        return 0;
    }

    return (int) areDifferent(substr($strandA, 0, 1), substr($strandB, 0, 1))
        + distance(substr($strandA, 1), substr($strandB, 1));
}

/**
 * @param $strandA
 * @param $strandB
 */
function guardSameStrandLength($strandA, $strandB)
{
    if (strlen($strandA) != strlen($strandB)) {
        throw new InvalidArgumentException('DNA strands must be of equal length.');
    }
}

/**
 * @param $nucleotideA
 * @param $nucleotideB
 * @return bool
 */
function areDifferent($nucleotideA, $nucleotideB)
{
    return $nucleotideA !== $nucleotideB;
}
