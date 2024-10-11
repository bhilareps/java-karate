package com.example;

// package com.example;
// import com.intuit.karate.junit5.Karate;
// // import static org.junit.jupiter.api.Assertions.assertTrue;

// // import org.junit.jupiter.api.Test;

// // import com.intuit.karate.junit5.Karate;

// /**
//  * Unit test for simple App.
//  */
// public class AppTest {

//     /**
//      * Rigorous Test :-)
//      */
//     // @Test
//     // public void shouldAnswerWithTrue() {
//     //     assertTrue(true);
//     // }
//     @Karate.Test
//     Karate testAll() {
//         return Karate.run("karate/example").relativeTo(getClass());
//     }

//     @Karate.Test
//     Karate testPostMethod() {
//         // Runs the postMethodTest.feature file specifically
//         return Karate.run("karate/postMethodTest").relativeTo(getClass());
//     }
// }

import com.intuit.karate.junit5.Karate;

class KarateTestRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("example").relativeTo(getClass());
    }

    @Karate.Test
    Karate testCreateUser() {
        return Karate.run("createUser").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testPostMethod() {
        return Karate.run("postMethodTest").relativeTo(getClass());
    }
    
}

