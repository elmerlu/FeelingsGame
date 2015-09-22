SELECT `id`,`uid`,`time`,`value`,`coordinatesId`
FROM `feeling` AS F
WHERE `time` >= CURDATE() AND `time` = (
    SELECT MAX(`time`) AS 'time' FROM `feeling` WHERE `uid` = F.uid GROUP BY `uid`
)
GROUP BY `uid`
