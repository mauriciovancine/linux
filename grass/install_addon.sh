cd ~/Downloads
sudo grass -cs EPSG:4326 --text g.extension extension=r.cell.area operation=add

grass -c EPSG:3358 grassdb --text
