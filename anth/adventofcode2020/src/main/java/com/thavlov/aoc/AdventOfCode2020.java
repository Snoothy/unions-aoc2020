package com.thavlov.aoc;

import com.thavlov.aoc.day1.Day1Ex1;
import com.thavlov.aoc.day1.Day1Ex2;
import com.thavlov.aoc.day10.Day10;
import com.thavlov.aoc.day2.Day2Ex1;
import com.thavlov.aoc.day2.Day2Ex2;
import com.thavlov.aoc.day3.Day3Ex1;
import com.thavlov.aoc.day3.Day3Ex2;
import com.thavlov.aoc.day4.Day4Ex1;
import com.thavlov.aoc.day4.Day4Ex2;
import com.thavlov.aoc.day5.Day5;
import com.thavlov.aoc.day6.Day6;
import com.thavlov.aoc.day7.Day7;
import com.thavlov.aoc.day8.Day8;
import com.thavlov.aoc.day9.Day9;

public class AdventOfCode2020 {
    public static void main(String[] args) throws Exception {
        System.out.println("Advent of Code 2020:");

        long t = System.currentTimeMillis();

        System.out.println(" > Solution 1 to day 1: " + Day1Ex1.solve());
        System.out.println(" > Solution 2 to day 1: " + Day1Ex2.solve());

        System.out.println(" > Solution 1 to day 2: " + Day2Ex1.solve());
        System.out.println(" > Solution 2 to day 2: " + Day2Ex2.solve());

        System.out.println(" > Solution 1 to day 3: " + Day3Ex1.solve());
        System.out.println(" > Solution 2 to day 3: " + Day3Ex2.solve());

        System.out.println(" > Solution 1 to day 4: " + Day4Ex1.solve());
        System.out.println(" > Solution 2 to day 4: " + Day4Ex2.solve());

        System.out.println(" > Solution 1 to day 5: " + Day5.solvePart1());
        System.out.println(" > Solution 2 to day 5: " + Day5.solvePart2());

        System.out.println(" > Solution 1 to day 6: " + Day6.solvePart1());
        System.out.println(" > Solution 2 to day 6: " + Day6.solvePart2());

        System.out.println(" > Solution 1 to day 7: " + Day7.solvePart1());
        System.out.println(" > Solution 2 to day 7: " + Day7.solvePart2());

        System.out.println(" > Solution 1 to day 8: " + Day8.solvePart1());
        System.out.println(" > Solution 2 to day 8: " + Day8.solvePart2());

        System.out.println(" > Solution 1 to day 9: " + Day9.solvePart1());
        System.out.println(" > Solution 2 to day 9: " + Day9.solvePart2());

        System.out.println(" > Solution 1 to day 10: " + Day10.solvePart1());
        System.out.println(" > Solution 2 to day 10: " + Day10.solvePart2());

        System.out.printf("Execution time: %d ms.%n", (System.currentTimeMillis() - t));
    }
}
