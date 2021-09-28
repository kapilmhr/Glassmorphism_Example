# glassmorphism_example

A new Flutter project which demonstrates the Glassmorphism.

Add it in pubsec
```
  glassmorphism: ^3.0.0
```

Glassmorphic Container

```
GlassmorphicContainer(
              height: _height * 0.3,
              width: _width * 0.9,
              borderRadius: 15,
              blur: 15,
              alignment: Alignment.center,
              border: 2,
              linearGradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.white38.withOpacity(0.2)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderGradient: LinearGradient(colors: [
                Colors.white24.withOpacity(0.2),
                Colors.white70.withOpacity(0.2)
              ]),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    spreadRadius: 16,
                    color: Colors.black.withOpacity(0.1),
                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0,
                      sigmaY: 20.0,
                    ),
                    child: Container(
                        height: _height * 0.7,
                        width: _width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.2),
                            )),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('TESLA BANK',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                  Icon(
                                    Icons.credit_card_sharp,
                                    color: Colors.white.withOpacity(0.75),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('VISA',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                  Text('11/27',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1548 3777 9902 9034',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            )
```
## Preview

![](https://github.com/kapilmhr/Glassmorphism_Example/blob/main/screenshot/screenshot.png)

