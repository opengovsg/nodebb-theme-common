"use strict";

var Posts = require.main.require('./src/posts')

const addPreviewToCategory = async (data) => {
	for (const [index, topic] of data.category.topics.entries()) {
		const mainPost = await Posts.getPostData(topic.mainPid)
		data.category.topics[index].preview = await Posts.parsePost(mainPost)
	}

	return data
}

module.exports = {
	addPreviewToCategory,
}