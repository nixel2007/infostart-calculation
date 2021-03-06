#Использовать asserts
#Использовать ".."

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	ВсеТесты = Новый Массив;	
	ВсеТесты.Добавить("ТестДолжен_ПроверитьЧтоДваПлюсДваРавноЧетыре");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьСложениеДвухЧиселВПамяти");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьСложениеЧерезУниверсальнуюФункцию");
	ВсеТесты.Добавить("ТестДолжен_ПроверитьУмножениеЧерезУниверсальнуюФункцию");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ПередЗапускомТеста() Экспорт
КонецПроцедуры

Процедура ПослеЗапускаТеста() Экспорт
КонецПроцедуры

Процедура ТестДолжен_ПроверитьЧтоДваПлюсДваРавноЧетыре() Экспорт
	Результат = Вычислитель.Сложить(2, 2);
	Ожидаем.Что(Результат, "Ожидаем, что 2 + 2 = 4").Равно(4);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьСложениеДвухЧиселВПамяти() Экспорт
	ЧислоВПамяти1 = Новый ЧислоВПамяти(1);
	ЧислоВПамяти2 = Новый ЧислоВПамяти(3);

	Результат = Вычислитель.Сложить(ЧислоВПамяти1, ЧислоВПамяти2);
	Ожидаем.Что(Результат, "Ожидаем, что сложение чисел из памяти работает").Равно(4);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьСложениеЧерезУниверсальнуюФункцию() Экспорт
	Результат = Вычислитель.ВыполнитьВычисление(ТипыОпераций.Сложение, 2, 2);
	Ожидаем.Что(Результат, "Ожидаем, что сложение через универсальную функцию работает").Равно(4);
КонецПроцедуры

Процедура ТестДолжен_ПроверитьУмножениеЧерезУниверсальнуюФункцию() Экспорт
	Результат = Вычислитель.ВыполнитьВычисление(ТипыОпераций.Умножение, 2, 3);
	Ожидаем.Что(Результат, "Ожидаем, что умножение через универсальную функцию работает").Равно(6);
КонецПроцедуры
