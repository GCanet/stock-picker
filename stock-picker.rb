dayPRICES = [17,3,6,9,15,8,6,1,10]

def stock_picker(dayPRICES)
  resultado = []
  beneficioMAX = nil
  dayPRICES.each_with_index do |numero, indiceACTUAL|
    for index in (indiceACTUAL + 1)..(dayPRICES.length() - 1) do
      beneficioACTUAL = dayPRICES[index] - numero
      if beneficioMAX.nil?
        beneficioMAX = beneficioACTUAL
        resultado = [indiceACTUAL, index]
      elsif beneficioACTUAL >= beneficioMAX
        beneficioMAX = beneficioACTUAL
        resultado = [indiceACTUAL, index]
      end
    end
  end 
  return resultado
end