package servlet;


import manager.GenreManager;
import manager.MovieManager;
import model.Genre;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

@WebServlet(urlPatterns = "/yearHome")
public class YearServlet extends HttpServlet {
    private MovieManager movieManager = new MovieManager();
    private GenreManager genreManager = new GenreManager();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String yearStr = req.getParameter("year");
        List<Movie> movies = movieManager.moviesByYear(Integer.parseInt(yearStr));
        List<Genre> genres = genreManager.allGenre();
        List<Movie> allMovies = movieManager.allMovie();


        req.setAttribute("movies",movies);
        req.setAttribute("allMovies",allMovies);
        req.setAttribute("allGenres",genres);

        req.getRequestDispatcher("/WEB-INF/yearHome.jsp").forward(req,resp);


    }
}
