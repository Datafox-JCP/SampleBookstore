//
//  MainView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import SwiftUI

struct MainView: View {
    
    let books = [
        Book(title: "Tiempo de perdón", author: "John Grisham", summary: "Clanton, Mississippi, 1990. Stuart Kofer, ayudante del sheriff, se considera intocable. Aunque, cuando bebe más de la cuenta, algo bastante habitual, vuelca sus ataques de ira en su novia, Josie, y los hijos adolescentes de esta, el código de silencio de la policía siempre le ha protegido", price: "$159.00", image: "perdon"),
        Book(title: "Sapiens. Una historia gráfica (volumen II)", author: "Yuval Noah Harari", summary: "Sapiens. Una historia gráfica – Los pilares de la civilización explica cómo el Homo sapiens pasó de ser una especie nómada a una sedentaria y empezó a trabajar más duro sin mejorar su nivel de vida. Revela cómo el trigo se apoderó del mundo; cómo un improbable matrimonio entre un dios y un burócrata dio lugar a los primeros imperios; cómo la guerra, el hambre, las enfermedades y la desigualdad se convirtieron en parte esencial de la condición humana y por qué solo somos responsables de ello nosotros mismos.", price: "$149.00", image: "sapiens"),
        Book(title: "En la mira (Una novela de Jack Ryan Jr. nº 4)", author: "Tom Clancy", summary: "Entrenando privadamente con las fuerzas especiales, está perfeccionando sus habilidades de combate para continuar su trabajo dentro del Campus, persiguiendo y eliminando terroristas donde quiera que pueda—incluso mientras Jack Ryan padre hace campaña para convertirse en presidente de los Estados Unidos de nuevo.", price: "$152.10", image: "mira"),
        Book(title: "Angela Merkel. Lo podemos hacer", author: "Angela Merkel", summary: "Figura emblemática de la política alemana y europea durante los últimos tres lustros, desde que en 2005 tomó las riendas de su país como canciller, Angela Merkel ha sabido superar con firmeza y serenidad momentos difíciles para su país y para el continente europeo.", price: "$107.00", image: "merkel"),
        Book(title: "Dientes de dragón", author: "Michael Crichton", summary: "1876. Tribus de indios en pie de guerra asolan los territorios del oeste de Estados Unidos. A este paisaje primitivo y hostil llegan las expediciones dirigidas por dos paleontólogos rivales en busca de fósiles de dinosaurios.", price: "$89.00", image: "dientes"),
        Book(title: "El código de la vida: Jennifer Doudna, la edición genética y el futuro de la especie humana", author: "Walter Isaacson", summary: "Aunque su profesor de instituto le advirtió que las niñas no podían ser científicas, su búsqueda apasionada de los mecanismos ocultos de la vida y su voluntad por convertir descubrimientos en inventos llevaron a Jennifer Doudna a participar en el avance más importante en el ámbito de la biología desde el descubrimiento de la doble hélice del ADN. Con su equipo, transformó una curiosidad de la naturaleza en una herramienta que cambiará el rumbo del ser humano. El CRISPR, una técnica fácil de usar que permite modificar el ADN, lo que abre un mundo nuevo de milagros médicos pero también de cuestiones morales.", price: "$199.00", image: "codigo"),
        Book(title: "El mundo perdido", author: "Michael Crichton", summary: "La pesadilla empieza en la isla de Costa Rica, donde se encuentran varios cadáveres de dinosaurios. El paleontólogo Richard Levine organiza una expedición y, gracias a sus peculiares ayudantes -dos niños superdotados-, consigue que Ian Malcolm, uno de los pocos hombres que conoce lo que realmente ocurrió en aquella isla remota, colabore en la arriesgada empresa.", price: "$89.00", image: "jurasico2"),
        Book(title: "El corazón de piedra verde", author: "Salvador de Madariaga", summary: "El corazón de piedra verde es una obra deslumbrante por la inagotable riqueza de conocimientos que revela su autor, por la vivacidad con que recrea el pasado de un continente y por la nobleza de sus propósitos.", price: "$109.00", image: "piedra"),
        Book(title: "The High Republic. En la oscuridad (Lucas Film)", author: "Claudia Gray", summary: "Feliz de pasar horas rebuscando en los Archivos Jedi, en Coruscant, Reath sueña con ser uno de los más grandes académicos de la Orden Jedi. Pero la maestra de Reath, la respetada y virtuosa Jora Malli, tiene otros planes: ha sido destinada al Faro Starlight, el nuevo y reluciente puesto de avanzada de la República en el borde del espacio conocido. Como su padawan, Reath deberá acompañarla, le guste o no.", price: "$279.00", image: "republic"),
        Book(title: "Churchill: La biografía (Serie Mayor)", author: "Andrew Roberts", summary: "Esta es, sin duda, la mejor biografía de Winston Churchill que se haya publicado. Andrew Roberts, considerado como el mejor historiador militar británico, ha podido utilizar para su trabajo una gran cantidad de documentos que ningún biógrafo había podido consultar con anterioridad, incluídos los diarios privados del rey Jorge VI, que se reunía regularmente con Churchill durante la guerra. La riqueza de la documentación que maneja permite a Roberts ahondar en la realidad humana del personaje, siguiendo su vida desde su infancia y la conflictiva relación con su padre hasta su declive, lo cual hace que el lector pueda «ver la segunda guerra mundial a través del prisma del resto de su vida».", price: "$189.00", image: "churchill")
        
    ]
    
    var body: some View {
        NavigationView {
            
            List(books) { book in
                NavigationLink(destination: DetailView()) {
                    ItemView(book: book)
                }
            }
            .navigationTitle("Book List")
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
