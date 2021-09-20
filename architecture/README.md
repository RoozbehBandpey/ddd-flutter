# Domain Driven Design



The diagram presented below, depicts the main structure of clean architecture for flutter apps.


![Flutter Domain Driven Design Architecture](flutter_ddd_architecture.png)

This architecture is slightly different that [link to tdd], we device our app into four layers.

## Presentation
It is where flutter is used. It sends raw data as form of events to application layer. raw data means user can i8nput anything, text, image etrc.,
## Application
It can hold BLoC or usecases, the role of this layer is to orchestrate what ever goes on in ther app, you wont find any UI code, network code, database code. It's only purpose to orchestrate flow of data around the app
## Domain
The most central layer of the architecture. contains business logic
The input validation is happening inside validation value objects, it is basically our bussiness rile, for example any string that should represent an enamil address has to have certain pattern
Entities contain bunch of validated value objects, for example drink entity can be comprised of VVO such as image, recipe instruction, ingridient, et.,
The domain layer also holds main business logic that are enssential for our app
Failures: oinorder to catch the excweptions in a managmale way, instead of writibng try catch statementsa all over our codebase we creatye a failures objects that are joint into regular flow of data
Domain layer is independe of any other layer but other layers are heavily dependant on this layer
## Infrastructure
It interact with API's databases and device sensors such as location, accelerometer etc., this layer can change, and the design prenvent chganges from other layers for exmplae changing from SQLIte caching to Hive Caching only need to changhe local data source

* Repositories: The boudray beween domain layer and application layer, DTOs and expection goes into repositories, it's job of repository to catch all the expetions and return them as failures. The only place to see try-catch code. Also convert DTOs into entiries. Repository also will hold caching logic but in our case firestore does the cahing automatically

* Data transfer objects: Their obly purpose is to convert data from entities and VVOs intop plain data coming from ouside world and vice versa

* Data Sources: We won't communicate with raw data directly, for example for clou8d firestore and firebase auth packages will communicate with the raw data for us. Firestore class from cloud firestore package will serve as remote data source for firestore



BLoc
Validated Value Object
Data Transfer Objects