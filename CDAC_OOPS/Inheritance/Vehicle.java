import java.util.Scanner;

abstract class Car{

        String name, color, type;
        int speed;
        int avg;

        Car(String name, String color, String type,int speed, int avg){

                this.name=name;
                this.color=color;
                this.type=type;
                this.speed=speed;
                this.avg=avg;

        }

        abstract void horn();
}

class Sedan extends Car{

        Sedan(String name, String color, String type,int speed, int avg)
        {

                super(name,color,type,speed,avg);
        }

        void horn()
        {

        System.out.println("Beep Beep im sedan");

        }

        void printDetails(){
        System.out.println("Name : "+this.name+" Color : "+this.color+" Type :"+this.type+" Speed : "+this.speed+" Average : "+this.avg);
        }

}

class Xuv extends Car{

        String classs;

        Xuv(String name, String color, String type,int speed, int avg,String classs)
        {

                super(name,color,type,speed,avg);
                this.classs=classs;
        }

        void horn()
        {

        System.out.println("Bheeep Bheeeep im Xuv");

        }

        void printDetails()
        {

        System.out.println("Name : "+this.name+" Color : "+this.color+" Type :"+this.type+" Speed : "+this.speed+" Average : "+this.avg+" classs : "+classs);

        }

}

class Vehicle{

        public static void main(String[] args){

                Sedan verna = new Sedan("Hyundai","Zblack","Sedan",120,18);
                Xuv   velar = new Xuv("Range Rover","Black","XUV",280,10,"Class-A");
                verna.horn();
                velar.printDetails();



        }


}