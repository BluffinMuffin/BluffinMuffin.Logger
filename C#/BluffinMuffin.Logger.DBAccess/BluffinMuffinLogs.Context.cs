﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BluffinMuffin.Logger.DBAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    internal sealed partial class BluffinMuffinLogsEntities : DbContext
    {
        public BluffinMuffinLogsEntities()
            : base("name=BluffinMuffinLogsEntities")
        {
            AllClients = Set<ClientEntity>();
            AllCommands = Set<CommandEntity>();
            AllBlindTypes = Set<BlindTypeEntity>();
            AllGameSubTypes = Set<GameSubTypeEntity>();
            AllGameTypes = Set<GameTypeEntity>();
            AllLimitTypes = Set<LimitTypeEntity>();
            AllLobbyTypes = Set<LobbyTypeEntity>();
            AllGames = Set<GameEntity>();
            AllServers = Set<ServerEntity>();
            AllTableParams = Set<TableParamEntity>();
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        internal DbSet<ClientEntity> AllClients { get; set; }
        internal DbSet<CommandEntity> AllCommands { get; set; }
        internal DbSet<BlindTypeEntity> AllBlindTypes { get; set; }
        internal DbSet<GameSubTypeEntity> AllGameSubTypes { get; set; }
        internal DbSet<GameTypeEntity> AllGameTypes { get; set; }
        internal DbSet<LimitTypeEntity> AllLimitTypes { get; set; }
        internal DbSet<LobbyTypeEntity> AllLobbyTypes { get; set; }
        internal DbSet<GameEntity> AllGames { get; set; }
        internal DbSet<ServerEntity> AllServers { get; set; }
        internal DbSet<TableParamEntity> AllTableParams { get; set; }
    }
}
