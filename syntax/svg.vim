" Vim syntax file
" Language:	SVG
" Filenames:	*.svg
" Maintainer:	Michal Gorny <michal-gorny@wp.pl>
" URL:		http://mig.webpark.pl/vim/svg.vim
" Last Change:	2004 Mar 13

runtime! syntax/xml.vim

syn case match

syn cluster xmlTagHook add=svgElement
syn cluster xmlAttribHook add=svgAttrib

" SVG elements
syn match   svgElement contained /\<svg\>[^:]/me=e-1
syn keyword svgElement contained a altGlyph altGlyphDef altGlyphItem animate
syn keyword svgElement contained animateColor animateMotion animateTransform
syn keyword svgElement contained circle clipPath cursor defs desc ellipse
syn keyword svgElement contained feBlend feColorMatrix feComponentTransfer
syn keyword svgElement contained feComposite feConvolveMatrix feDiffuseLighting
syn keyword svgElement contained feDisplacementMap feDistantLight feFlood
syn keyword svgElement contained feFuncA feFuncB feFuncG feFuncR feGaussianBlur
syn keyword svgElement contained feImage feMerge feMergeNode feMorphology
syn keyword svgElement contained feOffset fePointLight feSpecularLighting
syn keyword svgElement contained feSpotLight feTile feTurbulence filter
syn keyword svgElement contained foreignObject g glyph glyphRef hkern image line
syn keyword svgElement contained linearGradient marker mask metadata mpath path
syn keyword svgElement contained pattern polygon polyline radialGradient rect
syn keyword svgElement contained script set stop style switch symbol text
syn keyword svgElement contained textPath title tref tspan use view vkern
syn match   svgElement contained /\<\(font\|font-face\)\>[^-]/me=e-1
syn match   svgElement contained /\<\(color-profile\|definition-src\)\>/
syn match   svgElement contained /\<\(font-face-format\|font-face-name\)\>/
syn match   svgElement contained /\<\(font-face-src\|font-face-uri\)\>/
syn match   svgElement contained /\<missing-glyph\>/

" SVG 1.0 attributes
syn keyword svgAttrib contained accumulate additive alphabetic amplitude ascent attributeName attributeType azimuth baseFrequency bbox begin bias by calcMode
syn keyword svgAttrib contained class clipPathUnits contentScriptType contentStyleType cursor cx cy d descent diffuseConstant direction display
syn keyword svgAttrib contained divisor dur dx dy edgeMode elevation end exponent externalResourcesRequired filter filterRes filterUnits format from
syn keyword svgAttrib contained fx fy g1 g2 glyphRef gradientTransform gradientUnits hanging height id ideographic in in2 intercept k k1 k2 k3 k4
syn keyword svgAttrib contained kernelMatrix kernelUnitLength kerning keyPoints keySplines keyTimes lang lengthAdjust limitingConeAngle local markerHeight
syn keyword svgAttrib contained markerUnits markerWidth mask maskContentUnits maskUnits mathematical max media method min mode name numOctaves offset
syn keyword svgAttrib contained onabort onactivate onbegin onclick onend onerror onfocusin onfocusout onload onmousedown onmousemove onmouseout
syn keyword svgAttrib contained onmouseover onmouseup onrepeat onresize onscroll onunload onzoom opacity operator order orient orientation origin
syn keyword svgAttrib contained overflow path pathLength patternContentUnits patternTransform patternUnits points pointsAtX pointsAtY pointsAtZ
syn keyword svgAttrib contained preserveAlpha preserveAspectRatio primitiveUnits r radius refX refY repeatCount repeatDur requiredExtensions
syn keyword svgAttrib contained requiredFeatures restart result rotate rx ry scale seed slope spacing specularConstant specularExponent spreadMethod
syn keyword svgAttrib contained startOffset stdDeviation stemh stemv stitchTiles string style surfaceScale systemLanguage tableValues target
syn keyword svgAttrib contained targetX targetY textLength title to transform type u1 u2 values version viewBox viewTarget visibility width widths
syn keyword svgAttrib contained x x1 x2 xChannelSelector y y1 y2 yChannelSelector z zoomAndPan
syn match   svgAttrib contained /\<xmlns\>[^:]/me=e-1
syn match   svgAttrib contained /\<\(clip\|color\|fill\)\>[^-]/me=e-1
syn match   svgAttrib contained /\<\(stroke\|unicode\)\>[^-]/me=e-1
syn match   svgAttrib contained /\<\(accent-height\|alignment-baseline\|arabic-form\|baseline-shift\|cap-height\|clip-path\|clip-rule\)\>/
syn match   svgAttrib contained /\<\(color-interpolation\|color-interpolation-filters\|color-profile\|color-rendering\|dominant-baseline\)\>/
syn match   svgAttrib contained /\<\(enable-background\|fill-opacity\|fill-rule\|flood-color\|flood-opacity\|font-family\|font-size\)\>/
syn match   svgAttrib contained /\<\(font-size-adjust\|font-stretch\|font-style\|font-variant\|font-weight\|glyph-name\)\>/
syn match   svgAttrib contained /\<\(glyph-orientation-horizontal\|glyph-orientation-vertical\|horiz-adv-x\|horiz-origin-x\|horiz-origin-y\)\>/
syn match   svgAttrib contained /\<\(image-rendering\|letter-spacing\|lighting-color\|marker-end\|marker-mid\|marker-start\|overline-position\)\>/
syn match   svgAttrib contained /\<\(overline-thickness\|panose-1\|pointer-events\|rendering-intent\|shape-rendering\|stop-color\)\>/
syn match   svgAttrib contained /\<\(stop-opacity\|strikethrough-position\|strikethrough-thickness\|stroke-dasharray\)\>/
syn match   svgAttrib contained /\<\(stroke-dashoffset\|stroke-linecap\|stroke-linejoin\|stroke-miterlimit\|stroke-opacity\|stroke-width\)\>/
syn match   svgAttrib contained /\<\(text-anchor\|text-decoration\|text-rendering\|underline-position\|underline-thickness\)\>/
syn match   svgAttrib contained /\<\(unicode-bidi\|unicode-range\|units-per-em\|v-alphabetic\|v-hanging\|v-ideographic\|v-mathematical\)\>/
syn match   svgAttrib contained /\<\(vert-adv-y\|vert-origin-x\|vert-origin-y\|word-spacing\|writing-mode\|x-height\)\>/
syn match   svgAttrib contained /\<\(xlink:\)\@<=\(actuate\|arcrole\|href\)\>/
syn match   svgAttrib contained /\<\(xlink:\)\@<=\(role\|show\|title\|type\)\>/
syn match   svgAttrib contained /\<\(xml:\)\@<=\(base\|lang\|space\)\>/
syn match   svgAttrib contained /\<\(xmlns:\)\@<=xlink\>/

" Attribute new in SVG 1.1
syn keyword svgAttrib contained baseProfile

hi def link svgElement Statement
hi link xmlAttrib Function
hi link svgAttrib Type

" vim:ts=8
