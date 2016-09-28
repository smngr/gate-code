import numpy as np
import matplotlib.pyplot as plt

mu = float(input('Enter mean energy (MeV): '))
sig = float(input('Enter sigma (MeV): '))

def gaussian(E, mu, sig):
    return np.exp(-np.power(E-mu, 2.) / (2 * np.power(sig, 2.)))

x_low = mu - (5*sig)
x_high = mu + (5*sig)

energy_range = np.linspace(x_low, x_high,1000);
energy_spectrum = gaussian(energy_range,mu,sig);

results = np.empty([1000,2])
results[0:1000,0] = energy_range
results[0:1000,1] = energy_spectrum

np.savetxt("energy_spectrum_80MeV_2p355Sigma.txt",results)

energy_dist = plt.figure()
plt.plot(energy_range,energy_spectrum)
plt.xlim(mu-10,mu+10)
plt.ylim(0, 1)
plt.show()
