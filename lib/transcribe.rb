require('bio')

class String
  define_method(:transcribe) do |option|
    seq = Bio::Sequence::NA.new(self)
    if option == "1"
      seq.translate
    else
      seq.translate.names
    end
  end
end
