<?php

function data_encrypt($data) {
    $salt = C('SALT');
    return md5($salt . $data);
}