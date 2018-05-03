package com.gag.model.dao;

import java.util.Collection;

import com.gag.model.Post;
import com.gag.model.Section;
import com.gag.model.Tag;
import com.gag.model.User;

public interface IPostDAO {

	Post getPostsById(int id) throws Exception;

	Collection<Post> getPostsByTag(Tag... tags) throws Exception;

	Collection<Post> getPostsBySection(int sectionId) throws Exception;

	Collection<Post> getPostsByOwner(User u) throws Exception;

	Collection<Post> getFreshPosts() throws Exception;

	Collection<Post> getHotPost() throws Exception;

	Collection<Post> getTrendingPost() throws Exception;

	void savePost(Post p) throws Exception;

	void deletePost(Post p) throws Exception;

	void votePost(User u, Post p, int vote) throws Exception;
}
