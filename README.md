# meow

## description
A simple meow program

### cli usage
```
moon install meow
meow [text]
```

### library usage

add meow package

```
moon add xrr2016/meow
```

import package to moon.pkg
```
import {
  "xrr2016/meow/lib" @meow,
}
```

```
@meow.say("text")
@meow.info("text")
@meow.warn("text")
@meow.error("text")
@meow.success("text")
```