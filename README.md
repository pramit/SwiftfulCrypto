This is an iOS cryptocurrency app built with SwiftUI using MVVM architecture, Combine for concurrent networking, CoinGecko API for coin prices, and CoreData to create and save your crypto portfolio.

![cryptocurrency_app](https://github.com/pramit/SwiftfulCrypto/assets/831278/e399f69e-6bce-40bc-9dd9-a92d9769d8fc)

MVVM architecture our code into Models (data), ViewModels (manages which data is sent to Views), and Views (what you see on screen). For instance, each coin is a model (with data collected from CoinGecko API), the HomeView is the primary View (with multiple Views within it), and a HomeViewModel that manages what you see on the HomeView. 

Combine is one of a few ways to handle concurrency, which in simple terms means that data may not be readily available (eg, on a server somewhere). In this project we use it to pull coin data from CoinGecko and store it in the CoinModel.

CoreData saves data on your device. In this project, we save only the coin ID and quantity (nothing else since things like price change all the time).

Credit goes to [Swiftful-Thinking]([url](https://github.com/SwiftfulThinking)) for his tutorial.
