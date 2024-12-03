# Lab 13 - Makefile Project

### **Author**  
**Name**: Anthony Konas  
**Date**: December 3, 2024  
**CU ID**: anko8403  

---

## **Overview**
This project involves creating a `Makefile` to manage the compilation of a simple C project. The `Makefile` includes targets for building the application, running tests, and cleaning up intermediate files.  

### **Included Files**:
- `src/`: Contains the source files (`.c`) for the application logic.  
- `include/`: Contains the header files (`.h`) used in the project.  
- `test/`: Contains the test file (`test.c`) for validating functionality.  
- `Makefile`: Automates the build process, testing, and cleanup.  

---

### **Step-by-Step Instructions** ###


**1. Compile with Custom Compiler Options**
To compile with additional options (e.g., treating warnings as errors):  
```bash
make OPTS='-Werror'
```



**2. Build the Application**  

To compile the source files and create the executable app:  
```bash
make
```

**3. Run the Application**

After the application is build, you can execute it using:
```bash
./app
```

**4. Run the Tests**

To compile the test file and execute the test suite:
```bash
make test
```

**5. Clean Up**

To remove all intermediate object files as well as the compiled executables
```bash
make clean
```