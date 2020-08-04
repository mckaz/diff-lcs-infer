require_relative './lib/diff-lcs'
require_relative './lib/diff/lcs/block'
require_relative './lib/diff/lcs/htmldiff'
require_relative './lib/diff/lcs/hunk'
require_relative './lib/diff/lcs/ldiff'
#require '../type-infer/rdl/lib/rdl'
require 'rdl'
RDL::Config.instance.number_mode = true
require 'types/core'

RDL.infer_file './lib/diff/lcs/callbacks.rb'
RDL.infer_file './lib/diff/lcs/backports.rb'
RDL.infer_file './lib/diff/lcs/block.rb'
RDL.infer_file './lib/diff/lcs/change.rb'

RDL.no_infer_meth Diff::LCS::HTMLDiff, :run ## POTENTIAL BUG: No constant Text
RDL.infer_file './lib/diff/lcs/htmldiff.rb'

RDL.infer_file './lib/diff/lcs/hunk.rb'

RDL.no_infer_meth Diff::LCS::Internals, 'self.analyze_patchset' ## conservatism of blocks doesn't allow flow sensitivity
RDL.infer_file './lib/diff/lcs/internals.rb'
RDL.infer_file './lib/diff/lcs/ldiff.rb'




RDL.no_infer_meth Diff::LCS, :traverse_sequences ## POTENTIAL BUG: no method YieldingCallbacks
RDL.no_infer_meth Diff::LCS, :traverse_balanced ## POTENTIAL BUG: same as above
RDL.no_infer_meth Diff::LCS, :patch_me
RDL.no_infer_meth Diff::LCS, :unpatch_me
RDL.infer_file './lib/diff/lcs.rb'

RDL.do_infer :files, num_times: 11
