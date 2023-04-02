﻿## Gamemode stuff

shipevent-title = Битва на кораблях
shipevent-desc = Нанотрейзен устроила испытания своих кораблей лёгкого класса рядом со станцией


## Objects names & descriptions

ent-CannonComputerShipEvent = консоль управления орудиями
    .desc = { "Консоль для управления корабельными орудиями. Огонь!" }
    .suffix = { "ShipEvent" }
ent-TeamSpawnerShipEvent = спавнер команды
    .desc = { "Сверх-высокотехнологичная блюспейс машинерия, способная создавать пушечное мясо из ничего!" }
    .suffix = { "ShipEvent" }
ent-TeamCreationConsoleShipEvent = консоль создания команды
    .desc = { "Консоль позволяющая создать свою команду для участия в соревнованиях." }
    .suffix = { "ShipEvent" }
ent-TurretLoaderShipEvent = зарядник орудий
    .desc = { "Универсальный зарядник для орудий различного типа. Использует принцип блюспейс телепортации для работы." }
    .suffix = { "ShipEvent" }
ent-TurretAmmoContainerRegular = контейнер для боеприпасов
    .desc = { "Металлический контейнер стандартизированного размера для использования в зарядниках орудий." }
    .suffix = { "ShipEvent" }
ent-TurretAmmoContainerBluespace = контейнер для боеприпасов (блюспейс)
    .desc = { "Увеличенная версия стандартного контейнера для боеприпасов." }
    .suffix = { "ShipEvent" }


## Global annoucements & team messages

shipevent-announcement-title = Управления флотом Нанотрейзен

shipevent-team-add = Новая команда '{ $teamname }' (корабль - '{ $shipname }') вступила в соревнования!
shipevent-team-remove = Команда '{ $teamname }' (корабль - '{ $shipname }') покинула соревнования по причине { $removereason }
shipevent-team-respawn = Команда '{ $teamname }' (корабль - '{ $shipname }') временно покинула соревнования по причине { $respawnreason }. Ожидаемое время до восстановления: { $respawntime } минут(а).
shipevent-team-shiprename = Команда '{ $teamname }' переименовала свой корабль с '{ $oldname }' на '{ $newname }'
shipevent-team-captainchange = Капитан { $oldcap } был заменён на своём посту { $newcap }. Да здравствует новый капитан!
shipevent-team-respawnnow = Идёт респавн команды...
shipevent-team-bonusinterval = Команда прожила без респавна очередные { $time } минут, и получает за это { $points } очков!
shipevent-team-newmember = К команде присоединился { $name }! Поздоровайтесь.

shipevent-respawn-default = неудачного стечения обстоятельств
shipevent-respawn-dead = смерти всего её состава
shipevent-respawn-tech = уничтожения жизненно важных компонентов её корабля

shipevent-remove-default = недовольства адмирала


## Role stuff

shipevent-role-name = Пилот
shipevent-role-greet = Вы - член испытательной группы, созданной Нанотрейзен для тестирования кораблей лёгкого класса и развлечения её начальства. Уничтожьте своих врагов любой ценой!


## Team view UI text

shipevent-teamview-windowtitle = СПИСОК КОМАНД

shipevent-teamview-heading = Активные команды:

shipevent-teamview-heading-name = Название команды
shipevent-teamview-heading-shipname = Название корабля
shipevent-teamview-heading-crew = Живой экипаж
shipevent-teamview-heading-points = Очки

shipevent-teamview-toggle-name = Активные команды
shipevent-teamview-toggle-desc = Просмотр списка активных команд


## Team creation UI text

shipevent-lobby-windowtitle = ЛОББИ

shipevent-lobby-createteam = Создать команду
shipevent-lobby-refresh = Обновить
shipevent-lobby-empty = Пусто
shipevent-lobby-join = Войти

shipevent-teamcreation-windowtitle = СОЗДАНИЕ КОМАНДЫ

shipevent-teamcreation-response-invalidname = Данное имя уже занято/недоступно по другой причине.
shipevent-teamcreation-response-invalidcolor = Данный цвет уже занят/недоступен по другой причине.
shipevent-teamcreation-response-blacklistself = Зачем вы пытаетесь добавить себя же в блеклист?
shipevent-teamcreation-response-eventnotstarted = Шип ивент не активирован.

shipevent-teamcreation-name = Имя команды:
shipevent-teamcreation-color = Цвет команды (hex):
shipevent-teamcreation-blacklist = Блеклист (сикеи через запятую):
shipevent-teamcreation-creationbutton = СОЗДАТЬ КОМАНДУ


# Turret loader UI text

shipevent-turretloader-windowtitle = ЗАРЯДНИК ОРУДИЙ

shipevent-turretloader-status = Статус:
shipevent-turretloader-status-normal = Работает
shipevent-turretloader-status-unbound = Нет привязки
shipevent-turretloader-status-nocontainer = Нет контейнера
shipevent-turretloader-status-broken = Неисправность

shipevent-turretloader-ammocount = Количество патронов:
shipevent-turretloader-turret = Турель:

shipevent-turretloader-ejectcontainerbutton = ИЗВЛЕЧЬ КОНТЕЙНЕР
shipevent-turretloader-refreshbutton = ОБНОВИТЬ UI


## Cannon console
shipevent-cannonconsole-ammostatus = Боезапас


## Roundend messages

shipevent-roundend-heading = Соревнование окончено. Команды принявшие участие:
shipevent-roundend-team = Команда '[color={ $color }]{ $name }[/color]' (корабль - '{ $shipname }') под руководством '{ $capname }':
shipevent-roundend-teamstats = Набрала { $points } очков, { $kills } фрагов и { $assists } ассистов, а также зареспавнилась { $respawns } раз.
shipevent-roundend-winner = ПОБЕДИТЕЛЬ - КОМАНДА '{ $name }'! Поздравьте их в ООЦ (или полейте грязью).


## Misc.

shipevent-blacklist = Вы в блеклисте сией команды. Наверное, вы чем-то обидели капитана.
