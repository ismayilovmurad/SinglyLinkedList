public class LinkedListFromScratch {

    var head: Node? = nil

    public func add(data: Int) {

        if self.head == nil {
            self.head = Node(data: data)
        } else {
            let nodeToAdd: Node = Node(data: data)
            nodeToAdd.next = self.head!
            self.head = nodeToAdd
        }

    }

}

class Node {

    var data: Int
    var next: Node? = nil

    init(data: Int){
        self.data = data
    }

}

var myList: LinkedListFromScratch = LinkedListFromScratch()
myList.add(data: 10)
myList.add(data: 18)

if myList.head != nil{

    print(myList.head!.data)

    if myList.head!.next != nil{
        print(myList.head!.next!.data)
    }

}