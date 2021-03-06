﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace BodyByMiguel
{
    public class ApiDB : BodyByMiguelContext
    {
        public DbSet<Treino> Treinos { get; set; }
        public DbSet<ExercicioTreino> ExerciciosTreino { get; set; }
        public ApiDB() { }

        public List<ProjectInfo> ReturnBodyParts()
        {
            using (BodyByMiguelContext contexto = new BodyByMiguelContext())
            {

                List<ProjectInfo> query = contexto.GrandeMusculo
                            .Select(parte => new ProjectInfo() { Id = parte.Id, Name = parte.Descricao })
                            .ToList();

                return query;
            }
        }
    }

    public class ProjectInfo
    {
        public string Name { get; set; }
        public long Id { get; set; }
    }
}
