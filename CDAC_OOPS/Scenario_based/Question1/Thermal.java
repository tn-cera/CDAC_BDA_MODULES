package CDAC_OOPS.Scenario_based.Question1;
import java.util.Scanner;
import java.util.ArrayList;

class Thermal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        // Read grid dimensions
        int n = sc.nextInt();
        int m = sc.nextInt();

        ArrayList<ArrayList<Integer>> temp = new ArrayList<>();

        // 1. Populate the 2D ArrayList matrix
        for (int i = 0; i < n; i++) {
            ArrayList<Integer> row = new ArrayList<>();
            for (int j = 0; j < m; j++) {
                row.add(sc.nextInt());
            }
            temp.add(row);
        }

        // 2. First Pass: Isolate the absolute maximum temperature
        int max = -1; 
        for (int i = 0; i < n; i++) { 
            for (int j = 0; j < m; j++) {
                if (temp.get(i).get(j) > max) {
                    max = temp.get(i).get(j);
                }
            }
        }

        // 3. Second Pass: Calculate the aggregate Thermal Risk Score
        int risk = 0;
        for (int i = 0; i < n; i++) { 
            for (int j = 0; j < m; j++) {
                if (temp.get(i).get(j) == max) {
                    risk += (i * j);
                }
            }
        }
        
        // Clean final output execution
        System.out.println(risk);
        sc.close();
    }
}
