class TicketsController < ApplicationController
  def search
    return unless params[:q].present?

    query_words = params[:q].downcase.split(" ")
    scored_topics = Topic.all.map { |topic| [topic, match_score(topic, query_words)] }
    best_topic, best_score = scored_topics.max_by { |_, score| score }

    @matched_topic = best_score > 0 ? best_topic : nil
  end

  private

  def match_score(topic, query_words)
    topic_words = topic.keywords.downcase.split(" ")
    query_words.count { |qw| topic_words.any? { |tw| tw.include?(qw) || qw.include?(tw) } }
  end
end