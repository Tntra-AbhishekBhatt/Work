
using AutoMapper;
using POC_RSA.Dto;
using POC_RSA.Model;

namespace POC_RSA
{
    public class MappingConfiguration
    {
        public static MapperConfiguration RegisterMaps()
        {
            var mappingConfig = new MapperConfiguration(configurationExpression =>
            {
                configurationExpression.CreateMap<DetailsDto,Details>().ReverseMap();
            });
            return mappingConfig;
        }
    }        
}
