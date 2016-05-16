#! /usr/bin/env php

<?php
$strIp = '101.200.77.107';
$strUserName = 'zdev';
$strPasswd = 'change1tlater';
$strDbName = 'learn_job';

//连接上数据库 mysqli类
$mysqli = new mysqli($strIp,$strUserName,$strPasswd,$strDbName);

//构造sql
$strSql = "select * from continent";

//查询，返回结果集对象 mysqli_result类
$result = $mysqli->query($strSql);

//将查询结果放入数组中
//三种类型：MYSQLI_ASSOC ，MYSQLI_NUM,MYSQLI_BOTH
//do{
//    $arrRecords = $result->fetch_array(MYSQLI_ASSOC);
//    //$arrRecords = $result->fetch_assoc();
//    print_r($arrRecords);
//}while($arrRecords);
//
//插入数据，预处理mysqli_stmt

//处理xml小文本,一次把文件的内容读入内存中
//$xml = simplexml_load_string($xml); 
//$xml = simplexml_load_file("en_loclist.xml");

//处理xml大文件
$xml = new XMLReader();
$xml->open("en_loclist.xml");

$arrResults = [];
$arrData = [];
while($xml->read()){
    if($xml->name === 'CountryRegion' 
        && $xml->nodeType === \XMLReader::ELEMENT
    ){
        $arrData['country_name'] = $xml->getAttribute('Name');
        $arrData['country_code'] = $xml->getAttribute("Code");
    }
    if($xml->name === 'State' 
        && $xml->nodeType == \XMLReader::ELEMENT
    ){
        $arrData['state_name'] = $xml->getAttribute('Name');
        $arrData['state_code'] = $xml->getAttribute('Code');
    }
    if($xml->name === 'City' 
        && $xml->nodeType == \XMLReader::ELEMENT
    ){
        $arrData['city_name'] = $xml->getAttribute('Name');
        $arrData['city_code'] = $xml->getAttribute('Code');
        $arrResults[] = $arrData;
    }
}

$strSql = "insert into city_en(country,state,city,state_code,city_code,country_code) values(?,?,?,?,?,?)";
foreach ($arrResults as $arrResult){
    $statement = $mysqli->prepare($strSql);
    $statement->bind_param('ssssss',$arrResult['country_name'],$arrResult['state_name'],$arrResult['city_name'],
                                    $arrResult['state_code'],$arrResult['city_code'],$arrResult['country_code']);
    $statement->execute();
}


//free result
$result->free();

//关闭数据库
$mysqli->close();
?> 

