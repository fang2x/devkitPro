appdirectory = System.currentDirectory().."/"
dofile (appdirectory.."config.cfg") 
if bgx == nil then
bgx = 480
end
if bgy == nil then
bgy = 272 
end
if sens == nil then 
sens = 64
end
if (appdirectory.."config.cfg") == nil then
bgx = 480  --width of canvas 
bgy = 272  --height of canvas
sens = 64  --cursorsensitivity
end
red = Color.new(255, 0, 0);
black = Color.new(0, 0, 0);
blue = Color.new(0, 0, 255); 
yellow = Color.new(255, 255, 0); 
white = Color.new(255, 255, 255);
navy = Color.new(0, 0, 160);
green = Color.new(0, 128, 0);
lila = Color.new(255, 0, 255);
orange = Color.new(255, 128, 64);
grey = Color.new(192, 192, 192);
hellgreen = Color.new(0, 255,0);
grey2 = Color.new(50, 50, 50);
bgc = Color.new(255, 255, 255);
bcs = Image.load(appdirectory.."img/bcs.png")
filbrbg = Image.load(appdirectory.."img/filbrbg.png")
folder = Image.load(appdirectory.."img/folder.png")
folder_over = Image.load(appdirectory.."img/folder_over.png")
backspace = Image.load(appdirectory.."img/backspace.png")
backspace_over = Image.load(appdirectory.."img/backspace_over.png")
sec1 = Color.new(0, 0, 0);
sec2 = Color.new(0, 0, 0);
sec3 = Color.new(0, 0, 0);
sec4 = Color.new(0, 0, 0);
sec5 = Color.new(0, 0, 0);
seb1 = Color.new(0, 0, 0);
seb2 = Color.new(0, 0, 0);
linebreak = "\n"  
font=Font.load(appdirectory.."img/font.ttf") 
font:setPixelSizes(0,10) 

r = 255
g = 255
b = 255
a = 0
color = Color.new(r, g, b, a)

tra = 0

picsz = Image.load(appdirectory.."img/picsz.png") 

screen:blit(0, 0, bcs, 0, 0, bcs:width(), bcs:height(), false)
screen.flip()
screen:clear() 
screen.waitVblankStart(120)

s = 1
k = 0
System.currentDirectory("ms0:/PSP/PHOTO")
fl=System.listDirectory()
nf=table.getn(fl) 

oldpad = Controls.read() 
selecb = 1
selecc = 1
selecd = 1
ver = "Pro"
cho = 0
nem = 0
bgstyle = 1
pname = "untitled"
bgset = "color"

kb_bg = Image.load(appdirectory.."img/kb_bg.png")
kb_overlay = Image.load(appdirectory.."img/kb_overlay.png")
kb_overlayB = Image.load(appdirectory.."img/kb_overlay_B.png")
kb_overlayA = Image.load(appdirectory.."img/kb_overlay_A.png")
kb_highlight = Image.load(appdirectory.."img/kb_highlight.png")

text = ""
select = { }
black = Color.new(0, 0, 0)
mode = 0

function keyboard()
textInputed = false
text=""
while (textInputed == false) do
length = string.len(text) 
oldpad = pad
pad = Controls.read()

dx = pad:analogX()
dy = pad:analogY()

if (dx > 64) then

select.x = 3

if (dy > 64) then
hx=274
hy=198
elseif (dy < -64) then
hx=274
hy=80
else
hx=274
hy=140
end

elseif (dx < -64) then

select.x = 1

if (dy > 64) then
hx=152
hy=200
elseif (dy < -64) then
hx=152
hy=80
else
hx=152
hy=140
end

else

select.x = 2

if (dy > 64) then
hx=213
hy=200
elseif (dy < -64) then
hx=213
hy=80
else
hx=213
hy=140
end

end
if (dy > 64) then
select.y = 3
elseif (dy < -64) then
select.y = 1
else
select.y = 2
end

if (pad ~= oldpad) then

if (mode == 0) then
if (pad:cross()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "b"
end
if (select.y == 2) then
text = text .. "k"
end
if (select.y == 3) then
text = text .. "s"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "e"
end
if (select.y == 2) then
text = text .. " "
end
if (select.y == 3) then
text = text .. "v"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "h"
end
if (select.y == 2) then
text = text .. "p"
end
if (select.y == 3) then
text = text .. "y"
end
end
end

if (pad:square()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "a"
end
if (select.y == 2) then
text = text .. "j"
end
if (select.y == 3) then
text = text .. "r"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "d"
end
if (select.y == 2) then
text = text .. "m"
end
if (select.y == 3) then
text = text .. "u"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "g"
end
if (select.y == 2) then
text = text .. "o"
end
if (select.y == 3) then
text = text .. "x"
end
end
end


if (pad:circle()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "c"
end
if (select.y == 2) then
text = text .. "l"
end
if (select.y == 3) then
text = text .. "t"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "f"
end
if (select.y == 2) then
text = text .. "n"
end
if (select.y == 3) then
text = text .. "w"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "i"
end
if (select.y == 2) then
text = text .. "q"
end
if (select.y == 3) then
text = text .. "z"
end
end
end

if (pad:triangle()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. ","
end
if (select.y == 2) then
text = text .. "-"
end
if (select.y == 3) then
text = text .. "("
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "."
end
if (select.y == 2) then
text=string.sub(text, 1,length-1)
end
if (select.y == 3) then
text = text .. ":"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "!"
end
if (select.y == 2) then
text = text .. "?"
end
if (select.y == 3) then
text = text .. ")"
end
end
end
elseif mode == 2 then
if (pad:cross()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "B"
end
if (select.y == 2) then
text = text .. "K"
end
if (select.y == 3) then
text = text .. "T"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "E"
end
if (select.y == 2) then
text = text .. "N"
end
if (select.y == 3) then
text = text .. "W"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "H"
end
if (select.y == 2) then
text = text .. "Q"
end
if (select.y == 3) then
text = text .. "Z"
end
end
end

if (pad:square()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "A"
end
if (select.y == 2) then
text = text .. "J"
end
if (select.y == 3) then
text = text .. "S"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "D"
end
if (select.y == 2) then
text = text .. "M"
end
if (select.y == 3) then
text = text .. "V"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "G"
end
if (select.y == 2) then
text = text .. "P"
end
if (select.y == 3) then
text = text .. "Y"
end
end
end


if (pad:circle()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "C"
end
if (select.y == 2) then
text = text .. "L"
end
if (select.y == 3) then
text = text .. "U"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "F"
end
if (select.y == 2) then
text = text .. "O"
end
if (select.y == 3) then
text = text .. "X"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "I"
end
if (select.y == 2) then
text = text .. "R"
end
if (select.y == 3) then
text = text .. ""
end
end
end
else

if (pad:circle()) then

if (select.x == 1) then
if (select.y == 1) then
text = text .. "1"
end
if (select.y == 2) then
text = text .. "4"
end
if (select.y == 3) then
text = text .. "7"
end
end
if (select.x == 2) then
if (select.y == 1) then
text = text .. "2"
end
if (select.y == 2) then
text = text .. "5"
end
if (select.y == 3) then
text = text .. "8"
end
end
if (select.x == 3) then
if (select.y == 1) then
text = text .. "3"
end
if (select.y == 2) then
text = text .. "6"
end
if (select.y == 3) then
text = text .. "9"
end
end
end

if (pad:cross()) then

if (select.x == 1) then
if (select.y == 1) then
end
if (select.y == 2) then
end
if (select.y == 3) then
end
end
if (select.x == 2) then
if (select.y == 1) then
end
if (select.y == 2) then
text = text .. " "
end
if (select.y == 3) then
end
end
if (select.x == 3) then
if (select.y == 1) then
end
if (select.y == 2) then
end
if (select.y == 3) then
text = text .. "0"
end
end
end


end

if (pad:r()) then
if (mode == 1)then
mode = 0
else
mode = 1
end
end
if (pad:l()) then
if (mode == 2)then
mode = 0
else
mode = 2
end
end

if pad:right() then text = text.."/" end

if (pad:start()) then
textInputed = true
end

end

screen:blit(0, 0, kb_bg)
screen:blit(hx, hy, kb_highlight)
if (mode == 1)then
screen:blit(0, 0, kb_overlayB)
elseif (mode == 2) then
screen:blit(0, 0, kb_overlayA)
else
screen:blit(0, 0, kb_overlay)
end
screen:print(50, 38, text, black)
screen.flip()
screen.waitVblankStart()
screen:clear()

end
return text
end

function scleImage(newX, newY, theImage) 

rsizedImage = Image.createEmpty(newX, newY) 
for x = 1, newX do 
for y = 1, newY do 
rsizedImage:blit(x,y , theImage,
math.floor(x*(theImage:width()/newX)),
math.floor(y*(theImage:height()/newY)),1,1) 
end 
end 
return rsizedImage 

end

function main()
red = Color.new(255, 0, 0);
black = Color.new(0, 0, 0);
blue = Color.new(0, 0, 255); 
yellow = Color.new(255, 255, 0); 
white = Color.new(255, 255, 255);
clearcolor = Color.new(255, 255, 255,0);
navy = Color.new(0, 0, 160);
green = Color.new(0, 128, 0);
lila = Color.new(255, 0, 255);
orange = Color.new(255, 128, 64);
grey = Color.new(192, 192, 192);
hellgreen = Color.new(0, 255,0);
grey2 = Color.new(50, 50, 50);
bgc = Color.new(255, 255, 255);
r_sec = 0
g_sec = 0
b_sec = 0
sec_color = Color.new(r_sec,g_sec,b_sec)
brsh = 1 

menubg1 = Color.new(255, 255, 255);
menubg2 = Color.new(255, 255, 255);
menubg3 = Color.new(255, 255, 255);
menubg4 = Color.new(255, 255, 255);
cursor = Image.load(appdirectory.."img/cursor.png")
cursor_fill = Image.load(appdirectory.."img/cursor_fill.png")
cursor_eff = Image.load(appdirectory.."img/cursor_eff.png")
cursor_gra = Image.load(appdirectory.."img/cursor_brush.png")
cursor_sta = Image.load(appdirectory.."img/cursor_sta.png")
cursor_er = Image.load(appdirectory.."img/cursor_er.png")
cursor_pip = Image.load(appdirectory.."img/cursor_pip.png")
cursor_zoo = Image.load(appdirectory.."img/cursor_zoo.png")
cursor_fon = Image.load(appdirectory.."img/cursor_fon.png")
cursor_rgb = Image.load(appdirectory.."img/cursor_rgb.png")
alphabg = Image.load(appdirectory.."img/alpha.png")
brpath = "brushes/brush"
brush = Image.load(appdirectory.."brushes/1.png")
cobg = Image.load(appdirectory.."img/cobg.png") 
cobg1 = Image.load(appdirectory.."img/cobg.png") 
cobg2 = Image.load(appdirectory.."img/cobg.png") 
cobg3 = Image.load(appdirectory.."img/cobg.png") 
cobgo = Image.load(appdirectory.."img/cobgo.png") 
conf1 = Color.new(0,0,0) 
conf2 = Color.new(0,0,0)
grabru = Image.load(appdirectory.."img/graffitibrushes.png") 
txfo=Font.load(appdirectory.."fonts/1.ttf") 
txfo:setPixelSizes(0,14)  

cursor_draw = Image.load(appdirectory.."img/cursor_draw.png")
mainmenubg = Image.load(appdirectory.."img/mainmenu.png")
botmenubg = Image.load(appdirectory.."img/botmenu.png")
botfont = Image.load(appdirectory.."img/botfont.png") 
menr = Image.load(appdirectory.."img/menr.png")
menr2 = Image.load(appdirectory.."img/menr2.png")
menr3 = Image.load(appdirectory.."img/menr3.png")
menr4 = Image.load(appdirectory.."img/menr4.png")
menb = Image.load(appdirectory.."img/menb.png") 
over1 = Image.load(appdirectory.."img/over1.png")
over2 = Image.load(appdirectory.."img/over2.png")
ma1pic = Image.load(appdirectory.."img/ma1pic.png")
ma2pic = Image.load(appdirectory.."img/ma2pic.png")
ma3pic = Image.load(appdirectory.."img/ma3pic.png")
ma4pic = Image.load(appdirectory.."img/ma4pic.png")
bo1pic = Image.load(appdirectory.."img/bo1pic.png")
bo2pic = Image.load(appdirectory.."img/bo2pic.png")
bat3 = Image.load(appdirectory.."img/bat3.png")
bat2 = Image.load(appdirectory.."img/bat2.png")
bat1 = Image.load(appdirectory.."img/bat1.png")
bat0 = Image.load(appdirectory.."img/bat0.png")
palette = Image.load(appdirectory.."img/palette.png")
rgbline = Image.load(appdirectory.."img/rgbline.png")
rgbcol = Image.load(appdirectory.."img/rgbcol.png") 
cur_bru = Image.load(appdirectory.."img/cur_bru.png")  
pal_full = Image.load(appdirectory.."img/pal_full.png")
battery = System.powerGetBatteryLifePercent() 
lt = System.powerGetBatteryLifeTime()
delbg1 = Color.new(255, 255, 255);
delbg2 = Color.new(255, 255, 255);
delbg3 = Color.new(255, 255, 255);
recsetc1 = Color.new(0, 0, 0);
recsetc2 = Color.new(0, 0, 0);
recsetc3 = Color.new(0, 0, 0);
menscolor1 = Color.new(0, 0, 0);
menscolor2 = Color.new(0, 0, 0);
menscolor3 = Color.new(0, 0, 0);
savc1 = Color.new(0, 0, 0);
savc2 = Color.new(0, 0, 0);
savc3 = Color.new(0, 0, 0);
savc4 = Color.new(0, 0, 0);
savc5 = Color.new(0, 0, 0);
ccl1 = Color.new(0, 0, 0);
ccl2 = Color.new(0, 0, 0);
ccl3 = Color.new(0, 0, 0);
trcl1 = Color.new(0, 0, 0);
trcl2 = Color.new(0, 0, 0);
  
x0 = 50
y0 = 50
x1 = 0
y1 = 0
x2 = 8
y2 = 218
x3 = 0
y3 = 0
x4 = 0
y4 = 0
rx = 106
ry = 113
gx = 106
gy = 129
bx = 106
by = 145
rgbnum = 1
w = 40
h = 30
recx = 10
recy = 10
crs = cursor
sx = 431
sy = 119
selx = 1
sely = 1
brsz = 1
snap = 0.20
eff = 1
seco = 1
comode = 0
prmode = 0
opmode = 0
bronu = 1
conf = 0
wed = 0
over = over1
r = 1
ra = 10
rb = 10
nem = 0
box = 12
boy = 10
ma = 1
linfu = 0
bo = 1
cel = 1
del = 1
eel = 1
linsel = 1
grx = bgx + 100
gry = bgy + 100
umode = 0
resi = 0
restri = "Off"
forc = 0
scale = 1
recstyle = "wireframe"
recvis = 1
ac = "activated"
recset = 1
radius = 7
tx = 0
ty = 0
fosi = 14
cpuset = 2
cpu = "333"
ment = 0
text = "Your text here"
oldpad = Controls.read()
name2="ms0:/PSP/PHOTO/BermudaCS_Pic_"
endung=".png"
nummer = 0
fonu = 1
granu = 1
circlestyle="wireframed"
cs = 1
cm = 1
cangle = 360
cgac = 0
layer1 = bg
thickness = 1
hy = 10
ho = 10
trimenu = 1
polylength = 20

savepath = "ms0:/PSP/PHOTO/"

lfont = System.listDirectory(appdirectory.."fonts/")
fontlimit = table.getn(lfont)

lbrush = System.listDirectory(appdirectory.."brushes/")
brushlimit = table.getn(lbrush)


function Gu.blit(x, y, image, scale, flip)
  
  if not scale or type(scale) == "string" then 
    flip = scale
    scale = 1
  end
  
  if flip then
    if flip == 1 then
      x_start = image:width()
      y_start = 0
      x_end  = 0
      y_end = image:height()
    elseif  flip == 2 then
      x_start = 0
      y_start = image:height()
      x_end  = image:width()
      y_end = 0
    elseif flip == 3 then
      x_start = image:width()
      y_start = image:height()
      x_end = 0
      y_end = 0
    end
  else
    x_start = 0
    y_start = 0
    x_end = image:width()
    y_end = image:height()
  end
  
  width = (image:width()*scale)+x
  height = (image:height()*scale)+y
  temp = {
  {x_start, y_start, x, y, 0},
  {x_end, y_end, width, height, 0}
  }
  Gu.enable(Gu.TEXTURE_2D)
  Gu.texImage(image)
  Gum.drawArray(Gu.SPRITES, Gu.TEXTURE_32BITF+Gu.VERTEX_32BITF+Gu.TRANSFORM_2D, temp)
end

function scaleImage(newX, newY, theImage) 

resizedImage = Image.createEmpty(newX, newY) 
for x = 1, newX do 
for y = 1, newY do 
resizedImage:blit(x,y , theImage,
math.floor(x*(theImage:width()/newX)),
math.floor(y*(theImage:height()/newY)),1,1) 
end 
end 
return resizedImage 

end

while true do

--mainblits
screen:fillRect(0, 0, 480, 272, grey2)
screen:blit(box,boy, alphabg,0,0,bgx*scale,bgy*scale) 

if scale == 1 then
screen:blit(box,boy, bg, 0,0,bg:width(), bg:height(), true)
end
if scale > 1 or scale < 1 then
Gu.start3d()
Gu.blit(box, boy, bg, scale)
Gu.end3d()
end

if ma > 0 then
screen:blit(320,0, mainmenubg, 0,0,mainmenubg:width(), mainmenubg:height(), false)
end 
if bo > 0 and ma > 0 then
screen:blit(0,246, botmenubg,0,0,botmenubg:width(), botmenubg:height(), false)
if battery > 70 and battery <= 100 then
screen:blit(255, 253, bat3, 0, 0, bat3:width(), bat3:height(), false)
end
if battery <= 70 and battery > 35 then
screen:blit(255, 253, bat2, 0, 0, bat2:width(), bat2:height(), false)
end
if battery <= 35 and battery > 5 then
screen:blit(255, 253, bat1, 0, 0, bat1:width(), bat1:height(), false)
end
if battery <= 5 and battery > 0 then
screen:blit(255, 253, bat0, 0, 0, bat0:width(), bat0:height(), false)
end
screen:fontPrint(font,280, 264, battery.."%", black)
end

if ma == 1 then
screen:blit(325, 21, menr, 0, 0, menr:width(), menr:height(), true)
 if selx == 1 and sely == 1 then
 screen:blit(332, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 2 and sely == 1 then
 screen:blit(361, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 3 and sely == 1 then
 screen:blit(390, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 4 and sely == 1 then
 screen:blit(419, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 5 and sely == 1 then
 screen:blit(448, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 1 and sely == 2 then
 screen:blit(332, 94, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 2 and sely == 2 then
 screen:blit(361, 94, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 3 and sely == 2 then
 screen:blit(390, 94, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 4 and sely == 2 then
 screen:blit(419, 94, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 5 and sely == 2 then
 screen:blit(448, 94, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 1 and sely == 3 then
 screen:blit(332, 123, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 2 and sely == 3 then
 screen:blit(361, 123, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 3 and sely == 3 then
 screen:blit(390, 123, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 4 and sely == 3 then
 screen:blit(419, 123, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 5 and sely == 3 then
 screen:blit(448, 123, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 1 and sely == 4 then
 screen:blit(332, 152, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 2 and sely == 4 then
 screen:blit(361, 152, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 3 and sely == 4 then
 screen:blit(390, 152, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 4 and sely == 4 then
 screen:blit(419, 152, over, 0, 0, over:width(), over:height(), true)
 end
 if selx == 5 and sely == 4 then
 screen:blit(448, 152, over, 0, 0, over:width(), over:height(), true)
 end
screen:blit(332, 64, ma1pic, 0, 0, ma1pic:width(), ma1pic:height(), true)
end
  
if ma == 2 then
screen:blit(325, 21, menr2, 0, 0, menr2:width(), menr2:height(), true)
 if cel == 1 then
 screen:blit(332, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if cel == 2 then
 screen:blit(361, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if cel == 3 then
 screen:blit(390, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if cel == 4 then
 screen:blit(419, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if cel == 5 then
 screen:blit(448, 64, over, 0, 0, over:width(), over:height(), true)
 end
screen:blit(332, 64, ma2pic, 0, 0, ma2pic:width(), ma2pic:height(), true)
end 

if ma == 3 then
screen:blit(325, 21, menr3, 0, 0, menr3:width(), menr3:height(), true)
 if del == 1 then
 screen:blit(332, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if del == 2 then
 screen:blit(361, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if del == 3 then
 screen:blit(390, 64, over, 0, 0, over:width(), over:height(), true)
 end
screen:blit(332, 64, ma3pic, 0, 0, ma3pic:width(), ma3pic:height(), true)
end 

if ma == 4 then
screen:blit(325, 21, menr4, 0, 0, menr4:width(), menr4:height(), true)
 if eel == 1 then
 screen:blit(332, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if eel == 2 then
 screen:blit(361, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if eel == 3 then
 screen:blit(390, 64, over, 0, 0, over:width(), over:height(), true)
 end
 if eel == 4 then
 screen:blit(419, 64, over, 0, 0, over:width(), over:height(), true)
 end
screen:blit(332, 64, ma4pic, 0, 0, ma4pic:width(), ma4pic:height(), true)
end 
  
if bo == 1 then
if ma > 0 then
screen:blit(0, 197, bo1pic, 0, 0, bo1pic:width(), bo1pic:height(), true)
screen:blit(0, 247, botfont, 0, 0, botfont:width(), botfont:height(), true)
end
end
if bo == 2 then
if ma > 0 then
screen:blit(0, 155, bo2pic, 0, 0, bo2pic:width(), bo2pic:height(), true)
screen:blit(0, 247, botfont, 0, 0, botfont:width(), botfont:height(), true)
screen:fontPrint(font,200, 200, "Preview: "..restri, black)
screen:fontPrint(font,200, 220, "X: "..math.floor(x0 - box/scale), black)
screen:fontPrint(font,200, 235, "Y: "..math.floor(y0 - boy/scale), black)
if resi == 1 then
scaleImage(100,60, bg)
screen:blit(16,174, resizedImage)
end
end
end
if bo == 3 then
if ma > 0 then
screen:blit(0, 247, botfont, 0, 0, botfont:width(), botfont:height(), true)
end
end

--define settings

if ma > 4 then
ma = 0
end
if x0 > 490 then
x0 = 490
end
if x0 < -10 then
x0 = -10
end
if y0 > 282 then
y0 = 282
end
if y0 < -10 then
y0 = -10
end
if bo > 3 then
bo = 0
end
if selx > 5 then selx = 1 end
if selx < 1 then selx = 5 end
if sely > 4 then sely = 1 end
if sely < 1 then sely = 4 end
if cel > 5 then cel = 1 end
if cel < 1 then cel = 5 end
if del > 3 then del = 1 end
if del < 1 then del = 3 end
if eel > 4 then eel = 1 end
if eel < 1 then eel = 4 end
if nem == 1 then
over = over2
end
if nem == 0 then
over = over1
end

        if comode == 0 then
        color = screen:pixel(x2, y2)
        end
  if comode == 1 then
   if pad:cross() and selx == 4 and sely == 1 and ma == 1 then
   color = bg:pixel(x0-box/scale,y0-boy/scale)
   end
   if pad:circle() and selx == 4 and sely == 1 and ma == 1 then
   sec_color = bg:pixel(x0-box/scale,y0-boy/scale)
   end
  end
  if comode == 2 then
   color = Color.new(r,g,b)
  end
  if comode == 3 then
   if pad:cross() and del == 1 and ma == 3 and nem == 1 then
   color = pal_full:pixel(x0*scale-30,y0*scale-30)
   end
  end

  
--define actions
pad=Controls.read()
if pad:l() == false and pad:r() == false then
           if nem == 0 and ma == 1 then
             if pad:up() and not oldpad:up() then
             sely = sely - 1
             end
             if pad:down() and not oldpad:down() then
             sely = sely + 1
             end
             if pad:right()  and not oldpad:right() then
             selx = selx + 1
             end
             if pad:left()  and not oldpad:left() then
             selx = selx - 1
             end
           end
          if nem == 0 and ma == 2 then
             if pad:right()  and not oldpad:right() then
             cel = cel + 1
             end
             if pad:left()  and not oldpad:left() then
             cel = cel - 1
             end
           end
       if nem == 0 and ma == 3 then
             if pad:right()  and not oldpad:right() then
             del = del + 1
             end
             if pad:left()  and not oldpad:left() then
             del = del - 1
             end
           end
         if nem == 0 and ma == 4 then
             if pad:right()  and not oldpad:right() then
             eel = eel + 1
             end
             if pad:left()  and not oldpad:left() then
             eel = eel - 1
             end
           end
           if pad:down()  and not oldpad:down() and nem == 1 and eel == 2 and ma == 4 then s = s + 1 end
           if pad:up()  and not oldpad:up() and nem == 1 and eel == 2 and ma == 4 then s = s - 1 end
     if pad:start()  and not oldpad:start() and nem == 0 then
     ma = ma+1
     end
           if pad:select()  and not oldpad:select() then
           bo = bo + 1
           end       
elseif pad:l() then
  if pad:left() == false and oldpad:left() == true then
    x0 = x0 - 1
  end
  if pad:right() == false and oldpad:right() == true then
    x0 = x0 + 1
  end
  if pad:up() == false and oldpad:up() == true then
    y0 = y0 - 1
  end
  if pad:down() == false and oldpad:down() == true then
    y0 = y0 + 1
  end
end
oldpad = pad

pad = Controls.read()
  dx = pad:analogX()
  dy = pad:analogY()
  if dx > 30 then
    if sel ~= 14 then
      x0 = x0 + (math.abs(pad:analogX())/sens)
    end
    if selx == 4 and sely == 3 and ma == 1 then
      box = box - 2
    end
  end

  if dx < -30 then
    if sel ~= 14 then
      x0 = x0 - (math.abs(pad:analogX())/sens)
    end
    if selx == 4 and sely == 3 and ma == 1 then
      box = box + 2
    end
  end

  if dy > 30 then
    if sel ~= 14 then
     y0 = y0 + (math.abs(pad:analogY())/sens)
   end
   if selx == 4 and sely == 3 and ma == 1 then
   boy = boy - 2
   end
    end

    if dy < -30 then
   if sel ~= 14 then
     y0 = y0 - (math.abs(pad:analogY())/sens)
   end
   if selx == 4 and sely == 3 and ma == 1 then
   boy = boy + 2
   end
  end

  
    
  
  
  --define Functions
  
  
    function saveImage(name, extension, savepath)
  System.usbDiskModeDeactivate()
    bg:save(savepath..name..extension)
      screen:blit(0, 0, picsz, 0, 0, picsz:width(), picsz:height(), true)
    screen:fontPrint(font,220, 100, "Image was saved", black)
    screen.flip()
    screen.waitVblankStart(180)  
    end
  
    function savebrush()
  System.usbDiskModeDeactivate()
  ordbr = System.listDirectory(appdirectory.."brushes/")
    bruli = table.getn(ordbr)
  bounter = bruli-2
    bg:save(appdirectory.."brushes/"..bounter..".png")
      screen:blit(0, 0, picsz, 0, 0, picsz:width(), picsz:height(), true)
    screen:fontPrint(font,220, 100, "Brush was saved", black)
    screen.flip()
    screen.waitVblankStart(180)  
    end
  
  
  function drawCirc(where, x, y, radius,cangle,strength, color)--Thanks to MagicianFB

for angle=0, cangle do
where:drawLine((math.sin(angle)*radius)+x,(math.cos(angle)*radius)+y,(math.sin(angle+strength-1)*radius )+x,(math.cos(angle+strength-1)*radius )+y, color)
end
end

    function fillCirc(where, x, y, radius,cangle,strength, color)

drawCirc(where, x, y, radius,cangle,strength, color)
for i=1, radius do
drawCirc(where, x, y, (i),cangle,strength, color)
end
end
  
  function EffectDraw6(x,y,color)
  angle=1
  a=100
  b=60
   for angle=1,90 do
   bg:pixel(math.abs(x-(a-(a/90)*angle)),math.abs(y-(b-(b/90)*angle)),color)
   bg:pixel(math.abs(x-(a-(a/90)*angle)),math.abs(y+(b-(b/90)*angle)),color)
   bg:pixel(math.abs(x+(a-(a/90)*angle)),math.abs(y-(b-(b/90)*angle)),color)
   bg:pixel(math.abs(x+(a-(a/90)*angle)),math.abs(y+(b-(b/90)*angle)),color)
   end
  end
  
  function EffectDraw7(x,y,color)
  angle=1
  a=100
  b=60
   for angle=1,90 do
   bg:pixel(math.abs(x-(a-(a/90)*angle)),math.abs(y-(b/90)*angle),color)
   bg:pixel(math.abs(x-(a-(a/90)*angle)),math.abs(y+(b/90)*angle),color)
   bg:pixel(math.abs(x+(a-(a/90)*angle)),math.abs(y-(b/90)*angle),color)
   bg:pixel(math.abs(x+(a-(a/90)*angle)),math.abs(y+(b/90)*angle),color)
   end
  end
  
  function drawEllipse(where, x, y, width, height, color)
    local x0 = x+(width/2)
    local y0 = y+(height/2)

    for degree=0,360 do
        radians0 = degree * ( math.pi / 180)
        radians1 = (degree+1) * (math.pi / 180)
        where:drawLine((math.cos(radians0)*width)+x0, (math.sin(radians0)*height)+y0, (math.cos(radians1)*width)+x0, (math.sin(radians1)*height)+y0, color) 
    end
end

    function brushes(where,x,y,radius,color)
  radian = math.rad(360)
  for radian = 0,360 do
  where:drawLine(x,y,x + math.cos(radian)*radius, y + math.sin(radian)*radius,color) 
  end
  end

    function drawTriangle(target, x, y, hy, ho, color)
    target:drawLine(x, y, (x+hy), y, color)
    target:drawLine((x+hy), y, (x+(hy/2)), (y-ho), color)
    target:drawLine((x+(hy/2)), (y-ho), x, y, color)
    end

    function drawPolygon(target,x,y,length,color)
  ecken = 6
  sinus = length*math.sin(math.rad(360/(ecken*2))) 
  cosinus = length*math.cos(math.rad(360/(ecken*2)))
    target:drawLine(x-cosinus,y-sinus,x-cosinus,y+sinus,color)
  target:drawLine(x-cosinus,y+sinus,x,y+length,color)
  target:drawLine(x+cosinus,y+sinus,x,y+length,color)
  target:drawLine(x+cosinus,y-sinus,x+cosinus,y+sinus,color)
  target:drawLine(x-cosinus,y-sinus,x,y-length,color)
  target:drawLine(x+cosinus,y-sinus,x,y-length,color)
  end
  

  --menu selection
--pencil
if selx == 1 and sely == 1 then
 if ma == 1 then
  tx = 0
  ty = -14
  crs = cursor_draw
  if pad:circle() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if pad:cross() then
     if brsz == 1 then
     bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 - box/scale, y1 - boy/scale, color)
     end  
     if brsz > 1 then
     bg:fillRect(x0 - box/scale, y0 - boy/scale, brsz, brsz, color)
     end
    end  
  if nem == 1 then
    screen:fontPrint(font,330, 191, "</> to set size: "..brsz, black)
    screen:fillRect(350, 200, brsz, brsz, color)
    if pad:right() then
    brsz = brsz + 1
    end
    if pad:left() then
    brsz = brsz - 1
    end
    if brsz < 1 then
    brsz = 1
    end
  end
 end
end
--drawline
if selx == 2 and sely == 1 then
 if ma == 1 then
 crs = cursor_eff
 tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Draw line", black)
      if linfu == 0 then
    if pad:cross() == true then
    x3 = x0
    y3 = y0
      linfu= linfu + 1
    end
    if linfu > 1 then linfu = 1 end
    end
    if linfu == 1 then
     if pad:cross() == false then
     linfu = linfu - 1
     bg:drawLine(x3-box/scale, y3-boy/scale, x0-box/scale, y0-boy/scale, color)
     end
     screen:drawLine(x3*scale, y3*scale, x0*scale, y0*scale, color)
    end
   if linfu < 0 then linfu = 0 end
 end
end
--eraser
if selx == 3 and sely == 1 then
 if ma == 1 then
  tx = 0
  ty = -14
  crs = cursor_er
  if pad:circle() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if pad:cross() then
  bg:fillRect(x0-box/scale,y0-boy/scale, brsz,brsz,clearcolor)
  end
  if nem == 1 then
    screen:fontPrint(font,330, 191, "</> to set size: "..brsz, black)
    screen:fillRect(350, 200, brsz, brsz, black)
    if pad:right() then
       brsz = brsz + 1
       end
       if pad:left() then
       brsz = brsz - 1
       end
       if brsz < 1 then
       brsz = 1
       end
  end
 end
end
--pipette
if selx == 4 and sely == 1 then
 if ma == 1 then
    tx = 0
    ty = -14
    crs = cursor_pip
    screen:fontPrint(font,330, 191, "Pipette", black)
    screen:fontPrint(font,330, 201, "Press X to choose color", black)
    tx = 0
  ty = -13
  if x0 < box/scale then x0 = box/scale end
  if x0 > bgx/scale then x0 = bgx/scale end
  if y0 < boy/scale then y0 = boy/scale end
  if y0 > bgy/scale then y0 = bgy/scale end
  comode = 1
 end
end
--stamps
if selx == 5 and sely == 1 then
 if ma == 1 then
  crs = cursor_sta
  if pad:circle() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  screen:fontPrint(font,330, 191, "Brush: Brush"..bronu, black)
  screen:blit(340, 200, brush, 0, 0, brush:width(), brush:height(), true)
  if nem == 1 then
  if pad ~= oldpad then
    if pad:right() and bronu < brushlimit-3 then
    bronu = bronu + 1
    brush = Image.load(appdirectory.."brushes/"..bronu..".png")
    end
    if pad:left() and bronu < 1 then
    bronu = bronu - 1
    brush = Image.load(appdirectory.."brushes/"..bronu..".png")
    end
  end 
  end
  if pad:cross() then
    bg:blit(x0 - box/scale, y0 - boy/scale, brush, 0, 0, brush:width(), brush:height(), true)
    end 
 end
end
--brush
if selx == 1 and sely == 2 then
 if ma == 1 then
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cur_bru
 tx = 0
 ty = -14
 screen:fontPrint(font,330, 191, "Brush", black)
 brushes(screen,350,230,radius,color)
 if pad:cross() then
 brushes(bg,x0-box/scale,y0-boy/scale,radius,color)
 end
 if nem == 1 then
 screen:fontPrint(font,330, 201, "Size:"..radius, red)
  if pad:right() then radius = radius + 1 end
  if pad:left() then radius = radius - 1 end
  if radius < 0 then radius = 0 end
 end
end
end
--background filltool
if selx == 2 and sely == 2 then
 if ma == 1 then
 crs = cursor_fill
 tx = 12
 ty = -5
 screen:fontPrint(font,330, 191, "Fill screen with Color", black)
 if pad:cross() then
    bg:clear(color)
    bgc = color
      end
end
end
--texttool
if selx == 3 and sely == 2 then
 if ma == 1 then
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cursor_fon
 tx = -10
 if nem == 1 then
 screen:fontPrint(font,330, 191, "Write Text:", black)
 screen:fontPrint(font,330, 211, "Font: "..fonu, menscolor1)
 screen:fontPrint(font,330, 221, "Change Text", menscolor2)
 screen:fontPrint(font,330, 231, "Size: "..fosi, menscolor3)
   if pad:down() then
   ment = ment + 1
   end
   if ment > 2 then
   ment = 0
   end
   if pad:up() then
   ment = ment - 1
   end
   if ment < 0 then
   ment = 2 
   end
   if ment == 1 then
   menscolor1 = black
   menscolor2 = red
   menscolor3 = black
    if pad:circle() then
      keyboard()
    end
   end
   if ment == 0 then
   menscolor1 = red
   menscolor2 = black
   menscolor3 = black
    if pad:right() and fonu < fontlimit-2 then
    fonu = fonu + 1
    txfo = nil
    txfo = Font.load(appdirectory.."fonts/"..fonu..".ttf") 
    txfo:setPixelSizes(0,fosi*scale)
    end
    if pad:left() and fonu > 1 then
    fonu = fonu - 1
    txfo = nil
    txfo = Font.load(appdirectory.."fonts/"..fonu..".ttf")     
    txfo:setPixelSizes(0,fosi*scale)
    end
   end
   if ment == 2 then
   menscolor1 = black
   menscolor2 = black
   menscolor3 = red
    if pad:right() then
    fosi = fosi + 1
    txfo:setPixelSizes(0,fosi*scale)
    end
    if pad:left() and fosi > 14 then
    fosi = fosi - 1
    txfo:setPixelSizes(0,fosi*scale)
    end
   end
   end
   screen:fontPrint(txfo,x0*scale, y0*scale, text, color)
   if pad:cross() then
   bg:fontPrint(txfo,x0-box/scale, y0-boy/scale, text, color)
   end
end
end
--gradient tool
if selx == 4 and sely == 2 then
 if ma == 1 then
 crs = cursor_fill
 screen:fontPrint(font,330, 191, "Press X to fill with", black)
 screen:fontPrint(font,330, 201, "gradient", black)
 colors = color:colors()
 r = colors.r
 g = colors.g
 b = colors.b
 sec_colors = sec_color:colors()
 r_sec = sec_colors.r
 g_sec = sec_colors.g
 b_sec = sec_colors.b
 angle = 0
 gr = r-r_sec
 gg = g-g_sec
 gb = b-b_sec
 if gr < 0 then
 gr = 0
 end
 if gg < 0 then
 gg = 0
 end
 if gb < 0 then
 gb = 0
 end
  if pad:cross() then
     for gline=0,bgy do
   graco = Color.new((gr/bgy)*gline,(gg/bgy)*gline,(gb/bgy)*gline) 
   bg:drawLine(0,gline+angle,bgx,gline-angle,graco)
   end
  end
end
end
--effectdraw
if selx == 5 and sely == 2 then
 if ma == 1 then
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cursor_eff
 tx = -7
 ty = -7
 if nem == 1 then
 screen:fontPrint(font,330, 191, "Effect draw style: "..eff, black)
        if pad ~= oldpad then
        if pad:right() then
    eff = eff + 1
    end
    if pad:left() then
    eff = eff - 1
    end
    end
    if eff < 1 then
    eff = 1
    end
    if eff > 7 then
    eff = 7
    end
 end
        if pad:cross() and eff == 1 then
    bg:drawLine(x0 - box/scale, y0 - boy/scale , 0, 0, color)
      end
    if pad:cross() and eff == 2 then
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 - 20 - box/scale, y1 + 20 - boy/scale, color)
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 + 20 - box/scale, y1 + 20 - boy/scale, color)
    bg:drawLine(x0 -20 - box/scale, y0 + 20 - boy/scale, x1 + 20 - box/scale, y1 + 20 - boy/scale, color)
      end
    if pad:cross() and eff == 3 then
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 + 20 - box/scale, y1 - boy/scale, color)
    bg:drawLine(x0 - box/scale, y0 +20 - boy/scale, x1 + 20 - box/scale, y1 + 20- boy/scale, color)
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 - box/scale, y1 + 20- boy/scale, color)
    bg:drawLine(x0 + 20 - box/scale, y0 - boy/scale, x1 + 20 - box/scale, y1 + 20- boy/scale, color)
      end
    if pad:cross() and eff == 4 then
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 + 20 - box/scale*2, y1 - boy/scale/2, color)
    bg:drawLine(x0 - box/scale, y0 +20 - boy/scale, x1 + 20 - box/scale*2, y1 + 20- boy/scale/2, color)
    bg:drawLine(x0 - box/scale, y0 - boy/scale, x1 - box/scale*2, y1 + 20- boy/scale/2, color)
    bg:drawLine(x0 + 20 - box/scale, y0 - boy/scale, x1 + 20 - box/scale*2, y1 + 20- boy/scale/2, color)
      end
    if pad:cross() and eff == 5 then
    bg:drawLine(x0 - box/scale, y0 - boy /scale, x1 - box/scale + 20, y1 - boy/scale, color)
    bg:drawLine(x0 - box/scale + 10, y0 - boy/scale - 10, x1 - box/scale , y1 - boy/scale + 20, color)
      end
    if pad:cross() and eff == 6 then
    EffectDraw6(x0 - box/scale, y0 - box/scale,color)
    end
    if pad:cross() and eff == 7 then
    EffectDraw7(x0 - box/scale, y0 - box/scale,color)
    end
end
end
--draw circle
if selx == 1 and sely == 3 then
 if ma == 1 then
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cursor_eff
 tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Draw Circle", black)
 if nem == 1 then
 screen:fontPrint(font,330, 201, "Style: "..circlestyle, ccl1)
 screen:fontPrint(font,330, 211, "Angle: "..cangle, ccl2)
 screen:fontPrint(font,330, 221, "Strength: "..thickness, ccl3)
  if pad ~= oldpad then
   if pad:up() then
   cm = cm-1
   end
   if pad:down() then
   cm = cm+1
   end
   if cm < 1 then cm = 3 end
   if cm > 3 then cm = 1 end
   if cm == 1 then
     ccl1 = red
   ccl2 = black
   ccl3 = black
     if pad:right() then
     cs = cs + 1
     end
     if pad:left() then
     cs = cs - 1
     end
     if cs < 1 then cs = 2 end
     if cs > 2 then cs = 1 end
     if cs == 1 then circlestyle="wireframed" end
     if cs == 2 then circlestyle="filled" end
   end
   if cm == 3 then
     ccl1 = black
   ccl2 = black
   ccl3 = red
     if pad:right() then
     thickness = thickness + 1
     end
     if pad:left() then
     thickness = thickness - 1
     end
     if thickness < 0 then thickness = 0 end
   end
  end
 if cm == 2 then
     ccl1 = black
   ccl2 = red
   ccl3 = black
     if pad:right() then
     cangle = cangle + 1
     end
     if pad:left() then
     cangle = cangle - 1
     end
     if cangle < 0 then cangle = 0 end
     if cangle > 360 then cangle = 360 end
   end
 end
 if linfu == 0 then
    if pad:cross() == true then
    x3 = x0
    y3 = y0
      linfu= linfu + 1
    end
    if linfu > 1 then linfu = 1 end
    end
    if linfu == 1 and cs == 1 then
     if pad:cross() == false then
     linfu = linfu - 1
     drawCirc(bg,x3-box/scale,y3-boy/scale,(x0-box/scale)-(x3-box/scale),cangle,thickness,color)
     end
     drawCirc(screen,x3*scale,y3*scale,(x0-x3)*scale,cangle,thickness,color)
    end
    if linfu == 1 and cs == 2 then
     if pad:cross() == false then
     linfu = linfu - 1
     fillCirc(bg,x3-box/scale,y3-boy/scale,(x0-box/scale)-(x3-box/scale),cangle,thickness,color)
     end
     fillCirc(screen,x3*scale,y3*scale,(x0-x3)*scale,cangle,thickness,color)
    end
   if linfu < 0 then linfu = 0 end
end
end
--draw rectangle
if selx == 2 and sely == 3 then
 if ma == 1 then
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cursor_eff
 tx = -7
 ty = -7
 if nem == 1 then
   screen:fontPrint(font,330, 191, "Draw Rectangle", black)
  screen:fontPrint(font,330, 201, "Style: "..recstyle, recsetc1)
  screen:fontPrint(font,330, 211, "a: "..ra, recsetc2)
  screen:fontPrint(font,330, 221, "b: "..rb, recsetc3)
     if pad ~= oldpad then
     if pad:down() then
     recset = recset + 1
     end
     if pad:up() then
     recset = recset - 1
     end
     end
     if recset > 3 then
     recset = 1
     end
     if recset < 1 then
     recset = 3
     end
     if recset == 1 then
     recsetc1 = red
     recsetc2 = black
     recsetc3 = black
       if pad:right() then
       recvis = recvis + 1 
       end
     end
     if recvis > 3 then
     recvis = 1 
     end
     if recvis == 1 then
     recstyle = "wireframe"
     end
     if recvis == 2 then
     recstyle = "filled"
     end
     if recvis == 3 then
     recstyle = "gradient"
     end
     if recset == 2 then
     recsetc1 = black
     recsetc2 = red
     recsetc3 = black
       if pad:right() then
       ra = ra + 1 
       end
     if pad:left() then
       ra = ra - 1 
       end
     if ra < 1 then
     ra = 1
     end
     end
     if recset == 3 then
     recsetc1 = black
     recsetc2 = black
     recsetc3 = red
       if pad:right() then
       rb = rb + 1 
       end
     if pad:left() then
       rb = rb - 1 
       end
     if rb < 1 then
     rb = 1
     end
     end
 end
 if recvis == 1 then
     screen:drawLine(x0*scale , y0*scale , x0*scale + ra*scale , y0*scale , color)
     screen:drawLine(x0*scale , y0*scale , x0*scale , y0*scale + rb*scale , color)
     screen:drawLine(x0*scale + ra*scale, y0*scale , x0*scale + ra*scale , y0*scale + rb*scale , color)
     screen:drawLine(x0*scale , y0*scale  + rb*scale, x0*scale + ra*scale , y0*scale + rb*scale , color)
     end
     if recvis == 2 then
     screen:fillRect(x0*scale ,y0*scale ,ra*scale,rb*scale,color)
     end
     if pad:cross() and recvis == 1 then
     bg:drawLine(x0 - box/scale, y0 - boy/scale, x0 + ra - box/scale, y0 - boy/scale, color)
     bg:drawLine(x0 - box/scale, y0 - boy/scale, x0 - box/scale, y0 + rb - boy/scale, color)
     bg:drawLine(x0 - box/scale + ra, y0 - boy/scale, x0 + ra - box/scale, y0 + rb - boy/scale, color)
     bg:drawLine(x0 - box/scale, y0 + rb - boy/scale, x0 + ra - box/scale, y0 + rb - boy/scale, color)
     end
     if pad:cross() and recvis == 2 then
     bg:fillRect(x0 - box/scale,y0 - boy/scale,ra,rb,color)
     end
     if pad:cross() and recvis == 3 then
      colors = color:colors()
        r = colors.r
        g = colors.g
        b = colors.b
        sec_colors = sec_color:colors()
        r_sec = sec_colors.r
        g_sec = sec_colors.g
        b_sec = sec_colors.b
        gr = r-r_sec
        gg = g-g_sec
        gb = b-b_sec
        if gr < 0 then
        gr = 0
        end
        if gg < 0 then
        gg = 0
        end
        if gb < 0 then
        gb = 0
        end
        for gline=0,rb do
      graco = Color.new((gr/rb)*gline,(gg/rb)*gline,(gb/rb)*gline) 
      bg:drawLine(x0-box/scale,(y0-boy/scale)+gline,(x0-box/scale)+ra,y0-boy/scale+gline,graco)
      end
     end
 end
end
--zoomtool
if selx == 3 and sely == 3 then
 if ma == 1 then
  crs = cursor_zoo
  screen:fontPrint(font,330, 191, "Zoomtool", black)
  screen:fontPrint(font,330, 201, "Press X to zoom in", black)
  screen:fontPrint(font,330, 211, "Press ^ to zoom out", black)
  screen:fontPrint(font,330, 221, "Zoom: "..scale, black)
    if pad ~= oldpad then
    if pad:cross() and scale < 4 then
    scale = scale + 0.5
    txfo:setPixelSizes(0,fosi*scale)
    end
    if pad:triangle() and scale > 0.5 then
    scale = scale - 0.5 
    txfo:setPixelSizes(0,fosi*scale)
    end
    end
    if scale > 4 then
    scale = 4
    txfo:setPixelSizes(0,fosi*scale)
    end
 end
end
--move canvas
if selx == 4 and sely == 3 then
 if ma == 1 then
 crs = cursor
 screen:fontPrint(font,330, 191, "Move around the picture", black)
 end
end
--graffiti
if selx == 5 and sely == 3 then
if ma == 1 then
ty = -14
 crs = cursor_gra
 if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 screen:fontPrint(font,330, 191, "Graffiti-tool", black)
 if nem ==1 then
 if pad ~= oldpad then
 if pad:right() then
 granu = granu+1
 end
 if pad:left() then
 granu = granu-1
 end
 if granu > 16 then 
 granu=16 
 end
 if granu <1 then 
 granu=1
 end
 end
 end
 if pad:cross() and granu == 1 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 6, 5, 23, 23, true)
 end
 if pad:cross() and granu == 2 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 30, 5, 22, 23, true)
 end
 if pad:cross() and granu == 3 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 53, 5, 24, 23, true)
 end
 if pad:cross() and granu == 4 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 78, 5, 23, 24, true)
 end
 if pad:cross() and granu == 5 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 6, 30, 23, 24, true)
 end
 if pad:cross() and granu == 6 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 30, 31, 24, 24, true)
 end
 if pad:cross() and granu == 7 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 54, 32, 23, 24, true)
 end
 if pad:cross() and granu == 8 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 79, 32, 22, 24, true)
 end
 if pad:cross() and granu == 9 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 6, 56, 23, 22, true)
 end
 if pad:cross() and granu == 10 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 31, 58, 22, 21, true)
 end
 if pad:cross() and granu == 11 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 55, 59, 22, 22, true)
 end
 if pad:cross() and granu == 12 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 81, 59, 22, 22, true)
 end
 if pad:cross() and granu == 13 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 7, 83, 22, 21, true)
 end
 if pad:cross() and granu == 14 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 32, 83, 22, 22, true)
 end
 if pad:cross() and granu == 15 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 56, 84, 22, 21, true)
 end
 if pad:cross() and granu == 16 then
 bg:blit(x0 - box/scale, y0 - boy/scale, grabru, 82, 84, 22, 22, true)
 end
 end
end
--ellipse
if selx==1 and sely==4 then
 if ma==1 then
 crs = cursor_eff
  tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Draw Ellipse", black)
  if linfu == 0 then
    if pad:cross() == true then
    x3 = x0
    y3 = y0
      linfu= linfu + 1
    end
    if linfu > 1 then linfu = 1 end
    end
    if linfu == 1 then
     if pad:cross() == false then
     linfu = linfu - 1
     drawEllipse(bg,x3-box/scale,y3-boy/scale,(x0-box/scale)-(x3-box/scale),(y0-boy/scale)-(y3-boy/scale),color)
     end
     drawEllipse(screen,x3*scale,y3*scale,(x0-x3)*scale,(y0-y3)*scale,color)
    end
   if linfu < 0 then linfu = 0 end
 end
end
--triangle
if selx==2 and sely==4 then
 if ma==1 then
 crs = cursor_eff
  tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Draw Triangle", black)
  drawTriangle(screen, x0*scale, y0*scale, hy, ho, color)
  if pad:cross() then
  drawTriangle(bg, x0-box/scale, y0-boy/scale, hy, ho, color)
  end
  if pad:circle() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if nem ==1 then
  if pad ~= oldpad then
   if pad:up() then trimenu = trimenu - 1 end
   if pad:down() then trimenu = trimenu + 1 end
   if trimenu < 1 then trimenu = 1 end
   if trimenu > 2 then trimenu = 2 end
  end
   screen:fontPrint(font,330, 201, "Base: "..hy, trcl1)
   screen:fontPrint(font,330, 211, "Height: "..ho, trcl2)
   if trimenu == 1 then
   trcl1 = red
   trcl2 = black
    if pad:right() then hy = hy+1 end
  if pad:left() then hy = hy-1 end
  if hy<0 then hy = 0 end
   end
   if trimenu == 2 then
   trcl1 = black
   trcl2 = red
    if pad:right() then ho = ho+1 end
  if pad:left() then ho = ho-1 end
  if ho<0 then ho = 0 end
   end
  end
 end
end
--polygon
if selx==3 and sely==4 then
 if ma==1 then
  if pad:circle() then
  nem = 1
 end
 if pad:triangle() then
  nem = 0 
 end
 crs = cursor_eff
  tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Draw Polygon", black)
 drawPolygon(screen,x0*scale,y0*scale,polylength,color) 
    if pad:cross() then
    drawPolygon(bg,x0-box/scale,y0-boy/scale,polylength,color)
    end
 if nem == 1 then
 screen:fontPrint(font,330, 201, "Size: "..polylength, red)
 if pad:right() then polylength = polylength + 1 end
 if pad:left() then polylength = polylength - 1 end
 if polylength < 1 then polylength = 1 end
 end
 end
end
--empty slot
if selx==4 and sely==4 then
 if ma==1 then
 crs = cursor_eff
  tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Empty slot", black)
end
end
--empty slot 2
if selx==5 and sely==4 then
 if ma==1 then
 crs = cursor_eff
  tx = -7
 ty = -7
 screen:fontPrint(font,330, 191, "Empty slot", black)
end
end

--sens
if cel == 1 then
  if ma == 2 then
  if pad:cross() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
if nem == 1 then
   screen:fontPrint(font,355, 171, "Press </> to set the", black)
   screen:fontPrint(font,355, 181, "sensitivity: "..sens, black)
   if pad:right() then
       sens = sens + 1
       end
       if pad:left() then
       sens = sens - 1
       end
           if sens > 1000 then
         sens = 1000
         end
       if sens < 1 then
       sens = 1
       end
   end
  end
end
--usb
if cel == 2 then
if ma == 2 then
   screen:fontPrint(font,360, 190, "USB is "..ac, black)
    if pad:cross()  then
    umode = umode + 1
    end
    if umode > 1 then
    umode = 0
    end
    if umode == 0 then
    ac = "deactivated"
    System.usbDiskModeDeactivate()
    end
    if umode == 1 then
    ac = "activated"
    System.usbDiskModeActivate()
    end
   end
end
--font limit
if cel == 3 then
  if ma == 2 then
    if pad:cross() then
      nem = 1
    end
    if pad:triangle() then
      nem = 0 
    end
    if nem == 1 then
      screen:fontPrint(font,355, 171, "Press </> to set the", black)
      screen:fontPrint(font,355, 181, "available fonts: "..fontlimit, black)
      if pad:right() then
        fontlimit = fontlimit + 1
      end
      if pad:left() then
        fontlimit = fontlimit - 1
      end
      if fontlimit < 1 then
        fontlimit = 1
      end
    end
  end
end
--brush limit
if cel == 4 then
         if ma == 2 then
         if pad:cross() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
if nem == 1 then
   screen:fontPrint(font,355, 171, "Press </> to set the", black)
   screen:fontPrint(font,355, 181, "available Brushes: "..brushlimit-3, black)
   if pad:right() then
       brushlimit = brushlimit + 1
       end
       if pad:left() then
       brushlimit = brushlimit - 1
       end
       if brushlimit < 1 then
       brushlimit = 1
       end
   end
  end
end
--cpu
if cel == 5 then
         if ma == 2 then
   screen:fontPrint(font,355, 171, "Set CPU Clock", black)
   screen:fontPrint(font,355, 181, "Clock: "..cpu.." Mhz", black) 
   if pad ~= oldpad then
   if pad:cross() then
   cpuset = cpuset + 1
   end
   end
   if cpuset > 2 then cpuset = 0 end
   if cpuset == 0 then
   cpu = "100"
   System.setLow()
   end
   if cpuset == 1 then
   cpu = "222"
   System.setReg()
   end
   if cpuset == 2 then
   cpu = "333"
   System.setHigh()
   end
       end
end

--palette
if del == 1 then
 if ma == 3 then
 if pad:cross() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if nem == 1 then
   crs = cursor_pip
 screen:fontPrint(font,330, 191, "Choose color from palette", black)
 tx = 0
  ty = -13
  comode = 3
  if x0 > 206/scale then x0 = 206/scale end
  if x0 < 31/scale then x0 = 31/scale end
  if y0 > 218/scale then y0 = 218/scale end
  if y0 < 31/scale then y0 = 31/scale end
  screen:blit(30, 30, pal_full,0,0, pal_full:width(), pal_full:height(), false)
  end
  end
 end
--rgblines
if del == 2 then
 if ma == 3 then
  if pad:cross() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if nem == 1 then
  comode = 2
  screen:blit(0, 0, rgbline,0,0, rgbline:width(), rgbline:height(), true)
  screen:blit(rx, ry, cursor_rgb,0,0, cursor_rgb:width(), cursor_rgb:height(), true)
  screen:blit(gx, gy, cursor_rgb,0,0, cursor_rgb:width(), cursor_rgb:height(), true)
  screen:blit(bx, by, cursor_rgb,0,0, cursor_rgb:width(), cursor_rgb:height(), true)
  if pad ~= oldpad then
  if pad:up() then
  linsel = linsel - 1
  end
  if pad:down() then 
  linsel = linsel + 1
  end
  end
  if linsel > 3 then linsel = 1 end
  if linsel < 1 then linsel = 1 end
  if linsel == 1 then
   if pad:right() then 
   r = r + 1
   rx = rx + 1
   end
   if pad:left() then 
   r = r - 1
   rx = rx - 1
   end
  end
  if linsel == 2 then
   if pad:right() then 
   g = g + 1
   gx = gx + 1
   end
   if pad:left() then 
   g = g - 1
   gx = gx - 1
   end
  end
  if linsel == 3 then
   if pad:right() then 
   b = b + 1
   bx = bx + 1
   end
   if pad:left() then 
   b = b - 1
   bx = bx - 1
   end
  end
  if r > 255 then r = 255 end
  if r < 0 then r = 0 end
  if g > 255 then g = 255 end
  if g < 0 then g = 0 end
  if b > 255 then b = 255 end
  if b < 0 then b = 0 end
  if rx > 360 then rx = 360 end
  if rx < 106 then rx = 106 end
  if gx > 360 then gx = 360 end
  if gx < 106 then gx = 106 end
  if bx > 360 then bx = 360 end
  if bx < 106 then bx = 106 end
  end
 end
end
--rgb numbers
if del == 3 then
 if ma == 3 then
  if pad:cross() then
  nem = 1
  end
  if pad:triangle() then
  nem = 0 
  end
  if nem == 1 then
  comode = 2
  screen:blit(0, 0, rgbcol,0,0, rgbcol:width(), rgbcol:height(), true)
  screen:fontPrint(font,132, 124, r, delbg1)
  screen:fontPrint(font,132, 142, g, delbg2)
  screen:fontPrint(font,132, 160, b, delbg3)
  if pad ~= oldpad then
  if pad:up() then
  rgbnum = rgbnum - 1 
  end
  if pad:down() then
  rgbnum = rgbnum + 1
  end
  end
  if rgbnum > 3 then
  rgbnum = 1 
  end
  if rgbnum < 1 then
  rgbnum = 3 
  end
  if rgbnum == 1 then
  delbg1 = red
  delbg2 = black
  delbg3 = black
   if pad:right() then
   r = r + 1
   end
   if pad:left() then
   r = r - 1
   end
  end
  if rgbnum == 2 then
  delbg1 = black
  delbg2 = red
  delbg3 = black
   if pad:right() then
   g = g + 1
   end
   if pad:left() then
   g = g - 1
   end
  end
  if rgbnum == 3 then
  delbg1 = black
  delbg2 = black
  delbg3 = red
   if pad:right() then
   b = b + 1
   end
   if pad:left() then
   b = b - 1
   end
  end
  if r > 255 then r = 255 end
  if r < 0 then r = 0 end
  if g > 255 then g = 255 end
  if g < 0 then g = 0 end
  if b > 255 then b = 255 end
  if b < 0 then b = 0 end
  end
 end
end
--save
if eel == 1 then
if ma == 4 then
   screen:fontPrint(font,330, 180, "JPG", savc1)
   screen:fontPrint(font,330, 195, "PNG", savc2)
         screen:fontPrint(font,330, 210, "Brush", savc3)
     screen:fontPrint(font,330, 225, "Picturename: "..pname, savc4)
     screen:fontPrint(font,330, 240, "Set Savepath", savc5)
     screen:fontPrint(font,330, 255, savepath, black)
    if pad ~= oldpad then
    if pad:down() then
    forc = forc + 1
    end
    if pad:up() then
    forc = forc - 1
    end
    if forc > 4 then
    forc = 0
    end
    if forc < 0 then
    forc = 4
    end
    if forc == 0 then
    savc1 = red
    savc2 = black
          savc3 = black
      savc4 = black
      savc5 = black
    extension = ".jpg"
    end
    if forc == 1 then
    savc1 = black
    savc2 = red
          savc3 = black
      savc4 = black
      savc5 = black
    extension = ".png"
    end
          if forc == 2 then
    savc1 = black
    savc2 = black
          savc3 = red
      savc4 = black
      savc5 = black
          end
      if forc == 3 then
    savc1 = black
    savc2 = black
          savc3 = black
      savc4 = red
      savc5 = black
          end
      if forc == 4 then
    savc1 = black
    savc2 = black
          savc3 = black
      savc4 = black
      savc5 = red
          end

    if pad:cross() and forc == 0 then
    saveImage(pname, ".jpg", savepath)
    end
    if pad:cross() and forc == 1 then
    saveImage(pname, ".png", savepath) 
    end
          if pad:cross() and forc == 2 then
          savebrush()
          end
      if pad:cross() and forc == 3 then
      pnamebackup = pname
      keyboard()
      pname = text
      if pname == "" then
      pname = pnamebackup
      end
      end
      if pad:cross() and forc == 4 then
      keyboard()
          savepath = text
      if string.sub(savepath,1,5) ~= "ms0:/" then
      savepath = "ms0:/"..savepath
      end
      if savepath == "" then
      savepath = "ms0:/PSP/PHOTO/"
          end
      if string.sub(savepath, -1) ~= "/" then
      savepath = savepath.."/"
      end
      end
      end
      end
   end

--load
if eel == 2 then
if pad:cross() then
nem = 1
end  
if pad:triangle() then
nem = 0 
end
end
--new
if eel == 3 then
if ma == 4 then
if pad:cross() then return end
end
end
--exit
if eel == 4 then
if ma == 4 then
if pad:cross() then
System.Quit()
end
end
end


if bo == 1 then
  if pad:r() and pad:right() then
          comode = 0
      x2 = x2 + 1
      if x2 > 246 then
        x2 = 8
      end
  end
  if pad:r() and pad:left() then
          comode = 0
      x2 = x2 - 1
      if x2 < 8 then
        x2 = 246
      end
  end
    if ma > 0 then
  screen:fillRect(298, 218, 15, 14, sec_color)
  screen:drawLine(297, 217 , 313, 217, black)
    screen:drawLine(297, 231 , 313, 231, black)
    screen:drawLine(297, 218 , 297, 231, black)
    screen:drawLine(313, 218 , 313, 231, black)
  screen:drawLine(x2, y2 - 9 , x2, y2 + 8, black)
    screen:drawLine(290, 210 , 306, 210, black)
    screen:drawLine(290, 225 , 306, 225, black)
    screen:drawLine(290, 210 , 290, 225, black)
    screen:drawLine(306, 210 , 306, 225, black)
    screen:fillRect(291, 211, 15, 14, color)
    end
end
if bo == 2 then
if pad:r() and pad:right() then
resi = 1
restri = "On"
end
if pad:r() and pad:left() then
resi = 0
restri = "Off"
end
end
        

  x1 = x0
  y1 = y0
  

if s > nf then s = 1 end
if s < 1 then s = nf end

if s < 27 then k = 0 end

for i = 1,10 do
if s > i*27-1 and s < i*27 + 27 then k = -270*i end
end

if nem == 1 and eel == 2 and ma == 4 then
screen:blit(0, 0, filbrbg, 0, 0, filbrbg:width(), filbrbg:height(), false)
end

for i=1,nf do
if nem == 1 and eel == 2 and ma == 4 then
screen:print(135,k+i*10,fl[i].name,black)
end
end

if nem == 1 and eel == 2 and ma == 4 then
screen:print(135,k+10*s,fl[s].name,red)
end

if pad:select() then loopvar = false end

if pad:cross() and fl[s].directory == false and nem == 1 and eel == 2 and ma == 4 then
if string.sub(fl[s].name, -4) == ".jpg" or string.sub(fl[s].name, -4) == ".png" then
bg = Image.load(fl[s].name) 
end
end

if pad:cross() and fl[s].directory == true and nem == 1 and eel == 2 and ma == 4 then
System.currentDirectory(fl[s].name)
s = 1
fl=System.listDirectory()
nf=table.getn(fl)
end

if pad:l() and fl[s].directory == false and nem == 1 and eel == 2 and ma == 4 then
if string.sub(fl[s].name, -4) == ".jpg" or string.sub(fl[s].name, -4) == ".png" then
scleImage(129,75, Image.load(fl[s].name))
screen:blit(329,41, rsizedImage)
end
end


  screen:blit(x1*scale+tx , y1*scale + ty, crs, 0, 0, crs:width(), crs:height(), true)

  
  screen.waitVblankStart()
  screen.flip() 
end 
end

while true do
screen:blit(0, 0, bcs, 0, 0, bcs:width(), bcs:height(), false)
screen:blit(0, 0, picsz, 0, 0, picsz:width(), picsz:height(), true)
pad = Controls.read()

if s < 27 then k = 0 end

for i = 1,10 do
if s > i*27-1 and s < i*27 + 27 then k = -270*i end
end

if pad:select() and nem == 1 and selecb == 2 then loopvar = false end

if pad:down() and oldpad:down() ~= pad:down() and nem == 1 and selecb == 2 then
s = s + 1 
if s > nf then
s = 1 
k = 0
end
end
if pad:up() and oldpad:up() ~= pad:up() and nem == 1 and selecb == 2 then
s = s - 1 
if s < 1 then 
s = nf 
k = math.floor(nf/27,1)
end
end


if pad:cross() and fl[s].directory == false and nem == 1 and selecb == 2 then
if string.sub(fl[s].name, -4) == ".jpg" or string.sub(fl[s].name, -4) == ".png" then
bg = Image.load(fl[s].name)
for i=1,table.getn(fl) do
fl[s].name = nil
end
collectgarbage()   
main() 
end
end

if pad:cross() and oldpad:cross() ~= pad:cross() and fl[s].directory == true and nem == 1 and selecb == 2 then
System.currentDirectory(fl[s].name)
s = 1
fl=System.listDirectory()
nf=table.getn(fl)
end

if nem == 1 and selecb == 1 then
screen:fontPrint(font,210, 100, "Width: "..bgx.."px", sec1)
screen:fontPrint(font,210, 110, "Height: "..bgy.."px", sec2)
screen:fontPrint(font,210, 120, "Background: "..bgset, sec3)
if string.len(pname) > 5 then
screen:fontPrint(font,210, 130, "Picturename: "..string.sub(pname,1,2).."...", sec4)
else
screen:fontPrint(font,210, 130, "Picturename: "..pname, sec4)
end
screen:fontPrint(font,210, 140, "Go", sec5)
end
screen:fontPrint(font,140, 100, "New", seb1)
screen:fontPrint(font,140, 110, "Open", seb2)
if nem == 1 and selecb == 2 then
screen:blit(0, 0, filbrbg, 0, 0, filbrbg:width(), filbrbg:height(), false)
end

for i=1,nf do
if nem == 1 and selecb == 2 then
screen:print(135,k+i*10,fl[i].name,black)
end
end

if nem == 1 and selecb == 2 then
screen:print(135,k+10*s,fl[s].name,red)
end

if pad:l() and fl[s].directory == false and nem == 1 and selecb == 2 then
if string.sub(fl[s].name, -4) == ".jpg" or string.sub(fl[s].name, -4) == ".png" then
scleImage(129,75, Image.load(fl[s].name))
screen:blit(329,41, rsizedImage)
end
end


if pad ~= oldpad then
   if pad:up() and nem == 1 and selecb == 1 then
   selecd = selecd - 1
   end
   if pad:down() and nem == 1 and selecb == 1 then
   selecd = selecd + 1
   end
   if pad:up() and nem == 0 then
   selecb = selecb - 1
   end
   if pad:down() and nem == 0 then
   selecb = selecb + 1
   end
   oldpad = pad
end

if selecd > 5 then
selecd = 1
end
if selecd < 1 then
selecd = 5
end
if selecb > 2 then
selecb = 1
end
if selecb < 1 then
selecb = 2
end

if selecb == 1 then
seb1 = red
seb2 = black
if pad:cross() and nem == 0 then
nem = 1
end
if pad:triangle() and nem == 1 then
nem = 0
end
end
if selecb == 2 then
seb1 = black
seb2 = red
if pad:cross() and nem == 0 then
nem = 1
end
if pad:triangle() and nem == 1 then
nem = 0
end
end

if selecd == 1 then
sec1 = red
sec2 = black
sec3 = black
sec4 = black
sec5 = black
if pad:left() then
bgx = bgx - 1
end
if pad:right() then
bgx = bgx + 1
end
if pad:l() and pad:left() then
bgx = bgx - 10
end
if pad:l() and pad:right() then
bgx = bgx + 10
end
if bgx < 1 then
bgx = 1
end
if bgx > 512 then
bgx = 512
end
end
if selecd == 2 then
sec1 = black
sec2 = red
sec3 = black
sec4 = black
sec5 = black
if pad:left() then
bgy = bgy - 1
end
if pad:right() then
bgy = bgy + 1
end
if pad:l() and pad:left() then
  bgy = bgy - 10
end
if pad:l() and pad:right() then
  bgy = bgy + 10
end
if bgy < 1 then
bgy = 1
end
if bgy > 512 then
bgy = 512 
end
end
if selecd == 3 then
sec1 = black
sec2 = black
sec3 = red
sec4 = black
sec5 = black
if pad:cross() then bgstyle = bgstyle + 1 end
if bgstyle > 2 then bgstyle = 1 end
if bgstyle == 1 then bgset = "Color" end
if bgstyle == 2 then 
bgset = "Transparent: "..tra 
transcolor = Color.new(255,255,255,tra)
if pad:right() then tra = tra +1 end
if pad:left() then tra = tra-1 end
if tra < 0 then tra = 0 end
end
end
if selecd == 4 then
sec1 = black
sec2 = black
sec3 = black
sec4 = red
sec5 = black
if pad:cross() then
keyboard()
pname = text
if pname == "" then pname = "unnamed" end
end
end
if selecd == 5 then
sec1 = black
sec2 = black
sec3 = black
sec4 = black
sec5 = red
if pad:cross() then
if bgstyle == 1 then
bg = Image.createEmpty(bgx, bgy)
bg:clear(white)
main()
end
if bgstyle == 2 then
bg = Image.createEmpty(bgx, bgy)
bg:clear(transcolor)
main()
end
end
end
   
screen.waitVblankStart()
screen.flip()
end