:- module(about, [title/1,
                  admin/1,
                  domain/1,
                  email/1,
                  port/1,
                  motto/1]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Put your blog's information here %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

title('Feral Machines').
admin('Olivia Lucca Fraser').
domain('feralmachin.es').
email('feral.machines@bastardi.net').
motto('mottos.txt').
repo('https://github.com/oblivia-simplex/feral_machines').
port(9697). 
%bind(localhost).
bind('0.0.0.0').
timezone(4).
