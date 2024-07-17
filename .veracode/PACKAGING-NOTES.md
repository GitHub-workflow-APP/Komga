# Packaging Notes for komga

## Overview

**Packaging Guidinline:** Kotlin should support following command   for packaging.

```bash
$ gradle clean build -x test
```

**Manaual Packaging:**
Going through all the projects recursively and running following command and coping the target JAR file
to binary as it is the scannable artifact.
```bash
$ gradle clean build -x test
```

Project Paths which are successfully able to run `gradle clean build -x test`


| Project Path                           | Succceful|Artifact Name                                                  |
|----------------------------------------|----------|---------------------------------------------------------------|
| /komga/                                | &#10003; |/kotlin-url-handling/.veracode/output/manual/komga-1.10.4.jar  |


