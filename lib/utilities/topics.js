"use strict";

var Posts = require.main.require('./src/posts')

const addPreview = async (topics) => {
	for (const [index, topic] of topics.entries()) {
		const mainPost = await Posts.getPostData(topic.mainPid)
		topics[index].preview = await Posts.parsePost(mainPost)
	}

	return topics
}

module.exports = {
	addPreview,
}