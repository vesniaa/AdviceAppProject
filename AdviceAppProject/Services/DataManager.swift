//
//  DataManager.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 30.03.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let advices = [
    """
    Всё думаешь как назвать какое-то свойство?
    Однобуквенные переменные и константы - то что нужно! Экономия времени и энергии.
    А так же сочетание буквы и числа идеально подходит для названия свойств.
    И вообще, английски программисту ни к чему.
    """,
    """
    Никогда не удаляй фрагменты кода.
    Например, если ты не использовал функцию то просто закомментируй, и пиши код ниже.
    Ведь удалять жалко, да и вдруг что произойдёт, перестанет всё работать или ещё хуже,
    взорвётся комп.
    """,
    """
    Усложнять - это круто!
    Не стоит писать простыми выражениями то, что можно сделать сложным.
    Иначе никто не узнает, насколько круто и оригинально ты можешь написать
    """,
    """
    Функция должна уметь делать все!
    Главное, сделать так, чтобы название функции было неоднозначным,
    а ее функциональность отвечала за половину программы.
    """,
    """
    Чем короче код, тем лучше.
    Ты ведь знаешь, что чем меньше строк занимает код, тем он круче?
    Не используй перенос строк, а вложенный тернарный оператор лучше расписанной конструкции if else.
    """
    ]
    
    private init() {}
}
