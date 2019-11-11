import axios from 'axios'

const baseURL = '/api/movies'

const getAll = () => {
  return axios.get(baseURL).then(response => response.data)
}

const getMovie = id => {
  return axios.get(baseURL + '/' + id).then(response => response.data)
}

export default {
  getAll: getAll,
  getMovie: getMovie
}
