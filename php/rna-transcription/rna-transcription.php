<?php

/**
 * @param string $dnaStrand
 * @return null|string
 */
function toRna($dnaStrand)
{

    /** @var array $transcriptions */
    $transcriptions = [
        'C' => 'G',
        'G' => 'C',
        'T' => 'A',
        'A' => 'U'
    ];

    if (empty($dnaStrand)) {
        return null;
    }

    $nucleotide = substr($dnaStrand, 0, 1);
    return $transcriptions[$nucleotide] . toRna(substr($dnaStrand, 1));
}