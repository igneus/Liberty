indexing
	description: "Different methods to retrieve a codec"
	copyright: "[
					Copyright (C) 2006 Soluciones Informaticas Libres S.A. (Except)
					
					This library is free software; you can redistribute it and/or
					modify it under the terms of the GNU Lesser General Public License
					as published by the Free Software Foundation; either version 2.1 of
					the License, or (at your option) any later version.
					
					This library is distributed in the hopeOA that it will be useful, but
					WITHOUT ANY WARRANTY; without even the implied warranty of
					MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
					Lesser General Public License for more details.

					You should have received a copy of the GNU Lesser General Public
					License along with this library; if not, write to the Free Software
					Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
					02110-1301 USA
			]"

class AV_CODEC_FINDER

insert
	AV_CODEC_FINDER_EXTERNALS
	AV_CODEC_IDS
	WRAPPER_RETRIEVER [AV_CODEC]

feature {} -- Private access

	get_decoder (a_codec_id: INTEGER): AV_CODEC is
		require
			is_valid_av_codec_id (a_codec_id)
		local
			codec_ptr: POINTER
		do
			codec_ptr := avcodec_find_decoder (a_codec_id)
			if codec_ptr.is_not_null then
				if wrappers.has (codec_ptr) then
					Result ::= wrappers.at (codec_ptr).to_any
				else
					create Result.from_external_pointer (codec_ptr)
				end
			end
		end

	get_encoder (a_codec_id: INTEGER): AV_CODEC is
		require
			is_valid_av_codec_id (a_codec_id)
		local
			codec_ptr: POINTER
		do
			codec_ptr := avcodec_find_encoder (a_codec_id)
			if codec_ptr.is_not_null then
				if wrappers.has (codec_ptr) then
					Result ::= wrappers.at (codec_ptr).to_any
				else
					create Result.from_external_pointer (codec_ptr)
				end
			end
		end

	get_decoder_by_name (a_name: STRING): AV_CODEC is
		require
			a_name /= Void
		local
			codec_ptr: POINTER
		do
			codec_ptr := avcodec_find_decoder_by_name (a_name.to_external)
			if codec_ptr.is_not_null then
				if wrappers.has (codec_ptr) then
					Result ::= wrappers.at (codec_ptr).to_any
				else
					create Result.from_external_pointer (codec_ptr)
				end
			end
		end

	get_encoder_by_name (a_name: STRING): AV_CODEC is
		require
			a_name /= Void
		local
			codec_ptr: POINTER
		do
			codec_ptr := avcodec_find_encoder_by_name (a_name.to_external)
			if codec_ptr.is_not_null then
				if wrappers.has (codec_ptr) then
					Result ::= wrappers.at (codec_ptr).to_any
				else
					create Result.from_external_pointer (codec_ptr)
				end
			end
		end

end -- class AV_CODEC_FINDER
