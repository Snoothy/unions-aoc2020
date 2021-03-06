﻿using AoCLib;
using System;
using System.Diagnostics;
using System.Threading.Tasks;

namespace _1._December
{
    class Program
    {       
        static async Task Main(string[] args)
        {
            var stopwatch = new Stopwatch();
            stopwatch.Start();
            var filename = InputHelper.GetFilename(args);
            var input = await InputHelper.ReadLongs(filename);
            
            var solver = new December1Solver(input, 2020, 2);
            var res1 = solver.Solve();                        
                        
            solver = new December1Solver(input, 2020, 3);
            var res2 = solver.Solve();
            stopwatch.Stop();

            Console.WriteLine($"First result for 1. December is: {res1}.");
            Console.WriteLine($"Second result for 1. December is: {res2}. Runtime: {stopwatch.ElapsedMilliseconds} ms");
        }
    }
}
