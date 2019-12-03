# Pseudo Random Number Generator

A **pseudo** random number generator written in Bash to easily generate datasets of your preferred size.

## CAREFUL: Pseudo

You should not forget that this is a **pseudo** random number generator that it shouldn't be used for security applications but just for applications where random numbers are needed to do some sort of analysis, e.g. sorting algorithms, Monte Carlo Simulations, etc.

## File Naming Scheme

The project follows a basic file naming scheme taken from the management style of some *nix programs so that a new comer would understand the line of operation by merely looking at the files.

Some files have a prefix of digits before the name. For instance,

	21-writeFileOrderedAscending.sh

The first number, 2, indicates the level, and the second one, 1, indicates the calling order in that level.

The smaller the digit, the earlier the script is called.

Files that don't have this prefix contain functions that can be called at any given moment.

## Usage

The script comes pre-configured with the following options:

- the same file will have three flavours which is called a `file set`:
	- unordered,
	- ascending,
	- descending,
- there are catalogues of 10K, 20K, ..., 100K so that a file in a catalogue will contain that much of random numbers:
	- **e.g.** a file in a 20K catalogue will have 20,000 random numbers in it,
- each file set in a catalogue will be generated 30 times.

All in all, there will be 900 files(~290 MB):

- 3 files in a set x 30 different sets x 10 catalogues.

To run the script, based on the file naming scheme told above, the following script should be called:

`./00-construct-data-set.sh`

If you just want to change the formation of the data set based on the rules defined above, all you have to do is edit the `00-construct-data-set.sh` file which is also well-documented in itself.

However, you're more than welcome to fork the project and come up with your own solutions.