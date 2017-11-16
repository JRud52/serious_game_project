# Game Outline

## What is Being Taught

The purpose of this game is to teach network security to people with basic network knowledge. The game will teach the player the effectiveness of different defences against a variety of different network attacks, and the affect that these various defences will have on employees.

### Subjects

- Malicous entities
    - Viruses
    - Malware
    - Spyware
    - Worms
- Defences
    - Firewall
    - Antivirus (Different Tiers with different features)
    - Malware scans
    - Ad blockers
- Employee moral
    - Keeping employees happy
    - Minimizing impact on employees
    - Disaster recovery procedures
    - Fallback plans


## Design

### Description

You play as a CISO(Chief Information Security Officer) for a company. Your job is to have a balance between having a safe network, and happy employees. Anything that is an inconvienience to an employee will reduce their happiness, but if the network is not secure enough, then breaches will occur and your job could be in jeopardy. In order to be successful, you must keep a balance!

### Overall Goal

The goal of each level is to minimize the damage from viruses and malware coming into the network from the internet. If a node is compromised, it can be quarantined, and a backup restored from the server. This takes time, so the server must be defended from the attacks until the backup can complete. If the server is compromised, the level is lost.

### Level Structure

The level structure will consist of simplified versions of network topologies. There will be routers, nodes (users), and a backup server. The router acts as a central hub that serves the data packets across the network. The packets can be good, or bad. The bad packets contain malicious entities that could potentially result in a breach.

### Gameplay

When each level starts, the player will be given a very basic network topology. At minimum, the topology will consist of a router, node, and server. The server will have the most defences, followed by the nodes, and finally the router. The player will start each level with a pre-determined amount of money. They will need to spend it wisely in order to achieve a balance between being secure, and keeping the nodes happy. The happiness of the nodes will decrease if a defence you introduce comes with an inconvenience for the employee. With each breach, the company revenue takes a hit. If the revenue gets below a certain point, the company goes bankrupt and you lose your job.

### Win and Loss conditions

Win - Company revenue reaches a certain point.

Loss - Network is compromised too many times and company goes bankrupt.
