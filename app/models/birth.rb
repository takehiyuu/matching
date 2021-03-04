class Birth < ActiveHash::Base
     self.data = [
          { id: 1, name: '__'}, { id: 2, name: '16'}, { id: 3, name: '17'},
          { id: 4, name: '18'}, { id: 5, name: '19'}, { id: 6, name: '20'},
          { id: 7, name: '21'}, { id: 8, name: '22'}, { id: 9, name: '23'},
          { id: 10, name: '24'}, { id: 11, name: '25'}, { id: 12, name: '26'},
          { id: 13, name: '27'}, { id: 14, name: '28'}, { id: 15, name: '29'},
          { id: 16, name: '30'}, { id: 17, name: '31'}, { id: 18, name: '32'},
          { id: 19, name: '33'}, { id: 20, name: '34'}, { id: 21, name: '35'},
          { id: 22, name: '36'}, { id: 23, name: '37'}, { id: 24, name: '38'},
          { id: 25, name: '39'}, { id: 26, name: '40'}, { id: 27, name: '41'},
          { id: 28, name: '42'}, { id: 29, name: '43'}, { id: 30, name: '44'},
          { id: 31, name: '45'}, { id: 32, name: '46'}, { id: 33, name: '47'},
          { id: 34, name: '48'}, { id: 35, name: '49'}, { id: 36, name: '50'},
          { id: 37, name: '51'}, { id: 38, name: '52'}, { id: 39, name: '53'},
          { id: 40, name: '54'}, { id: 41, name: '55'}, { id: 42, name: '56'},
          { id: 43, name: '57'}, { id: 44, name: '58'}, { id: 45, name: '59'},
          { id: 46, name: '60'}, { id: 47, name: '61'}, { id: 48, name: '62'},
          { id: 49, name: '63'}, { id: 50, name: '64'}, { id: 51, name: '65'},
          { id: 52, name: '66'}, { id: 53, name: '67'}, { id: 54, name: '68'},
          { id: 55, name: '69'}, { id: 56, name: '70'}, { id: 57, name: '71'},
          { id: 58, name: '72'}, { id: 59, name: '73'}, { id: 60, name: '74'},
          { id: 61, name: '75'}, { id: 62, name: '76'}, { id: 63, name: '77'},
          { id: 64, name: '78'}, { id: 65, name: '79'}, { id: 66, name: '80'},

     ]
     include ActiveHash::Associations
     has_many :profiles
end
