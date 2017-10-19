%% Probleme bei polyfit
% Es werden Messdaten des Materialfeuchtemesssystems NIROMM (EMT)
% verwendet. Quarzsand unterschiedlicher Materialfeuchten psi wird mit
% Infrarotimpulsen unterschiedlicher Strahlungswellenl�ngen bestrahlt und
% die reflektierte Strahlung gemessen. Bei h�heren Feuchten wird mehr
% Strahlung durch die Wassermolek�le absorbiert und demnach weniger
% reflektiert. Der Zusammenhang zwischen den Messspannungen und der
% Materialfeuchte soll durch Polynome geeigneten Grades beschrieben werden.
% Problem ist die geeignete Wahl des Polynomgrades. 
% 
% * Materialfeuchten psi von 0 bis 7 %MF (psi, [0 0.3 0.4 0.5
% 0.6 0.7 0.8 0.9 1.0 1.1 1.2 2.0 3.0 4.0 5.0 7.0], 16 St�tzstellen)
% * F�r diese �bung wird nur Messkanal 1 (u1) betrachtet.
% * Zur Polynomdarstellung ist ein deutlich h�her aufgel�ster Feuchtevektor
% erforderlich (psi_Werte_hochaufloesend), da nur so eventuelle
% Schwingungen zwischen den nur 16 St�tzstellen sichtbar und damit erkennbar
% werden. 
% 
% Messtechnische Signalanalyse mit MATLAB und Python, Vorlesung/�bung
% 
% (c) Elektrische Messtechnik, Universit�t Paderborn - http://emt.upb.de

%% Version
%   Dateiname: MSMP_polyfit_aufgabe.m


%% Initialisierung
clc; clear all; close all

%% Variablen laden und definieren
load('MSMP_polyfit_messdaten')

p_grad = 8;
  

%% Grafische Ausgabe
figure(1)
hold on
plot(psi, u1, '.', 'MarkerSize', 12)
grid on
xlim([-0.1 7.1])
ylim([1.5 3])
xlabel('Materialfeuchtigkeit {\it\psi}')
ylabel('Spannung {\itu}_1')
legend('Messwerte')