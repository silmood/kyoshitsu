package com.silmood.filmica

import kotlin.random.Random

object FilmRepository {
    val random: Random = Random(5)
    val films : MutableList<Film> = mutableListOf()
        get() {
            field.clear()
            field.addAll(generateFilms())
            return field
        }

    private fun generateFilms() =
        (1..random.nextInt(1, 50)).map {
            Film("Film ${it}")
        }
}