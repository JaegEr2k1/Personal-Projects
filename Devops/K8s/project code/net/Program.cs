using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using Microsoft.AspNetCore.Http;

var builder = WebApplication.CreateBuilder(args);

// Connection string to the MySQL database
var connectionString = "Server=mysql;Database=mydatabase;User=root;Password=password123;Port=3306;";

// Register DbContext for MySQL
builder.Services.AddDbContext<MyDbContext>(options =>
    options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

var app = builder.Build();

// Root route
app.MapGet("/", () =>
{
    return "This is my react app - jaeger";
});

// Health check endpoint
app.MapGet("/health", async (MyDbContext dbContext) =>
{
    try
    {
        // Attempt to connect to the database
        if (await dbContext.Database.CanConnectAsync())
        {
            return Results.Ok("Database connection is healthy.");
        }
        return Results.Problem("Database connection failed.", statusCode: 500);
    }
    catch (Exception ex)
    {
        return Results.Problem($"Error connecting to database: {ex.Message}", statusCode: 500);
    }
});

// Test DB endpoint
app.MapGet("/testdb", async (MyDbContext dbContext) =>
{
    try
    {
        var count = await dbContext.MyTable.CountAsync();
        return Results.Ok($"Connected to database. Record count: {count}");
    }
    catch (Exception ex)
    {
        return Results.Problem($"Error querying database: {ex.Message}", statusCode: 500);
    }
});

app.Run();

// Define DbContext and entity classes
public class MyDbContext : DbContext
{
    public MyDbContext(DbContextOptions<MyDbContext> options) : base(options) { }

    public DbSet<MyEntity> MyTable { get; set; }
}

public class MyEntity
{
    public int Id { get; set; }
    public string SomeField { get; set; }
}
