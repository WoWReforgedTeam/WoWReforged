<?php
/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/**
 * MaNGOSsoap client example
 *
 * a simple example how to invoke commands using SOAP
 */

$username = 'admin';
$password = ''; /* TODO: Fill it! /Ayos */
$host = "wowreforged.ddns.net";
$soapport = 7878;
$command = "announce SOAP Remote Announce Test!";

$client = new SoapClient(NULL,
array(
    "location" => "http://$host:$soapport/",
    "uri" => "urn:MaNGOS",
    "style" => SOAP_RPC,
    'login' => $username,
    'password' => $password
));

try {
    $result = $client->executeCommand(new SoapParam($command, "command"));

    echo "Command succeeded! Output:<br />\n";
    echo $result;
}
catch (Exception $e)
{
    echo "Command failed! Reason:<br />\n";
    echo $e->getMessage();
}
