//Cola de impresión en C
//Uso de memoria estatica (arrays)
//No usar mallo/free
//Capacidad fija a 10 trabajos
//Funciones: _q_init   _q_dequeue  _q_is_empty  _q_peek  _q_is_full  _q_print  _q_enqueue
//Si llena -> no agrega
//Si vacia -> no peek/dequeue

#include <stdio.h>

typedef struct {
    int id; //Numero autoincremental
    char usuario[32]; //Nombre del usuario que envió la impresión
    char documento[42]; //Titulo del documento
    int total_pgs; //Numero total de paginas
    int restante_pgs; //Numero de paginas restantes por imprimir
    int copias; //Copias por imprimir
    int prioridad; //NORMAL, URGENTE
    int estado; //EN_COLA, IMPRIMIENDO, COMPLETADO, CANCELADO
} trabajo;

int main() 
{
    
    return 0;
}