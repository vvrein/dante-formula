# dante

Formula to install and configure dante server.

## Installation
- `mkdir /srv/formulas`
- `cd /srv/formulas`
- `git clone <dante-formula url>`
- `cd /srv/salt`
- `ln -s ../formulas/dante-formula/dante .`

## Run
- `configure pillar`
- `salt <minion> state.apply dante`

## Example
[pillar.example](./pillar.example)
