//
//  ContentView.swift
//  CookMo
//
//  Created by Alfredo Fiore on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    
    static let coloreCosmo: Color = Color(red: 227 / 255, green: 124 / 255, blue: 81 / 255)
    static let coloreMoveo: Color = Color(red: 220 / 255, green: 57 / 255, blue: 71 / 255)
    
    @State private var selection: String = "home"
    
    @State private var tabSelezionato: CustomTabBarItem = CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.white.opacity(0))
    
    @State var listaRicette: [Ricetta]
    
    var body: some View {
        CustomMainTabBarContainer(tabSelezionato: $tabSelezionato, coloreSfondo: ContentView.coloreCosmo, coloreSelezione: Color.blue){
            
            Bilancia()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "bilancia_img", titolo: "Bilancia", colore: Color.white, coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
            Categorie()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "categorie_img", titolo: "Categorie", colore: Color.white, coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
            Home(ricetteList: listaRicette)
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "home_img", titolo: "Home", colore: Color.white,  coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
            Cerca()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "cerca_img", titolo: "Cerca", colore: Color.white,  coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
            ListaSpesa()
                .customTabBarItem(tab: CustomTabBarItem(nomeIcona: "lista_img", titolo: "Lista Spesa", colore: Color.white,  coloreSfondo: Color.clear), tabSelect: $tabSelezionato)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        var ricettaLista: [Ricetta] = []
        
        ricettaLista.append(Ricetta(nomePiatto: "pasta", tipopiatto: "primo", difficolta: "facile", tempoPrep: "30 ore", costo: "economico"))
        ricettaLista.append(Ricetta(nomePiatto: "carne", tipopiatto: "secondo", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso"))
        ricettaLista.append(Ricetta(nomePiatto: "gelato", tipopiatto: "dolce", difficolta: "facile", tempoPrep: "30 ore", costo: "economico"))
        ricettaLista.append(Ricetta(nomePiatto: "macedonia", tipopiatto: "frutta", difficolta: "difficile", tempoPrep: "12 ore", costo: "costoso"))
        return  ContentView(listaRicette: ricettaLista)
        
    }
}

 


