module PlanetTools

    using Dates

    export Planet
    export earth
    export mars
    export mercury
    export venus
    export jupiter
    export saturn
    export uranus
    export neptune
    export distance_from_earth
    export current_days_since_unix_epoch

    struct Planet
        name::String
        orbital_radius_au::Float64
        orbital_period_days::Float64
        start_angle::Float64
    end

    const mercury = Planet("Mercury", 0.387, 88.0, 0.8804852714)
    const venus   = Planet("Venus",   0.723, 225.0, 4.6536496332)
    const earth   = Planet("Earth",   1.0,   365.25, 1.7567234022)
    const mars    = Planet("Mars",    1.524, 687.0, 0.2331020289)
    const jupiter = Planet("Jupiter", 5.203, 4333.0, 3.5599934920)
    const saturn  = Planet("Saturn",  9.537, 10759.0, 0.7540897077)
    const uranus  = Planet("Uranus",  19.191, 30687.0, 3.2235096149)
    const neptune = Planet("Neptune", 30.07, 60190.0, 4.1773082829)

    const AU_IN_KM = 149_597_870.7

    function distance_from_earth(planet::Planet, days_elapsed::Float64)
        println("Calculating distance from Earth to ", planet.name)
        earth_angle = 2 * pi * (days_elapsed / earth.orbital_period_days) + earth.start_angle
        planet_angle = 2 * pi * (days_elapsed / planet.orbital_period_days) + planet.start_angle

        earth_x = earth.orbital_radius_au * cos(earth_angle)
        earth_y = earth.orbital_radius_au * sin(earth_angle)

        planet_x = planet.orbital_radius_au * cos(planet_angle)
        planet_y = planet.orbital_radius_au * sin(planet_angle)

        distance_au = sqrt((planet_x - earth_x)^2 + (planet_y - earth_y)^2)
        distance_km = distance_au * AU_IN_KM
        
        return distance_km 


    end

    function current_days_since_unix_epoch()
        now_time = now(UTC)
        unix_epoch = DateTime(1970, 1,1)
        milliseconds_elapsed = Dates.value(now_time - unix_epoch)
        days_elapsed = milliseconds_elapsed / 1000 / 60 / 60 / 24

        return days_elapsed
    end



end