package com.example;

import com.intuit.karate.junit5.Karate;

class KarateTestRunner {

    // working successfully
    @Karate.Test
    Karate testAll() {
        return Karate.run("example").relativeTo(getClass());
    }

    //working successfully
    @Karate.Test
    Karate testFirstTest() {
        return Karate.run("FirstTest").relativeTo(getClass());
    }

    @Karate.Test
    Karate get_method() {
        return Karate.run("Get_").relativeTo(getClass());
    }



    
}

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