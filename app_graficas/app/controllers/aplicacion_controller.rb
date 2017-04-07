class AplicacionController < ApplicationController
  def index
    data_array_1 = [1, 4, 3, 5, 9]
    data_array_2 = [4, 2, 10, 4, 7]
    @barv = Gchart.bar(         #Tipo de Gráfica "line" "pie" "bar"
            :size => '600x400',
            :bar_colors => ['000000', '0088FF'],
            :title => "grafica de Barra- Cantidad de mujeres y hombres por salon",
            :bg => 'EFEFEF',
            :legend => ['Mujeres ', 'Hombres'],
            :data => [[1, 4, 3, 5, 9], data_array_2],
            :stacked => true,
            :legend_position => 'bottom',
            :axis_with_labels => [['x'], ['y']],
            :max_value => 15,
            :min_value => 0,
            :axis_labels => [["A|B|C|D|E"]],
            )

            @barh = Gchart.bar(


                   :size => '600x400',
                   :bar_colors => ['000000', '0088FF'],
                   :title => "grafica de Barra- Cantidad de mujeres y hombres por salon",
                   :bg => 'EFEFEF',
                  :legend => ['Mujeres ', 'Hombres'],
                  :data => [data_array_1, data_array_2],
                  :orientation => 'horizontal',
                  :stacked => false,
                  :legend_position => 'bottom',
                  :axis_with_labels => [['y'], ['x']],
                  :max_value => 15,
                  :min_value => 0,
                  :axis_labels => [["A|B|C|D|E|F"]],
                   )

                   @pastel=Gchart.pie(

                    :size   => '600x400',
                    :title  => "Grafica de Pastel- Navegadores mas usados",
                    :legend => ['Firefox', 'Chrome', 'IE', 'Safari', 'Opera'],
                    :custom => "chco=FFF110,FF0000",
                    :data   => [120, 45, 25, 55, 20])

                    @barchart = Gchart.line(

                   :size => '600x400',
                   :bar_colors => ['000000', '0088FF'],
                   :title => "Grafica Lineal- Grafica de ventas",
                   :bg => 'EFEFEF',
                   :legend => ['Hard Drive', 'Ram'],
                   :data => [data_array_1, data_array_2],
                   :legend_position => 'bottom',
                   :axis_with_labels => [['x'], ['y']],
                   :max_value => 15,
                   :min_value => 0,
                   :axis_labels => [["A|B|C|D|E"]],
                   )

  end
end
