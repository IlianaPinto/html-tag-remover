
package Generator;

import java.io.File;

public class RunLexer {
    public static void main(String[] args) {
        String path = "src/html/Lexer.jflex";
        generarLexer(path);
    }
    
    public static void generarLexer(String path){
        File archivo = new File(path);
        jflex.Main.generate(archivo);
    }
    
}
