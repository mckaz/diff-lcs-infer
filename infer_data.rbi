# typed: strong
class [s]Diff
  class LCS
    # RDL Type: (([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) -> ([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])
    sig { params(callbacks: T.untyped).returns(T.untyped) }
    def callbacks_for(callbacks); end

    # RDL Type: (XXX, ([ []: (Number) -> XXX ] and [ []: (Number, Number) -> XXX ] and [ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {XXX} -> XXX
    sig do
      params(
        method: T.untyped,
        seq1: T.untyped,
        seq2: T.untyped,
        callbacks: T.untyped
      ).returns(T.untyped)
    end
    def diff_traversal(method, seq1, seq2, callbacks); end

    # RDL Type: (([ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ])) {XXX} -> Array<XXX>
    sig { params(seq1: T.untyped, seq2: T.untyped).returns(T::Array[T.untyped]) }
    def lcs(seq1, seq2); end

    # RDL Type: (([ []: (Number) -> XXX ] and [ []: (Number, Number) -> XXX ] and [ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {XXX} -> XXX
    sig { params(seq1: T.untyped, seq2: T.untyped, callbacks: T.untyped).returns(T.untyped) }
    def diff(seq1, seq2, callbacks = nil); end

    # RDL Type: (([ []: (Number) -> XXX ] and [ []: (Number, Number) -> XXX ] and [ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {XXX} -> XXX
    sig { params(seq1: T.untyped, seq2: T.untyped, callbacks: T.untyped).returns(T.untyped) }
    def sdiff(seq1, seq2, callbacks = nil); end

    # RDL Type: (([ []: (Number, Number) -> XXX ] and [ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (Number) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {(Diff::LCS::ContextChange) -> XXX} -> nil
    sig { params(seq1: T.untyped, seq2: T.untyped, callbacks: T.untyped).void }
    def traverse_sequences(seq1, seq2, callbacks = nil); end

    # RDL Type: (([ []: (Number, Number) -> XXX ] and [ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ respond_to?: (:change) -> XXX ])) {(Diff::LCS::ContextChange) -> XXX} -> nil
    sig { params(seq1: T.untyped, seq2: T.untyped, callbacks: T.untyped).void }
    def traverse_balanced(seq1, seq2, callbacks = nil); end

    # RDL Type: (XXX, [ each: () {(XXX) -> XXX} -> XXX ], ?XXX) -> (XXX or XXX)
    sig { params(src: T.untyped, patchset: T.untyped, direction: T.untyped).returns(T.untyped) }
    def patch(src, patchset, direction = nil); end

    # RDL Type: (XXX, [ each: () {(XXX) -> XXX} -> XXX ]) -> (XXX or XXX)
    sig { params(src: T.untyped, patchset: T.untyped).returns(T.untyped) }
    def unpatch!(src, patchset); end

    # RDL Type: (XXX, [ each: () {(XXX) -> XXX} -> XXX ]) -> (XXX or XXX)
    sig { params(src: T.untyped, patchset: T.untyped).returns(T.untyped) }
    def patch!(src, patchset); end

    class DefaultCallbacks
      # RDL Type: (XXX) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def match(event); end

      # RDL Type: (XXX) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_a(event); end

      # RDL Type: (XXX) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_b(event); end

      # RDL Type: (Diff::LCS::ContextChange) -> Diff::LCS::ContextChange
      sig { params(event: Diff::LCS::ContextChange).returns(Diff::LCS::ContextChange) }
      def change(event); end
    end

    class Change
      # RDL Type: (XXX) -> (false or true)
      sig { params(action: T.untyped).returns(T.any(FalseClass, TrueClass)) }
      def valid_action?(action); end

      # RDL Type: (([ []: (Range<Number>) -> XXX ] and [ flatten: (Number) -> XXX ] and [ size: () -> XXX ])) -> Diff::LCS::Change
      sig { params(arr: T.untyped).returns(Diff::LCS::Change) }
      def from_a(arr); end
    end

    class ContextChange
      # RDL Type: (([ []: (Range<Number>) -> XXX ] and [ flatten: (Number) -> XXX ] and [ size: () -> XXX ])) -> Diff::LCS::Change
      sig { params(arr: T.untyped).returns(Diff::LCS::Change) }
      def from_a(arr); end

      # RDL Type: ([ to_a: () -> XXX ]) -> Diff::LCS::Change
      sig { params(event: T.untyped).returns(Diff::LCS::Change) }
      def simplify(event); end
    end

    class Internals
      # RDL Type: (([ []: (XXX) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ])) -> Array<Number>
      sig { params(a: T.untyped, b: T.untyped).returns(T::Array[Integer]) }
      def lcs(a, b); end

      # RDL Type: (([ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ]), [ each: () {(XXX) -> XXX} -> XXX ], ?Number) -> (:patch or :unpatch)
      sig { params(src: T.untyped, patchset: T.untyped, limit: Integer).returns(Symbol) }
      def intuit_diff_direction(src, patchset, limit = nil); end

      # RDL Type: (([ <<: (XXX) -> XXX ] and [ []: (Number) -> XXX ] and [ []=: (Number, XXX) -> XXX ] and [ empty?: () -> XXX ] and [ size: () -> XXX ]), ([ ==: (XXX) -> XXX ] and [ >: (XXX) -> XXX ]), ?Number) -> Number
      sig { params(enum: T.untyped, value: T.untyped, last_index: Integer).returns(Integer) }
      def replace_next_larger(enum, value, last_index = nil); end

      # RDL Type: ([ dup: () -> XXX ], ([ []: (Number) -> XXX ] and [ size: () -> XXX ])) -> XXX
      sig { params(a: T.untyped, vector: T.untyped).returns(T.untyped) }
      def inverse_vector(a, vector); end

      # RDL Type: (([ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ]), [ each: () {(XXX) -> XXX} -> XXX ]) -> Hash<String, Array<Number>>
      sig { params(enum: T.untyped, interval: T.untyped).returns(T::Hash[String, T::Array[Integer]]) }
      def position_hash(enum, interval); end
    end

    class Ldiff
      # RDL Type: (%bot, ?XXX, ?[ <<: (XXX) -> XXX ], ?XXX) -> Number
      sig do
        params(
          args: T.untyped,
          _input: T.untyped,
          output: T.untyped,
          error: T.untyped
        ).returns(Integer)
      end
      def run(args, _input = nil, output = nil, error = nil); end
    end
  end
end

module Diff
  module LCS
    # RDL Type: (([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ])) {XXX} -> Array<XXX>
    sig { params(other: T.untyped).returns(T::Array[T.untyped]) }
    def lcs(other); end

    # RDL Type: (([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {XXX} -> XXX
    sig { params(other: T.untyped, callbacks: T.untyped).returns(T.untyped) }
    def diff(other, callbacks = nil); end

    # RDL Type: (([ []: ((XXX or XXX)) -> XXX ] and [ []: (XXX) -> XXX ] and [ []: (XXX, Number) -> XXX ] and [ kind_of?: (Class) -> XXX ] and [ size: () -> XXX ]), ?([ diffs: () -> XXX ] and [ discard_a: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ discard_b: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ match: ((Diff::LCS::ContextChange or XXX)) -> XXX ] and [ new: () -> XXX ] and [ respond_to?: (:change) -> XXX ] and [ respond_to?: (:finish) -> XXX ] and [ respond_to?: (:finished_a) -> XXX ] and [ respond_to?: (:finished_b) -> XXX ])) {XXX} -> XXX
    sig { params(other: T.untyped, callbacks: T.untyped).returns(T.untyped) }
    def sdiff(other, callbacks = nil); end

    # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ]) -> (XXX or XXX)
    sig { params(patchset: T.untyped).returns(T.untyped) }
    def patch(patchset); end

    # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ]) -> (XXX or XXX)
    sig { params(patchset: T.untyped).returns(T.untyped) }
    def patch!(patchset); end

    # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ]) -> (XXX or XXX)
    sig { params(patchset: T.untyped).returns(T.untyped) }
    def unpatch!(patchset); end

    class DiffCallbacks
      # RDL Type: () {(Diff::LCS::DiffCallbacks) -> XXX} -> self
      sig { returns(T.self_type) }
      def initialize; end

      # RDL Type: () -> Array<Diff::LCS::Change>
      sig { returns(T::Array[Diff::LCS::Change]) }
      def finish; end

      # RDL Type: (XXX) -> Array<Diff::LCS::Change>
      sig { params(_event: T.untyped).returns(T::Array[Diff::LCS::Change]) }
      def match(_event); end

      # RDL Type: (Diff::LCS::ContextChange) -> XXX
      sig { params(event: Diff::LCS::ContextChange).returns(T.untyped) }
      def discard_a(event); end

      # RDL Type: (Diff::LCS::ContextChange) -> XXX
      sig { params(event: Diff::LCS::ContextChange).returns(T.untyped) }
      def discard_b(event); end

      # RDL Type: () -> Array<Diff::LCS::Change>
      sig { returns(T::Array[Diff::LCS::Change]) }
      def finish_hunk; end
    end

    class ContextDiffCallbacks
      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_a(event); end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_b(event); end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def change(event); end
    end

    class SDiffCallbacks
      # RDL Type: () {(Diff::LCS::SDiffCallbacks) -> XXX} -> self
      sig { returns(T.self_type) }
      def initialize; end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def match(event); end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_a(event); end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def discard_b(event); end

      # RDL Type: ([ to_a: () -> XXX ]) -> XXX
      sig { params(event: T.untyped).returns(T.untyped) }
      def change(event); end
    end

    class Block
      # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ]) -> self
      sig { params(chunk: T.untyped).returns(T.self_type) }
      def initialize(chunk); end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def diff_size; end

      # RDL Type: () -> String
      sig { returns(String) }
      def op; end
    end

    class Change
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end

      # RDL Type: (*XXX) -> String
      sig { params(_args: T.untyped).returns(String) }
      def inspect(*_args); end

      # RDL Type: () -> [XXX, XXX, XXX]
      sig { returns(T::Array[T.untyped]) }
      def to_a; end

      # RDL Type: (Diff::LCS::Change) -> XXX
      sig { params(other: Diff::LCS::Change).returns(T.untyped) }
      def ==(other); end

      # RDL Type: (Diff::LCS::Change) -> XXX
      sig { params(other: Diff::LCS::Change).returns(T.untyped) }
      def <=>(other); end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def adding?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def deleting?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def unchanged?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def changed?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def finished_a?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def finished_b?; end
    end

    class ContextChange
      # RDL Type: (*XXX) -> self
      sig { params(args: T.untyped).returns(T.self_type) }
      def initialize(*args); end

      # RDL Type: () -> Array<(String or XXX or [XXX, XXX])>
      sig { returns(T::Array[T.any(T::Array[T.untyped], String)]) }
      def to_a; end

      # RDL Type: (Diff::LCS::ContextChange) -> XXX
      sig { params(other: Diff::LCS::ContextChange).returns(T.untyped) }
      def ==(other); end

      # RDL Type: (Diff::LCS::ContextChange) -> XXX
      sig { params(other: Diff::LCS::ContextChange).returns(T.untyped) }
      def <=>(other); end
    end

    class HTMLDiff
      # RDL Type: (XXX, XXX, ?{ expand_tabs: Number, output: (XXX or nil), css: String, title: String }) -> self
      sig { params(left: T.untyped, right: T.untyped, options: T.untyped).returns(T.self_type) }
      def initialize(left, right, options = nil); end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def verify_options; end

      class Callbacks
        # RDL Type: ([ <<: (XXX) -> XXX ], ?([ []: (:match_class) -> XXX ] and [ []: (:only_a_class) -> XXX ] and [ []: (:only_b_class) -> XXX ])) -> self
        sig { params(output: T.untyped, options: T.untyped).returns(T.self_type) }
        def initialize(output, options = nil); end

        # RDL Type: ([ empty?: () -> XXX ], (String or Symbol)) -> String
        sig { params(element: T.untyped, css_class: T.any(Symbol, String)).returns(String) }
        def htmlize(element, css_class); end

        # RDL Type: (Diff::LCS::ContextChange) -> XXX
        sig { params(event: Diff::LCS::ContextChange).returns(T.untyped) }
        def match(event); end

        # RDL Type: (Diff::LCS::ContextChange) -> XXX
        sig { params(event: Diff::LCS::ContextChange).returns(T.untyped) }
        def discard_a(event); end

        # RDL Type: (Diff::LCS::ContextChange) -> XXX
        sig { params(event: Diff::LCS::ContextChange).returns(T.untyped) }
        def discard_b(event); end
      end
    end

    class Hunk
      # RDL Type: (Array<String>, Array<String>, [ each: () {(XXX) -> XXX} -> XXX ], (File::Stat or Numeric), [ +: (XXX) -> XXX ]) -> self
      sig do
        params(
          data_old: T::Array[String],
          data_new: T::Array[String],
          piece: T.untyped,
          flag_context: T.any(File::Stat, Numeric),
          file_length_difference: T.untyped
        ).returns(T.self_type)
      end
      def initialize(data_old, data_new, piece, flag_context, file_length_difference); end

      # RDL Type: ((File::Stat or Numeric)) -> nil
      sig { params(context: T.any(File::Stat, Numeric)).void }
      def flag_context=(context); end

      # RDL Type: (Diff::LCS::Hunk) -> nil
      sig { params(hunk: Diff::LCS::Hunk).void }
      def merge(hunk); end

      # RDL Type: (Diff::LCS::Hunk) -> Diff::LCS::Hunk
      sig { params(hunk: Diff::LCS::Hunk).returns(Diff::LCS::Hunk) }
      def overlaps?(hunk); end

      # RDL Type: ([ ==: (:reverse_ed) -> XXX ]) -> Diff::LCS::Hunk
      sig { params(format: T.untyped).returns(Diff::LCS::Hunk) }
      def diff(format); end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def old_diff; end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def unified_diff; end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def context_diff; end

      # RDL Type: ([ ==: (:reverse_ed) -> XXX ]) -> XXX
      sig { params(format: T.untyped).returns(T.untyped) }
      def ed_diff(format); end

      # RDL Type: (XXX, ?XXX) -> String
      sig { params(mode: T.untyped, op: T.untyped).returns(String) }
      def context_range(mode, op = nil); end

      # RDL Type: (XXX) -> String
      sig { params(mode: T.untyped).returns(String) }
      def unified_range(mode); end
    end
  end
end
