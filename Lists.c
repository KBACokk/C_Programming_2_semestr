#include <stdio.h>
#include <stdlib.h>

struct node
{
    int data;
    struct node *next;
    struct node *second_next;
};
typedef struct node node_t;

node_t *newNode(int data)
{
    node_t *node = (node_t *)malloc(sizeof(node_t));
    node->data = data;
    node->next = NULL;
    node->second_next = NULL;
    return node;
}


void printList(node_t *head)
{
    node_t *cur = head;
    while (cur != NULL)
    {
        printf("%d ", cur->data);
        cur = cur->next;
    }
    printf("\n");
}

void printElement(node_t *element)
{
    if (element)
        printf("%d\n", element->data);
    else
        printf(" Element not found \n");
}

void addLast(node_t **head, int data)
{
    node_t *new = newNode(data);
    if (*head == NULL) 
    {
        *head = new;
        return;
    }

    node_t *cur = *head;
    while (cur->next != NULL)
    {
        cur = cur->next;
    }
    cur->next = new;
}


void addSecond(node_t **head, int data, node_t **S)
{
    node_t *new = newNode(data);
    if (*S == NULL) 
    {
        *S = new;
        if (*head != NULL)
        {
            (*head)->second_next = *S;
        }
        return;
    }

    new->next = *S; 
    *S = new;
    node_t *cur_first = *head;
    while (cur_first != NULL && cur_first->second_next)
    {
        cur_first = cur_first->next;
    }
    if (cur_first != NULL)
    {
        cur_first->second_next = *S; 
    }
}

int main()
{
    node_t *head = NULL;
    int n;
    
    printf("\nInput numbers for first list ( input 0 for end ) \n\n");
    while (1)
    {
        printf (" Element - ");
        scanf("%d", &n);
        if (n == 0){
            printf (" Close list \n");
            break; } 
        addLast(&head, n);
    }

    node_t *S = NULL;
    printf("\nFirst list -> ");
    printList(head);

    printf("\nInput numbers for second list ( input 0 for end ) \n\n");
    while (1)
    {
        printf (" Element - ");
        scanf("%d", &n);
        if (n == 0){
            printf (" Close list \n");
            break; } 
        addSecond(&head, n, &S);
    }

    printf("\nSecond list -> ");
    printList(S);

    node_t *current = head;
    char con;
    
    printf("\nCommands: \nC - current element \nN - next element \nS - second list element \nH - up element\n");
    
    while (1)
    {
        printf ("  input command -> ");
        scanf(" %c", &con); 
        if (con == 'c' || con == 'C') { 
            printf (" element: ");printElement(current);
        }
        else if (con == 'n' || con == 'N') {
            if (current && current->next)
                current = current->next;
                printf (" element: ");printElement(current);
        }
        else if (con == 's' || con == 'S') {
            if (current && current->second_next)
                current = current->second_next;
                printf (" element: ");printElement(current);
        }
        else if (con == 'h' || con == 'H') {
            current = head;
            printf (" element: ");printf (""); printElement(current);
        }
        else if (con == 'q' || con == 'Q') {
            break;
        }
        else {
            printf("Error: unknown command\n");
        }
    }
    return 0;
}
