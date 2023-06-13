## Part 1. Настройка gitlab-runner

#### Скачать и установить на виртуальную машину gitlab-runner

Сначала настроим репозиторий

![gitlab-runner-curl](screens/gitlab-runner-curl.png)

Теперь установим пакет

![gitlab-runner-install](screens/gitlab-runner-install.png)

#### Запустить gitlab-runner и зарегистрировать его для использования в текущем проекте (DO6_CICD)

![gitlab-runner-register](screens/gitlab-runner-register.png)

Для регистрации понадобятся URL и токен, которые можно получить на страничке задания на платформе.


## Part 2. Сборка

#### Написать этап для CI по сборке приложений из проекта C2_SimpleBashUtils:

В файле gitlab-ci.yml добавить этап запуска сборки через мейк файл из проекта C2

![gitlab-yml-build](screens/gitlab-yml-build.png)

Файлы, полученные после сборки (артефакты), сохранять в произвольную директорию со сроком хранения 30 дней.


## Part 3. Тест кодстайла

#### Написать этап для CI, который запускает скрипт кодстайла (clang-format):

![gitlab-yml-style-2](screens/gitlab-yml-style-2.png)

Если кодстайл не прошел, то "зафейлить" пайплайн

![gitlab-yml-style-right](screens/gitlab-yml-style-right.png)

В пайплайне отобразить вывод утилиты clang-format

Нарочно зафейлено, чтобы показать вывод ошибки

![gitlab-yml-style-wrong](screens/gitlab-yml-style-wrong.png)


## Part 4. Интеграционные тесты

#### Написать этап для CI, который запускает ваши интеграционные тесты из того же проекта:

![gitlab-yml-test-1](screens/gitlab-yml-test-1.png)

#### Запускать этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно

![gitlab-yml-test-2](screens/gitlab-yml-test-2.png)

Если тесты не прошли, то "зафейлить" пайплайн

![gitlab-all-script](screens/gitlab-all-script.png)

![gitlab-yml-testing_right](screens/gitlab-yml-testing-right.png)

В пайплайне отобразить вывод, что интеграционные тесты успешно прошли / провалились

![gitlab-test](screens/gitlab-test.png)

![gitlab-yml-testing_output](screens/gitlab-yml-testing-output.png)


## Part 5. Этап деплоя

#### Поднять вторую виртуальную машину Ubuntu Server 20.04 LTS

![gitlab-ping](screens/gitlab-ping.png)

#### Написать этап для CD, который "разворачивает" проект на другой виртуальной машине

Запускать этот этап вручную при условии, что все предыдущие этапы прошли успешно

![gitlab-deploy-yml](screens/gitlab-deploy-yml.png)

#### Написать bash-скрипт, который при помощи ssh и scp копирует файлы, полученные после сборки (артефакты), в директорию /usr/local/bin второй виртуальной машины

![gitlab-deploy-script](screens/gitlab-deploy-script.png)

#### В файле gitlab-ci.yml добавить этап запуска написанного скрипта

![gitlab-deploy-yml](screens/gitlab-deploy-yml.png)

В результате вы должны получить готовые к работе приложения из проекта C2_SimpleBashUtils (s21_cat и s21_grep) на второй виртуальной машине.

![gitlab-deploy-screen](screens/gitlab-deploy-screen.png)

Не забудьте запустить пайплайн с последним коммитом в репозитории.

![gitlab-deploy-success-1](screens/gitlab-deploy-success-1.png)

![gitlab-deploy-success](screens/gitlab-deploy-success.png)


## Part 6. Дополнительно. Уведомления

#### Настроить уведомления о успешном/неуспешном выполнении пайплайна через бота с именем "[ваш nickname] DO6 CI/CD" в Telegram

![gitlab-bot-script](screens/gitlab-bot-script.png)

#### Текст уведомления должен содержать информацию об успешности прохождения как этапа CI, так и этапа CD.
В остальном текст уведомления может быть произвольным.

![gitlab-bot](screens/gitlab-bot.png)