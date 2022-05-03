//
//  BookViewModel.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 01/05/22.
//

import Foundation

class BookViewModel: ObservableObject {
    @Published var mockBookService: MockBookService
    
    init(mockBookService: MockBookService) {
        self.mockBookService = mockBookService
    }
}

protocol BookService {
    /// Book list
    func bookList() -> [Book]
    
    /// Book detail
    func bookDetails(bookId: Int) -> BookDetail
    
    /// Cart
    func cartItems() -> Cart
    func numberOfCartItems() -> Int
    func addToCart(bookId: Int)
    func checkout()
}

class MockBookService: BookService {
    var books: [Book] = [
        Book(id: 1, bookName: "Tiempo de perdón", author: "John Grisham", price: 159.0, image: "perdon"),
        Book(id: 2, bookName: "Sapiens. Una historia gráfica (volumen II)", author: "Yuval Noah Harari", price: 140.0, image: "sapiens"),
        Book(id: 3, bookName: "En la mira (Una novela de Jack Ryan Jr. nº 4)", author: "Tom Clancy", price: 152.1, image: "mira"),
        Book(id: 4, bookName: "Angela Merkel. Lo podemos hacer", author: "Angela Merkel", price: 107.0, image: "merkel"),
        Book(id: 5, bookName: "Dientes de dragón", author: "Michael Crichton", price: 109.0, image: "dientes"),
        Book(id: 6, bookName: "El código de la vida: Jennifer Doudna, la edición genética y el futuro de la especie humana", author: "Walter Isaacson", price: 199.0, image: "codigo"),
        Book(id: 7, bookName: "El mundo perdido", author: "Michael Crichton", price: 89.0, image: "jurasico2"),
        Book(id: 8, bookName: "El corazón de piedra verde", author: "Salvador de Madariaga", price: 109.0, image: "piedra"),
        Book(id: 9, bookName: "The High Republic. En la oscuridad (Lucas Film)", author: "Claudia Gray", price: 279.0, image: "republic"),
        Book(id: 10, bookName: "Churchill: La biografía (Serie Mayor)", author: "Andrew Roberts", price: 189.0, image: "churchill")
    ]
    
    var booksDetail: [BookDetail] = [
        BookDetail(id: "0", bookId: 1, author: "John Grisham", title: "Tiempo de perdón", price: 159.00, genre: [Genre.action, Genre.drama], kind: "Novel", description: "Clanton, Mississippi, 1990. Stuart Kofer, ayudante del sheriff, se considera intocable. Aunque, cuando bebe más de la cuenta, algo bastante habitual, vuelca sus ataques de ira en su novia, Josie, y los hijos adolescentes de esta, el código de silencio de la policía siempre le ha protegido.", image: "perdon", isAvailable: false),
        BookDetail(id: "1", bookId: 2, author: "Yuval Noah Harari", title: "Sapiens. Una historia gráfica (volumen II)", price: 140.0, genre: [Genre.history, Genre.present], kind: "Novel", description: "Sapiens. Una historia gráfica – Los pilares de la civilización explica cómo el Homo sapiens pasó de ser una especie nómada a una sedentaria y empezó a trabajar más duro sin mejorar su nivel de vida. Revela cómo el trigo se apoderó del mundo; cómo un improbable matrimonio entre un dios y un burócrata dio lugar a los primeros imperios; cómo la guerra, el hambre, las enfermedades y la desigualdad se convirtieron en parte esencial de la condición humana y por qué solo somos responsables de ello nosotros mismos.", image: "sapiens", isAvailable: false),
        BookDetail(id: "2", bookId: 3, author: "Tom Clancy", title: "En la mira (Una novela de Jack Ryan Jr. nº 4)", price: 152.1, genre: [Genre.drama, Genre.action], kind: "Novel",description: "Entrenando privadamente con las fuerzas especiales, está perfeccionando sus habilidades de combate para continuar su trabajo dentro del Campus, persiguiendo y eliminando terroristas donde quiera que pueda—incluso mientras Jack Ryan padre hace campaña para convertirse en presidente de los Estados Unidos de nuevo.", image: "mira", isAvailable: false),
        BookDetail(id: "3", bookId: 4, author: "Angela Merkel", title: "Angela Merkel. Lo podemos hacer", price: 107.0, genre: [Genre.history, Genre.present, Genre.economics], kind: "Politics",description: "Figura emblemática de la política alemana y europea durante los últimos tres lustros, desde que en 2005 tomó las riendas de su país como canciller, Angela Merkel ha sabido superar con firmeza y serenidad momentos difíciles para su país y para el continente europeo.", image: "merkel", isAvailable: false),
        BookDetail(id: "4", bookId: 5, author: "Michael Crichton", title: "Dientes de dragón", price: 109.0, genre: [Genre.fantasy, Genre.action, Genre.scienceFiction], kind: "Novel",description: "1876. Tribus de indios en pie de guerra asolan los territorios del oeste de Estados Unidos. A este paisaje primitivo y hostil llegan las expediciones dirigidas por dos paleontólogos rivales en busca de fósiles de dinosaurios.", image: "dientes", isAvailable: false),
        BookDetail(id: "5", bookId: 6, author: "Walter Isaacson", title: "El código de la vida: Jennifer Doudna, la edición genética y el futuro de la especie humana", price: 199.0, genre: [Genre.scienceFiction, Genre.present,], kind: "Biography", description: "Aunque su profesor de instituto le advirtió que las niñas no podían ser científicas, su búsqueda apasionada de los mecanismos ocultos de la vida y su voluntad por convertir descubrimientos en inventos llevaron a Jennifer Doudna a participar en el avance más importante en el ámbito de la biología desde el descubrimiento de la doble hélice del ADN. Con su equipo, transformó una curiosidad de la naturaleza en una herramienta que cambiará el rumbo del ser humano. El CRISPR, una técnica fácil de usar que permite modificar el ADN, lo que abre un mundo nuevo de milagros médicos pero también de cuestiones morales.", image: "codigo", isAvailable: false),
        BookDetail(id: "6", bookId: 7, author: "Michael Crichton", title: "El mundo perdido.", price: 89.0, genre: [Genre.fantasy, Genre.action, Genre.scienceFiction], kind: "Novel",description: "La pesadilla empieza en la isla de Costa Rica, donde se encuentran varios cadáveres de dinosaurios. El paleontólogo Richard Levine organiza una expedición y, gracias a sus peculiares ayudantes -dos niños superdotados-, consigue que Ian Malcolm, uno de los pocos hombres que conoce lo que realmente ocurrió en aquella isla remota, colabore en la arriesgada empresa.", image: "jurasico2", isAvailable: false),
        BookDetail(id: "7", bookId: 8, author: "Salvador de Madariaga", title: "El corazón de piedra verde", price: 109.0, genre: [Genre.action, Genre.history], kind: "Novel",description: "El corazón de piedra verde es una obra deslumbrante por la inagotable riqueza de conocimientos que revela su autor, por la vivacidad con que recrea el pasado de un continente y por la nobleza de sus propósitos.", image: "piedra", isAvailable: false),
        BookDetail(id: "8", bookId: 9, author: "Claudia Gray", title: "The High Republic. En la oscuridad (Lucas Film)", price: 279.0, genre: [Genre.fantasy, Genre.scienceFiction, Genre.action], kind: "Fantasy", description: "Feliz de pasar horas rebuscando en los Archivos Jedi, en Coruscant, Reath sueña con ser uno de los más grandes académicos de la Orden Jedi. Pero la maestra de Reath, la respetada y virtuosa Jora Malli, tiene otros planes: ha sido destinada al Faro Starlight, el nuevo y reluciente puesto de avanzada de la República en el borde del espacio conocido. Como su padawan, Reath deberá acompañarla, le guste o no.", image: "republic", isAvailable: false),
        BookDetail(id: "9", bookId: 10, author: "Andrew Roberts", title: "Churchill: La biografía (Serie Mayor)", price: 189.0, genre: [Genre.history, Genre.economics], kind: "Biography", description: "Esta es, sin duda, la mejor biografía de Winston Churchill que se haya publicado. Andrew Roberts, considerado como el mejor historiador militar británico, ha podido utilizar para su trabajo una gran cantidad de documentos que ningún biógrafo había podido consultar con anterioridad, incluídos los diarios privados del rey Jorge VI, que se reunía regularmente con Churchill durante la guerra. La riqueza de la documentación que maneja permite a Roberts ahondar en la realidad humana del personaje, siguiendo su vida desde su infancia y la conflictiva relación con su padre hasta su declive, lo cual hace que el lector pueda «ver la segunda guerra mundial a través del prisma del resto de su vida».", image: "churchill", isAvailable: false)
        
    ]
    
    func bookList() -> [Book] {
        return books
    }
    
    func bookDetails(bookId: Int) -> BookDetail {
        let details = booksDetail.first{ $0.bookId == bookId }
        return details!
    }
    
    var cart = Cart(items: [], numberOfItems: 0, total: 0)
    
    func numberOfCartItems() -> Int {
        return cart.numberOfItems
    }
    
    func addToCart(bookId: Int) {
        guard let book = (books.first{ $0.id == bookId }) else { return }
        // Update cart
        cart.numberOfItems += 1
        cart.total += book.price
        updateItemCart(book: book)
    }
    
    func cartItems() -> Cart {
        return cart
    }
    
    func checkout() {
        // Checkout = empty cart item
        for item in cart.items {
            bookAvailable(id: item.item.id)
        }
        cart = Cart(items: [], numberOfItems: 0, total: 0)
    }
}

// MARK: - Private methods
private extension MockBookService {
    func bookAvailable(id: Int) {
        if let row = booksDetail.firstIndex(where: {$0.bookId == id}),
           var book = booksDetail.first(where: {$0.bookId == id}) {
            book.isAvailable = true
            booksDetail[row] = book
        }
    }
    
    func updateItemCart(book: Book) {
        if let index = (cart.items.firstIndex{ $0.item.id == book.id }) {
            cart.items[index].unit += 1
        } else {
            cart.items.append(CartItems(id: UUID().uuidString, item: book, unit: 1))
        }
    }
}
