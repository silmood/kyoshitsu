package com.silmood.filmica

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.android.synthetic.main.activity_films.*

class FilmsActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_films)

        list.layoutManager = LinearLayoutManager(this)
        val adapter = FilmsAdapter()
        list.adapter = adapter
        adapter.setFilms(FilmRepository.films)

        reversed.setOnClickListener {
            adapter.setFilms(FilmRepository.films)
        }
    }


    private fun goToFilmDetail() {
        val intent = Intent(this, DetailActivity::class.java)
        startActivity(intent)
    }
}