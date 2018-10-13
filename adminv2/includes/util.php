<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 1:08 PM
 */

class util
{
    public static function call_api($method, $url, $data = false) {
        $curl = curl_init();

        switch($method) {
            case "POST":
                curl_setopt($curl, CURLOPT_POST, 1);

                if($data) {
                    curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
                }
                break;
            default:
                if($data) {
                    $url = sprintf("%s?%s", $url, http_build_query($data));
                }
        }

        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($curl);

        curl_close($curl);

        return $result;
    }
}