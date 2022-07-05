import teams from './teams.json'

type Team = {
    city: string
    name: string
    abr: string
    conf: string
    div: string
}

export const ALL_TEAMS = teams as Team[]

export const TEAMS_BY_KEY = ALL_TEAMS.reduce((prev: Record<string, Team>, curr) => {
    prev[curr.abr] = curr
    return prev    
}, {})