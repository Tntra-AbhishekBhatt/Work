using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;
using POC_RSA.Data;
using POC_RSA.Repository;
using POC_RSA.Services;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.


builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

var provider = builder.Services.BuildServiceProvider();
var config = provider.GetRequiredService<IConfiguration>();
builder.Services.AddDbContext<AppDBContext>(options => options.UseSqlServer(config.GetConnectionString("dbcs")));

builder.Services.AddSingleton<ICryptographyService, CryptographyService>();
builder.Services.AddSwaggerGen();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();

app.MapControllers();

app.Run();
