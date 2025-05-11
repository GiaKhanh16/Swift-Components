//
//  widget.swift
//  Components
//
//  Created by Khanh Nguyen on 5/11/25.
//

import SwiftUI

struct widget: View {
	 var body: some View {
			VStack {
				 HStack(spacing: 16) {
						Image("myImage")
							 .renderingMode(.original)
							 .resizable()
							 .aspectRatio(contentMode: .fill)
							 .frame(width: 109)
							 .clipped()
							 .mask { RoundedRectangle(cornerRadius: 13, style: .continuous) }
						VStack(spacing: 2) {
							 Text("In-N-Out Burger")
									.frame(maxWidth: .infinity, alignment: .leading)
									.clipped()
									.font(.system(.callout, weight: .semibold))
							 Text("Kettleman City Rest Stop")
									.frame(maxWidth: .infinity, alignment: .leading)
									.clipped()
									.font(.system(.footnote, weight: .regular))
									.foregroundStyle(.secondary)
							 Text("Adds 9m")
									.frame(maxWidth: .infinity, alignment: .leading)
									.clipped()
									.font(.system(.caption, weight: .medium))
									.foregroundStyle(.blue)
						}
				 }
				 Spacer()
				 HStack {
						ForEach(0..<5) { _ in // Replace with your data model here
							 Text("Open til 9PM")
									.foregroundStyle(Color(.sRGB, red: 51/255, green: 193/255, blue: 89/255))
									.font(.system(.footnote, weight: .semibold))
									.padding(5)
									.padding(.horizontal, 2)
									.background {
										 RoundedRectangle(cornerRadius: 14, style: .continuous)
												.fill(.green.opacity(0.06))
									}
						}
						Spacer()
				 }
			}
			.padding(16)
	 }
}

#Preview {
	 widget()
}
