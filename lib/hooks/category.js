"use strict";

var utilitiesTopics = require('../utilities/topics')

const addPreview = async (data) => {
	data.category.topics = await utilitiesTopics.addPreview(data.category.topics)

	return data
}

module.exports = {
	addPreview,
}