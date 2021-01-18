class CodeSnippet
  include Comparable
  SNIPPETS_ROOT = 'docs/snippets'.freeze
  attr_reader :file, :other

  def initialize(file:, other: nil)
    @file = file
    @other = other
  end

  def <=>(other)
    return 1 if other.blank?

    file <=> other.file
  end

  def id
    file.dirname.basename.to_s
  end

  def name
    file.basename.to_s
  end

  def content
    file.read
  end

  def snippet
    CodeRay.highlight_file(file, line_numbers: :table).html_safe
  end

  def diff?
    diff.present?
  end

  def diff
    return unless other
    return if left == right

    CodeRay.scan(Diffy::Diff.new(left, right), :diff).div(line_numbers: :table).html_safe
  end

  def left
    content
  end

  def right
    other.content
  end

  def history
    current_id = file.dirname.basename.to_s.to_i
    previous_ids = (1..(current_id - 1))

    previous_ids.map do |id|
      next unless (f = Rails.root.join(SNIPPETS_ROOT, id.to_s, name)).exist?

      self.class.new(file: f, other: self)
    end.compact
  end
end
