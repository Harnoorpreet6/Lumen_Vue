console.log('main.js loaded'); // Verify this appears in the console

new Vue({
  el: '#app',
  data: {
    directors: [],
    selected: null,
    loading: false,
    error: null
  },
  created() {
    this.fetchMovies();
  },
  methods: {
    fetchMovies() {
      this.loading = true;
      fetch('http://localhost/l-v-harnoor/Lumen/public/api/movies')
        .then(res => res.json())
        .then(data => {
          // Group movies by director
          const grouped = {};
          data.forEach(movie => {
            const dirId = movie.director.id;
            if (!grouped[dirId]) {
              grouped[dirId] = {
                id: dirId,
                name: movie.director.name,
                movies: [],
                showMovies: false
              };
            }
            grouped[dirId].movies.push(movie);
          });
          this.directors = Object.values(grouped);
          this.loading = false;
        })
        .catch(() => {
          this.error = "Failed to fetch movies.";
          this.loading = false;
        });
    },
    loadMovie(id) {
      this.loading = true;
      fetch(`http://localhost/l-v-harnoor/Lumen/public/api/movies/${id}`)
        .then(res => res.json())
        .then(data => {
          this.selected = data;
          this.loading = false;
        })
        .catch(() => {
          this.error = "Failed to fetch movie details.";
          this.loading = false;
        });
    },
    toggleDirector(id) {
      const director = this.directors.find(d => d.id === id);
      if (director) director.showMovies = !director.showMovies;
    }
  }
});
