<?php

function from(DateTime $date) {
    $gigaSecond = new DateInterval(sprintf('PT%uS', 1e+9));
    return $date->add($gigaSecond);
}