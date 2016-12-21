# redarx_angular

simple dispatcher providers (DISPATCH, QUERY, QUERIE$, REQUEST$)

## Usage

```dart
@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    viewProviders: const [
      /* provides opaqueTokens and instance factory */
      const Provider(DISPATCHER, useFactory: dispatcherFactory),
      const Provider(DISPATCH,
          useFactory: dispatchFactory, deps: const [DISPATCHER]),
      const Provider(QUERY, useFactory: queryFactory, deps: const [DISPATCHER]),
      const Provider(REQUEST$,
          useFactory: request$Factory, deps: const [DISPATCHER]),
      const Provider(QUERIE$,
          useFactory: querie$Factory, deps: const [DISPATCHER]),
          
    ],
    directives: const [TodoForm, TodoFooter, TodoItem, UsersView])
class AppComponent {}

```


