# microblaze
Использование MicroBlaze на примере отладочной платы VE-XC6SLX9.

https://visuale.ru/blog/ispolzovanie-microblaze-na-primere-otladochnoj-platy-ve-xc6slx9

В данной статье рассматривается пошаговое создание проекта на основе Microblaze для Xilinx EDK в Xilinx ISE 14.7. Рассмотрим процесс создания проекта для microblaze на примере отладочной платы VE-XC6SLX9. MicroBlaze — soft-процессорное ядро, разработанное компанией Xilinx для использования в FPGA. MicroBlaze реализуется с помощью стандартной логики и блоков памяти ПЛИС. С точки зрения архитектуры, MicroBlaze очень похож на процессор с основанной на RISC DLX-архитектурой, описанной в книге Д. Паттерсона (David Patterson) и Дж. Хеннеси (John L. Hennessy). За исключением отдельных случаев MicroBlaze может выполнять по одной инструкции за такт, сохраняя такую производительность практически в любых условиях.