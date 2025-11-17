Il progetto è costruito con Swift 6 e SwiftUI, mirando a target iOS recenti (iOS 17/18+). L'app segue un pattern MVVM (Model-View-ViewModel) semplificato per separare la logica dei dati dalla vista.
ContainerView.swift: L'entry point della navigazione principale. Utilizza la nuova sintassi Tab di SwiftUI (iOS 18+) per gestire la TabBar inferiore, includendo sezioni per "Tricounts", "Requests" e "Credit Card".

MainView.swift: La dashboard principale. Implementa un NavigationStack per la gestione gerarchica e una List per visualizzare i viaggi attivi. Include una Toolbar complessa con azioni rapide (Profilo, Aggiungi, Edit).
ContentView.swift: La vista di dettaglio del singolo viaggio. Qui ho implementato:
Segmented Control: Per filtrare tra Spese, Saldi e Foto.
Custom Typography: Utilizzo di .design: .rounded per le cifre monetarie, migliorando la leggibilità dei numeri.
Context Menu: Un menu contestuale (ellipsis) nella toolbar per azioni secondarie come "Share" o "Delete group".

Xcode Project (/TriCount)
  Il cuore del progetto. Contiene tutto il codice sorgente SwiftUI analizzato sopra.
  Nota Tecnica: Il progetto è un UI Prototype. I bottoni sono renderizzati e interattivi visivamente, ma non eseguono logiche di persistenza dati o chiamate di rete (es. il pulsante "Edit" o il salvataggio di una nuova spesa). I dati visualizzati sono mockati staticamente nei ViewModel.

Keynote Presentation (/Docs)
  Un deep-dive nel processo creativo: Analisi del "Prima vs Dopo". 
  Studio della Color Theory: come scegliere palette che rispettino il contrasto e l'accessibilità Apple. 

Assicurati di avere Xcode 15+ (o Xcode 16 per il supporto completo alla sintassi Tab).
Clona il repository: git clone https://github.com/tuo-username/tricount-redesign.git
Apri il file TriCount.xcodeproj.
Seleziona un simulatore (es. iPhone 15/16 Pro) e premi Cmd + R.

Author: Francesco Lombardi Disclaimer: Questo è un progetto educativo non ufficiale e non è affiliato con Tricount o i suoi proprietari.
