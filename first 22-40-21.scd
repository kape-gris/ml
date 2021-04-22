n=NetAddr("127.0.0.1", 57120); //57120 einai antvnimia egv ---o ypologisths moy kai to 255 stelnei s oloys ....??///// einai default port//ayto einai to ip version 4 poy exei 4 arithmous k 3 teleies kai exei kai to version 6 g t internet of things poy exoyme 5, 6 mhxanes ektis apo server kai laptop klp. th t exoyme s olew tis suskeyes kai to sxediazei h intekl edv k 20 xronia ....poylane tsips///
r= OSCFunc({arg msg, time; [time,msg].postln}, 'good/news', n);

n.sendMsg("/good/news", "you","not you");
n.sendMsg("/good/news",1,1.3,77);

n.sendBundle(0.2, ["/good/news",1,1.3,77]);

r.free;
n.disconnect;
///different netAddr objects with same port and id are indipendent

r=OSCFunc({"message arrived".postln}, '/x');

n=NetAddr("127.0.0.1", 57120);

n.sendMsg("/x")

u=NetAddr("127.0.0.1", 57120);
u.sendMsg("/x");

n.disconnect;

u.sendMsg("/x");

r.free;
u.disconnect;