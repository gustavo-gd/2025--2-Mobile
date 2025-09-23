using System;
using System.Collections.Generic;

public class Item
{
    public string Nome { get; set; }
    public List<string> Ingredientes { get; set; }
    public decimal Valor { get; set; }
    public bool DisponivelForaHorario { get; set; }
    public List<DayOfWeek> Dias { get; set; }  
    public TimeSpan HoraInicio { get; set; }
    public TimeSpan HoraFim { get; set; }

    public bool EstaDisponivel()
    {
        
        if (DisponivelForaHorario)
            return true;

        var agora = DateTime.Now;

        
        foreach (var dia in Dias)
        {
            
            if (agora.DayOfWeek != dia)
                continue;

            
            if (agora.TimeOfDay >= HoraInicio && agora.TimeOfDay <= HoraFim)
                return true;
        }

        
        return false;
    }
}
