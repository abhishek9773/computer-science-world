@SpringBootApplication => @EnableAutoConfiguration, @ComponentScan, @Configuration.

# SpringBoot Annotation:-

- spring Boot application is one type of metadata
  Q. HOW MANY LAVEL OF ANOTATION ARE THERE ?

  @Required
  @Autowired
  @Configuration

- @ComponentScan annotation use with the @Configuration
- @Bean

```java
public beanExample beanexample(){
  return new BeanExample;
}
```

- @Component

```java
@Component
public class Student{

}

```

- @Controller => @controller is a top lavel component
- @RequestMapping

```java
@Controller
@RequestMapping("books")
public BookController{
  @RequestMapping(value="/{name}", method=RequestMethod.GET)
  public Employee getBookName(){
   return booktemplate;
  }
}
```

- @Repository => they will access dataBase directly.

- @Services

```java
@Service
public class TextService{
  public void service1(){

  }
}
```

---

### Some of method

- @GetMapping => @RequestMapping(method=RequestMethod.GET)
- @PostMapping => @RequestMapping(method= RequestMethod.POST)
- @PutMapping => @RutMapping(method = RequestMethod.PUT)
- @DeleteMapping => @RequestMapping(method = RequestMethod.DELETE)
- @PatchMapping => @RequestMapping(method = RequestMethod.PATCH)

### SOME OF THE ANOTATION MUST UNDERSTAND

- @RequestBody
- @ResponseBody
- @PathVariable
- @RequestParam
- @ReqeustHeader
- @RestController => @Controller + @ResponseBody
- @RequestAttribute
- @Id
- @Entity
- @Table
-
