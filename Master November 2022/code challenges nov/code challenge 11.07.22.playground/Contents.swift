

var alph: [Substring] = "abcdefghijklmnopqrstuvwxyz".split(separator: "")


func letter ( letter: String ) {
    
    if letter != "" {
        
        for (index, char) in alph.enumerated() {
            if char == letter {
                print(char)
                
                var total = index
                total += 1
                
                print(total)
            }
        }
    }
}


letter(letter: "v")
