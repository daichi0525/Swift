//
//  ContentView.swift
//  Level1
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("一覧")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: clearAllItems) {
                        Label("Clear", systemImage: "trash")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("\(items.count)")
                }
            }
        } detail: {
            Text("Select an item")
        }
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    
    private func clearAllItems() {
        withAnimation {
            for item in items {
                modelContext.delete(item)
            }
        }
    }
    
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
