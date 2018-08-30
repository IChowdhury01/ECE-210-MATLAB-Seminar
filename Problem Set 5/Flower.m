classdef Flower
   properties
      petalWidth;
      petalLength;
      sepalWidth;
      sepalLength;
      species;
   end
   methods
      function obj = Flower(a1,a2,a3,a4,c)  % flower class contructor
          if nargin > 0
              if class(a1) == 'double'
                  obj.petalWidth = a1;
              else error('petalWidth must be a Double')
              end
              if class(a2) == 'double'
                  obj.petalLength = a2;
              else error('petalLength must be a Double')
              end
              if class(a3) == 'double'
                  obj.sepalWidth = a3;
              else error('sepalWidth must be a Double')
              end
              if class(a4) == 'double'
                  obj.sepalLength = a4;
              else error('sepalLength must be a Double')
              end
              if class(c) == 'char'
                  obj.species = c;
              else error('species must be a char')
              end
          end
      end
      function L = getSLength(obj)  % Function to retrieve sepal length of object
          L = obj.sepalLength;
      end
      function R = report(obj)  % Function to report all relevant data for the flower object
          R = ['The length and width of its sepal are ' num2str(obj.sepalLength) 'cm and ' num2str(obj.sepalWidth) 'cm respectively, while that of its petal are ' num2str(obj.petalLength) 'cm and ' num2str(obj.petalWidth) 'cm respectively. It belongs to the ' num2str(obj.species)  ' class.'];
      end
   end
end