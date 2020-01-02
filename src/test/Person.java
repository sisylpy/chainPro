/**
 * PACKAGE_NAME class
 *
 * @Author: peiyi li
 * @Date: 2019-11-15 15:21
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *@author lpy
 *@date 2019-11-15 15:21
 */

@Setter@Getter@ToString
public class Person {


        String name;

         int id;

         Person(int id, String name)  {
                 this.name = name;
                 this.id = id;
        }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public static void main(String[] args) {

        List<Person> persons = new ArrayList();
        for (int i = 1; i <= 5; i++) {
            Person person = new Person(i, "name" + i);
            persons.add(person);
        }

        List<Person> personList2 = persons.stream().limit(4)
                .sorted((p1, p2) -> p1.getName().compareTo(p2.getName()))
                .collect(Collectors.toList());
        System.out.println(personList2);

    }

}

