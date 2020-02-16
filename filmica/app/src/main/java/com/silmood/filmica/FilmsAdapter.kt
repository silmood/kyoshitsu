package com.silmood.filmica

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.item_film.view.*

class FilmsAdapter() : RecyclerView.Adapter<FilmsAdapter.FilmHolder>() {

    private val films: MutableList<Film> = mutableListOf()

    override fun getItemCount(): Int {
        return films.size
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FilmHolder {
        val inflater = LayoutInflater.from(parent.context)
        val view = inflater.inflate(R.layout.item_film, parent, false)
        return FilmHolder(view)
    }

    override fun onBindViewHolder(holder: FilmHolder, position: Int) {
        holder.film = films[position]
    }

    fun setFilms(films: List<Film>) {
        this.films.clear()
        this.films.addAll(films)
        notifyDataSetChanged()
    }

    inner class FilmHolder(view: View) : RecyclerView.ViewHolder(view) {
        var film: Film? = null
            set(value) {
                field = value
                itemView.labelTitle.text = film?.title
            }
    }
}