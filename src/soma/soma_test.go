package main

import "testing"

func TestSoma(t *testing.T) {
    total := soma(5, 5)
    if total != 10 {
        t.Errorf("Soma falhou, deu: %d, esperava: %d.", total, 10)
    }
}
