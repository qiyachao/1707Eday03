package com.qiyachao.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qiyachao.movie.dao.MovieMapper;
import com.qiyachao.movie.domain.Movie;
import com.qiyachao.movie.service.MovieService;
import com.qiyachao.movie.vo.MovieVo;
@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieMapper movieMapper;

	@Override
	public PageInfo<Movie> list(MovieVo mocieVo, Integer page, Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Movie> list = movieMapper.list(mocieVo);
		return new PageInfo<Movie>(list);
	}

	@Override
	public boolean update(Movie movie) {
		
		return movieMapper.update(movie);
	}
}
