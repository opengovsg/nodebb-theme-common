"use strict";

var utilitiesTopics = require('../utilities/topics')

const addPreview = async (data) => {
	data.topics = await utilitiesTopics.addPreview(data.topics)

	return data
}

module.exports = {
	addPreview,
}