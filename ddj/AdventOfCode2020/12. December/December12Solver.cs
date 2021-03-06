﻿using AoCLib;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace _12._December
{
    class December12Solver : ChallengeSolver
    {
        private Ferry Ferry;

        public override async Task Solve(string filename)
        {
            var input = await InputHelper.ReadStrings(filename);
            var instructions = input.Select(l => (op: l.First(), val: int.Parse(l[1..])));

            Ferry = new Ferry();

            foreach(var inst in instructions)
            {
                RunTask1Instruction(inst);
            }

            Console.WriteLine($"Res1: {Math.Abs(Ferry.Position.x) + Math.Abs(Ferry.Position.y)}");

            Ferry = new Ferry();

            foreach(var inst in instructions)
            {
                RunTask2Instruction(inst);
            }

            Console.WriteLine($"Res2: {Math.Abs(Ferry.Position.x) + Math.Abs(Ferry.Position.y)}");
        }

        public void RunTask1Instruction((char op, int val) inst)
        {
            switch (inst.op)
            {
                case 'N':
                    Ferry.Move(Direction.NORTH, inst.val);
                    return;
                case 'S':
                    Ferry.Move(Direction.SOUTH, inst.val);
                    return;
                case 'E':
                    Ferry.Move(Direction.EAST, inst.val);
                    return;
                case 'W':
                    Ferry.Move(Direction.WEST, inst.val);
                    return;
                case 'L':
                    Ferry.Turn(-inst.val);
                    return;
                case 'R':
                    Ferry.Turn(inst.val);
                    return;
                case 'F':
                    Ferry.MoveForward(inst.val);
                    return;
                default:
                    throw new Exception("Unexpected instrctution: " + inst.op);
            }
        }

        public void RunTask2Instruction((char op, int val) inst)
        {
            switch (inst.op)
            {
                case 'N':
                    Ferry.MoveWaypoint(Direction.NORTH, inst.val);
                    return;
                case 'S':
                    Ferry.MoveWaypoint(Direction.SOUTH, inst.val);
                    return;
                case 'E':
                    Ferry.MoveWaypoint(Direction.EAST, inst.val);
                    return;
                case 'W':
                    Ferry.MoveWaypoint(Direction.WEST, inst.val);
                    return;
                case 'L':
                    Ferry.RotateWaypoint(-inst.val);
                    return;
                case 'R':
                    Ferry.RotateWaypoint(inst.val);
                    return;
                case 'F':
                    Ferry.MoveToWaypoint(inst.val);
                    return;
                default:
                    throw new Exception("Unexpected instrctution: " + inst.op);
            }
        }
    }
}
