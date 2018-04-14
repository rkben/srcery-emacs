;;; srcery-theme.el --- Dark color theme.
;; Copyright (C) 2018 Daniel Berg

;; Author: Daniel Berg
;; URL: https://github.com/roosta/emacs-srcery

;; Version: 0.1.0
;; Keywords: faces
;; Package-Requires: ((emacs "24"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;; Port of vim-srcery, a dark color theme. <https://github.com/roosta/emacs-srcery>
;; Should work well in a 256 color terminal.
;; The port is based on https://github.com/nashamri/spacemacs-theme

;;; Code:

(unless (>= emacs-major-version 24)
  (error "The monokai theme requires Emacs 24 or later!"))

(deftheme srcery "Srcery color theme")

(defgroup srcery nil
  "Srcery options."
  :group 'faces)

(defcustom srcery-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'srcery)

(defcustom srcery-custom-colors nil
  "Specify a list of custom colors."
  :type 'alist
  :group 'srcery)

(defcustom srcery-invert-matches nil
  "Use inverse video for search matches."
  :type 'boolean
  :group 'srcery)


(let* ((srcery-class '((class color) (min-colors 257)))

       (srcery-black          "#1C1B19")
       (srcery-red            "#EF2F27")
       (srcery-green          "#519F50")
       (srcery-yellow         "#FBB829")
       (srcery-blue           "#2C78BF")
       (srcery-magenta        "#E02C6D")
       (srcery-cyan           "#0AAEB3")
       (srcery-white          "#918175")
       (srcery-bright-black   "#2D2B28")
       (srcery-bright-red     "#F75341")
       (srcery-bright-green   "#98BC37")
       (srcery-bright-yellow  "#FED06E")
       (srcery-bright-blue    "#68A8E4")
       (srcery-bright-magenta "#FF5C8F")
       (srcery-bright-cyan    "#53FDE9")
       (srcery-bright-white   "#FCE8C3")

       (srcery-orange         "#D75F00")
       (srcery-bright-orange  "#FF8700")
       (srcery-hard-black     "#121212")
       (srcery-gray1          "#262626")
       (srcery-gray2          "#303030")
       (srcery-gray3          "#3A3A3A")
       (srcery-gray4          "#444444")
       (srcery-gray5          "#4E4E4E")


       (srcery-256-class '((class color) (min-colors 89)))

       (srcery-256-black          "black")
       (srcery-256-red            "red")
       (srcery-256-green          "green")
       (srcery-256-yellow         "yellow")
       (srcery-256-blue           "blue")
       (srcery-256-magenta        "magenta")
       (srcery-256-cyan           "cyan")
       (srcery-256-white          "white")
       (srcery-256-bright-black   "brightblack")
       (srcery-256-bright-red     "brightred")
       (srcery-256-bright-green   "brightgreen")
       (srcery-256-bright-yellow  "brightyellow")
       (srcery-256-bright-blue    "brightblue")
       (srcery-256-bright-magenta "brightmagenta")
       (srcery-256-bright-cyan    "brightcyan")
       (srcery-256-bright-white   "brightwhite")

       (srcery-256-orange         "color-166")
       (srcery-256-bright-orange  "color-208")
       (srcery-256-hard-black     "color-233")
       (srcery-256-gray1          "color-235")
       (srcery-256-gray2          "color-236")
       (srcery-256-gray3          "color-237")
       (srcery-256-gray4          "color-238")
       (srcery-256-gray5          "color-239"))


  (custom-theme-set-faces
   'srcery

   ;; basics
   `(cursor
     ((,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-bright-white :foreground ,srcery-black)))
      (,srcery-256-class ,(if srcery-invert-matches
                              `(:inverse-video t)
                            `(:background ,srcery-256-bright-white :foreground ,srcery-256-black)))))

   `(custom-button
     ((,srcery-class :background ,srcery-black :foreground ,srcery-bright-white :box (:line-width 2 :style released-button))
      (,srcery-256-class :background ,srcery-256-black :foreground ,srcery-256-bright-white :box (:line-width 2 :style released-button))))

   `(default
      ((,srcery-class (:background ,srcery-black :foreground ,srcery-bright-white))
       (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-bright-white))))

   `(default-italic
      ((,srcery-class (:italic t))
       (,srcery-256-class (:italic t))))

   `(error
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(eval-sexp-fu-flash
     ((,srcery-class (:background ,srcery-green))
      (,srcery-256-class (:background ,srcery-256-green))))

   `(eval-sexp-fu-flash-error
     ((,srcery-class (:background ,srcery-red))
      (,srcery-256-class (:background ,srcery-256-red))))

   `(font-lock-builtin-face
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(font-lock-comment-face
     ((,srcery-class (:foreground ,srcery-white :italic t))
      (,srcery-256-class (:foreground ,srcery-256-white :italic t))))

   `(font-lock-constant-face
     ((,srcery-class (:foreground ,srcery-bright-magenta))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta))))

   `(font-lock-reference-face
     ((,srcery-class (:foreground ,srcery-bright-blue))
      (,srcery-256-class (:foreground ,srcery-256-bright-blue))))

   `(font-lock-doc-face
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(font-lock-function-name-face
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(font-lock-keyword-face
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(font-lock-negation-char-face
     ((,srcery-class (:foreground ,srcery-bright-magenta))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta))))

   `(font-lock-preprocessor-face
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(font-lock-string-face
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(font-lock-type-face
     ((,srcery-class (:foreground ,srcery-bright-blue))
      (,srcery-256-class (:foreground ,srcery-256-bright-blue))))

   `(font-lock-variable-name-face
     ((,srcery-class (:foreground ,srcery-bright-magenta))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta))))

   `(font-lock-warning-face
     ((,srcery-class (:foreground ,srcery-bright-orange :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange :background ,srcery-256-black))))

   `(fringe
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(header-line
     ((,srcery-class (:background ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-black))))

   `(highlight
     ((,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-magenta :foreground ,srcery-bright-white)))
      (,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-256-magenta :foreground ,srcery-256-bright-white)))))

   `(hl-line
     ((,srcery-class (:background ,srcery-bright-black))
      (,srcery-256-class (:background ,srcery-256-bright-black))))

   `(isearch
     ((,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-magenta :foreground ,srcery-bright-white)))
      (,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-256-magenta :foreground ,srcery-256-bright-white)))))
   `(lazy-highlight
     ((,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-magenta :foreground ,srcery-bright-white)))
      (,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-256-magenta :foreground ,srcery-256-bright-white)))))

   `(link
     ((,srcery-class (:inherit font-lock-comment-face :underline t))
      (,srcery-256-class (:inherit font-lock-comment-face :underline t))))

   `(link-visited
     ((,srcery-class (:inherit font-lock-comment-face :underline t))
      (,srcery-256-class (:inherit font-lock-comment-face :underline t))))

   `(match
     ((,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-magenta :foreground ,srcery-bright-white)))
      (,srcery-class ,(if srcery-invert-matches
                          `(:inverse-video t)
                        `(:background ,srcery-256-magenta :foreground ,srcery-256-bright-white)))))

   `(minibuffer-prompt
     ((,srcery-class (:weight bold :foreground ,srcery-yellow))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-yellow))))

   `(page-break-lines
     ((,srcery-class (:foreground ,srcery-gray3))
      (,srcery-256-class (:foreground ,srcery-256-gray3))))

   `(region
     ((,srcery-class (:inverse-video ,t))
      (,srcery-256-class (:inverse-video ,t))))

   `(secondary-selection
     ((,srcery-class (:background ,srcery-gray2))
      (,srcery-256-class (:background ,srcery-256-gray2))))

   `(success
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(tooltip
     ((,srcery-class (:background ,srcery-bright-blue :foreground ,srcery-bright-white :bold nil :italic nil :underline nil))
      (,srcery-256-class (:background ,srcery-256-bright-blue :foreground ,srcery-256-bright-white :bold nil :italic nil :underline nil))))

   `(vertical-border
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(warning
     ((,srcery-class (:foreground ,srcery-bright-orange))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange))))

   `(tool-bar
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))


   ;; ahs
   `(ahs-face
     ((,srcery-class (:background ,srcery-magenta))
      (,srcery-256-class (:background ,srcery-256-magenta))))

   `(ahs-plugin-whole-buffer-face
     ((,srcery-class (:background ,srcery-yellow :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-yellow :foreground ,srcery-256-black))))

   ;; anzu-mode
   `(anzu-mode-line
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   ;; auto-complete
   `(ac-completion-face
     ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-bright-black :foreground ,srcery-256-bright-white))))

   ;; avy
   `(avy-lead-face
     ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-magenta))
      (,srcery-256-class (:background ,srcery-256-bright-black :foreground ,srcery-256-bright-magenta))))

   `(avy-lead-face-0
     ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-yellow))
      (,srcery-256-class (:background ,srcery-256-bright-black :foreground ,srcery-256-bright-yellow))))

   `(avy-lead-face-1
     ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-green))
      (,srcery-256-class (:background ,srcery-256-bright-black :foreground ,srcery-256-bright-green))))

   `(avy-lead-face-2
     ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-blue))
      (,srcery-256-class (:background ,srcery-256-bright-black :foreground ,srcery-256-bright-blue))))


   ;; cider
   `(cider-enlightened
     ((,srcery-class (:background nil :box (:color ,srcery-yellow :line-width -1 :style nil) :foreground ,srcery-yellow))
      (,srcery-256-class (:background nil :box (:color ,srcery-256-yellow :line-width -1 :style nil) :foreground ,srcery-256-yellow))))

   `(cider-enlightened-face
     ((,srcery-class (:background nil :box (:color ,srcery-white :line-width -1 :style nil) :foreground ,srcery-blue))
      (,srcery-256-class (:background nil :box (:color ,srcery-256-white :line-width -1 :style nil) :foreground ,srcery-256-blue))))

   `(cider-enlightened-local
     ((,srcery-class (:foreground ,srcery-bright-yellow))
      (,srcery-256-class (:foreground ,srcery-256-bright-yellow))))

   `(cider-instrumented-face
     ((,srcery-class (:background nil :box (:color ,srcery-red :line-width -1 :style nil) :foreground ,srcery-red))
      (,srcery-256-class (:background nil :box (:color ,srcery-256-red :line-width -1 :style nil) :foreground ,srcery-256-red))))

   `(cider-result-overlay-face
     ((,srcery-class (:background nil :box (:color ,srcery-blue :line-width -1 :style nil) :foreground ,srcery-blue))
      (,srcery-256-class (:background nil :box (:color ,srcery-256-blue :line-width -1 :style nil) :foreground ,srcery-256-blue))))

   `(cider-test-error-face
     ((,srcery-class (:background ,srcery-bright-orange :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-bright-orange :foreground ,srcery-256-black))))

   `(cider-test-failure-face
     ((,srcery-class (:background ,srcery-red :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-red :foreground ,srcery-256-bright-white))))

   `(cider-test-success-face
     ((,srcery-class (:background ,srcery-green :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-green :foreground ,srcery-256-black))))

   `(cider-traced-face
     ((,srcery-class :box (:color ,srcery-cyan :line-width -1 :style nil))
      (,srcery-256-class :box (:color ,srcery-256-cyan :line-width -1 :style nil))))

   `(cider-fringe-good-face
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   `(cider-fragile-button-face
     ((,srcery-class :foreground ,srcery-orange :box (:style released-button))
      (,srcery-256-class :foreground ,srcery-256-orange :box (:style released-button))))

   `(cider-stacktrace-promoted-button-face
     ((,srcery-class :foreground ,srcery-red :box (:style released-button))
      (,srcery-256-class :foreground ,srcery-256-red :box (:style released-button))))

   `(cider-stacktrace-suppressed-button-face
     ((,srcery-class :foreground ,srcery-white :box (:style pressed-button))
      (,srcery-256-class :foreground ,srcery-256-white :box (:style pressed-button))))

   `(cider-enlightened-local-face
     ((,srcery-class :foreground ,srcery-yellow :weight bold)
      (,srcery-256-class :foreground ,srcery-256-yellow :weight bold)))


   ;; clojure
   `(clojure-keyword-face
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))


   ;; company
   `(company-echo-common
     ((,srcery-class (:background ,srcery-bright-white :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-bright-white :foreground ,srcery-256-black))))

   `(company-preview
     ((,srcery-class (:background ,srcery-gray1 :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-gray1 :foreground ,srcery-256-bright-white))))

   `(company-preview-common
     ((,srcery-class (:background ,srcery-gray1 :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-gray1 :foreground ,srcery-256-bright-white))))

   `(company-preview-search
     ((,srcery-class (:inherit match))
      (,srcery-256-class (:inherit match))))

   `(company-scrollbar-bg
     ((,srcery-class (:background ,srcery-gray1))
      (,srcery-256-class (:background ,srcery-256-gray1))))

   `(company-scrollbar-fg
     ((,srcery-class (:background ,srcery-white))
      (,srcery-256-class (:background ,srcery-256-white))))

   `(company-template-field
     ((,srcery-class (:inherit region))
      (,srcery-256-class (:inherit region))))

   `(company-tooltip
     ((,srcery-class (:background ,srcery-gray1 :foreground ,srcery-white))
      (,srcery-256-class (:background ,srcery-256-gray1 :foreground ,srcery-256-white))))

   `(company-tooltip-annotation
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(company-tooltip-common
     ((,srcery-class (:background ,srcery-gray1 :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-gray1 :foreground ,srcery-256-bright-white))))

   `(company-tooltip-common-selection
     ((,srcery-class (:foreground ,srcery-bright-magenta))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta))))

   `(company-tooltip-mouse
     ((,srcery-class (:inherit highlight))
      (,srcery-256-class (:inherit highlight))))

   `(company-tooltip-search
     ((,srcery-class (:inherit match))
      (,srcery-256-class (:inherit match))))

   `(company-tooltip-selection
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   ;; racer
   `(racer-tooltip
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-gray1))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-gray1))))

   `(racer-help-heading-face
     ((,srcery-class (:foreground ,srcery-bright-white :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :weight bold))))

   ;; rust
   `(rust-builtin-formatting-macro-face
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(rust-question-mark-face
     ((,srcery-class (:foreground ,srcery-blue :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold))))

   `(rust-string-interpolation-face
     ((,srcery-class (:foreground ,srcery-bright-green :italic t))
      (,srcery-256-class (:foreground ,srcery-256-bright-green :italic t))))

   `(rust-unsafe-face
     ((,srcery-class (:foreground ,srcery-bright-orange))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange))))


   ;; diff
   `(diff-added
     ((,srcery-class :background nil :foreground ,srcery-green)
      (,srcery-256-class :background nil :foreground ,srcery-256-green)))

   `(diff-changed
     ((,srcery-class :background nil :foreground ,srcery-red)
      (,srcery-256-class :background nil :foreground ,srcery-256-red)))

   `(diff-header
     ((,srcery-class :background ,srcery-bright-black :foreground ,srcery-yellow)
      (,srcery-256-class :background ,srcery-256-bright-black :foreground ,srcery-256-yellow)))

   `(diff-indicator-added
     ((,srcery-class :background nil :foreground ,srcery-green)
      (,srcery-256-class :background nil :foreground ,srcery-256-green)))

   `(diff-indicator-changed
     ((,srcery-class :background nil :foreground ,srcery-red)
      (,srcery-256-class :background nil :foreground ,srcery-256-red)))

   `(diff-indicator-removed
     ((,srcery-class :background nil :foreground ,srcery-red)
      (,srcery-256-class :background nil :foreground ,srcery-256-red)))

   `(diff-refine-added
     ((,srcery-class :background ,srcery-green :foreground ,srcery-black)
      (,srcery-256-class :background ,srcery-256-green :foreground ,srcery-256-black)))

   `(diff-refine-changed
     ((,srcery-class :background ,srcery-blue :foreground ,srcery-bright-white)
      (,srcery-256-class :background ,srcery-256-blue :foreground ,srcery-256-bright-white)))

   `(diff-refine-removed
     ((,srcery-class :background ,srcery-red :foreground ,srcery-bright-white)
      (,srcery-256-class :background ,srcery-256-red :foreground ,srcery-256-bright-white)))

   `(diff-removed
     ((,srcery-class :background nil :foreground ,srcery-red)
      (,srcery-256-class :background nil :foreground ,srcery-256-red)))

   ;; diff-hl
   `(diff-hl-change
     ((,srcery-class :foreground ,srcery-blue)
      (,srcery-256-class :foreground ,srcery-256-blue)))

   `(diff-hl-delete
     ((,srcery-class :foreground ,srcery-red)
      (,srcery-256-class :foreground ,srcery-256-red)))

   `(diff-hl-insert
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   ;; dired
   `(dired-directory
     ((,srcery-class (:foreground ,srcery-blue :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-blue :background ,srcery-256-black))))

   `(dired-flagged
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(dired-header
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   `(dired-ignored
     ((,srcery-class (:inherit shadow))
      (,srcery-256-class (:inherit shadow))))

   `(dired-mark
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   `(dired-marked
     ((,srcery-class (:foreground ,srcery-magenta :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-magenta :weight bold))))

   `(dired-perm-write
     ((,srcery-class (:foreground ,srcery-bright-white :underline t))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :underline t))))

   `(dired-symlink
     ((,srcery-class (:foreground ,srcery-cyan :background ,srcery-black :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-cyan :background ,srcery-256-black :weight bold))))

   `(dired-warning
     ((,srcery-class (:foreground ,srcery-bright-orange))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange))))

   ;; ediff
   `(ediff-current-diff-A
     ((,srcery-class(:background ,srcery-gray1 :foreground ,srcery-red))
      (,srcery-256-class(:background ,srcery-256-gray1 :foreground ,srcery-256-red))))

   `(ediff-current-diff-Ancestor
     ((,srcery-class(:background ,srcery-black :foreground ,srcery-cyan))
      (,srcery-256-class(:background ,srcery-256-black :foreground ,srcery-256-cyan))))

   `(ediff-current-diff-B
     ((,srcery-class(:foreground ,srcery-green))
      (,srcery-256-class(:foreground ,srcery-256-green))))

   `(ediff-current-diff-C
     ((,srcery-class(:background ,srcery-blue :foreground ,srcery-blue))
      (,srcery-256-class(:background ,srcery-256-blue :foreground ,srcery-256-blue))))

   `(ediff-even-diff-A
     ((,srcery-class(:background ,srcery-bright-black))
      (,srcery-256-class(:background ,srcery-256-bright-black))))

   `(ediff-even-diff-Ancestor
     ((,srcery-class(:background ,srcery-bright-black))
      (,srcery-256-class(:background ,srcery-256-bright-black))))

   `(ediff-even-diff-B
     ((,srcery-class(:background ,srcery-bright-black))
      (,srcery-256-class(:background ,srcery-256-bright-black))))

   `(ediff-even-diff-C
     ((,srcery-class(:background ,srcery-bright-black))
      (,srcery-256-class(:background ,srcery-256-bright-black))))

   `(ediff-fine-diff-A
     ((,srcery-class(:background nil :weight bold))
      (,srcery-256-class(:background nil :weight bold))))

   `(ediff-fine-diff-Ancestor
     ((,srcery-class(:background nil :weight bold))
      (,srcery-256-class(:background nil :weight bold))))

   `(ediff-fine-diff-B
     ((,srcery-class(:background nil :weight bold))
      (,srcery-256-class(:background nil :weight bold))))

   `(ediff-fine-diff-C
     ((,srcery-class(:background nil :weight bold))
      (,srcery-256-class(:background nil :weight bold))))

   `(ediff-odd-diff-A
     ((,srcery-class(:background ,srcery-black))
      (,srcery-256-class(:background ,srcery-256-black))))

   `(ediff-odd-diff-Ancestor
     ((,srcery-class(:background ,srcery-black))
      (,srcery-256-class(:background ,srcery-256-black))))

   `(ediff-odd-diff-B
     ((,srcery-class(:background ,srcery-black))
      (,srcery-256-class(:background ,srcery-256-black))))

   `(ediff-odd-diff-C
     ((,srcery-class(:background ,srcery-black))
      (,srcery-256-class(:background ,srcery-256-black))))


   ;; ein
   `(ein:cell-input-area
     ((,srcery-class (:background ,srcery-bright-black))
      (,srcery-256-class (:background ,srcery-256-bright-black))))

   `(ein:cell-input-prompt
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(ein:cell-output-prompt
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(ein:notification-tab-normal
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(ein:notification-tab-selected
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   ;;eldoc
   `(eldoc-highlight-function-argument
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))


   ;; enh-ruby
   `(enh-ruby-string-delimiter-face
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(enh-ruby-op-face
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-bright-white))))

   ;; erc
   `(erc-input-face
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(erc-my-nick-face
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(erc-nick-default-face
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(erc-nick-prefix-face
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(erc-notice-face
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(erc-prompt-face
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(erc-timestamp-face
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))


   ;; eshell
   `(eshell-ls-archive
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(eshell-ls-backup
     ((,srcery-class (:inherit font-lock-comment-face))
      (,srcery-256-class (:inherit font-lock-comment-face))))

   `(eshell-ls-clutter
     ((,srcery-class (:inherit font-lock-comment-face))
      (,srcery-256-class (:inherit font-lock-comment-face))))

   `(eshell-ls-directory
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(eshell-ls-executable
     ((,srcery-class (:foreground ,srcery-orange :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-orange :weight bold))))

   `(eshell-ls-missing
     ((,srcery-class (:inherit font-lock-warning-face))
      (,srcery-256-class (:inherit font-lock-warning-face))))

   `(eshell-ls-product
     ((,srcery-class (:inherit font-lock-doc-face))
      (,srcery-256-class (:inherit font-lock-doc-face))))

   `(eshell-ls-special
     ((,srcery-class (:foreground ,srcery-magenta :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-magenta :weight bold))))

   `(eshell-ls-symlink
     ((,srcery-class (:foreground ,srcery-cyan :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-cyan :weight bold))))

   `(eshell-ls-unreadable
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(eshell-prompt
     ((,srcery-class (:foreground ,srcery-magenta :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-magenta :weight bold))))

   ;; evil
   `(evil-ex-substitute-matches
     ((,srcery-class (:background ,srcery-red :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-red :foreground ,srcery-256-bright-white))))

   `(evil-ex-substitute-replacement
     ((,srcery-class (:background ,srcery-bright-green :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-bright-green :foreground ,srcery-256-black))))

   ;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) srcery-class)
       (:underline (:style line :color ,srcery-red))
       (,(append '((supports :underline (:style line))) srcery-256-class)
        (:underline (:style line :color ,srcery-256-red))))
      (,srcery-class (:foreground ,srcery-bright-white :background ,srcery-red :weight bold :underline t))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-red :weight bold :underline t))))

   `(flycheck-error-list-checker-name
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(flycheck-fringe-error
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(flycheck-fringe-info
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(flycheck-fringe-warning
     ((,srcery-class (:foreground ,srcery-bright-orange :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange :weight bold))))

   `(flycheck-info
     ((,(append '((supports :underline (:style line))) srcery-class)
       (:underline (:style line :color ,srcery-red))
       (,(append '((supports :underline (:style line))) srcery-256-class)
        (:underline (:style line :color ,srcery-256-red))))
      (,srcery-class (:foreground ,srcery-bright-white :background ,srcery-red :weight bold :underline t))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-red :weight bold :underline t))))

   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) srcery-class)
       (:underline (:style line :color ,srcery-bright-orange)))
      (,(append '((supports :underline (:style line))) srcery-256-class)
       (:underline (:style line :color ,srcery-256-bright-orange)))
      (,srcery-class (:foreground ,srcery-bright-white :background ,srcery-bright-orange :weight bold :underline t))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-bright-orange :weight bold :underline t))))

   ;; jabber
   `(jabber-activity-face
     ((,srcery-class (:weight bold :foreground ,srcery-red))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-red))))

   `(jabber-activity-personal-face
     ((,srcery-class (:weight bold :foreground ,srcery-blue))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-blue))))

   `(jabber-chat-error
     ((,srcery-class (:weight bold :foreground ,srcery-red))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-red))))

   `(jabber-chat-prompt-foreign
     ((,srcery-class (:weight bold :foreground ,srcery-red))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-red))))

   `(jabber-chat-prompt-local
     ((,srcery-class (:weight bold :foreground ,srcery-blue))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-blue))))

   `(jabber-chat-prompt-system
     ((,srcery-class (:weight bold :foreground ,srcery-green))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-green))))

   `(jabber-chat-text-foreign
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(jabber-chat-text-local
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(jabber-rare-time-face
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(jabber-roster-user-away
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(jabber-roster-user-chatty
     ((,srcery-class (:weight bold :foreground ,srcery-green))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-green))))

   `(jabber-roster-user-dnd
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(jabber-roster-user-error
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(jabber-roster-user-offline
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(jabber-roster-user-online
     ((,srcery-class (:weight bold :foreground ,srcery-green))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-green))))

   `(jabber-roster-user-xa
     ((,srcery-class (:foreground ,srcery-cyan))
      (,srcery-256-class (:foreground ,srcery-256-cyan))))

   ;; git
   `(git-commit-summary
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(git-commit-nonempty-second-line
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(diff-file-header
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(diff-hunk-header
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(diff-function
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(diff-header
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   ;; git-gutter-fr
   `(git-gutter-fr:added
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   `(git-gutter-fr:deleted
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(git-gutter-fr:modified
     ((,srcery-class (:foreground ,srcery-blue :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold))))

   `(git-gutter+-added
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(git-gutter+-deleted
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(git-gutter+-separator
     ((,srcery-class (:foreground ,srcery-cyan))
      (,srcery-256-class (:foreground ,srcery-256-cyan))))

   `(git-gutter+-modified
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(git-gutter+-unchanged
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(git-gutter:added
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(git-gutter:modified
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(git-gutter:unchanged
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   ;; git-timemachine
   `(git-timemachine-minibuffer-detail-face
     ((,srcery-class (:foreground ,srcery-blue :weight bold :background ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold :background ,srcery-256-blue))))


   ;; gnus
   `(gnus-emphasis-highlight-words
     ((,srcery-class (:background ,srcery-green :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-green :foreground ,srcery-256-black))))

   `(gnus-header-content
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(gnus-header-from
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(gnus-header-name
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(gnus-header-subject
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(gnus-summary-cancelled
     ((,srcery-class (:background ,srcery-bright-orange :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-bright-orange :foreground ,srcery-256-black))))

   ;; guide-key
   `(guide-key/highlight-command-face
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(guide-key/key-face
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(guide-key/prefix-command-face
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   ;; helm
   `(helm-bookmark-directory
     ((,srcery-class (:inherit helm-ff-directory))
      (,srcery-256-class (:inherit helm-ff-directory))))

   `(helm-bookmark-file
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(helm-bookmark-gnus
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(helm-bookmark-info
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(helm-bookmark-man
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(helm-bookmark-w3m
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(helm-buffer-directory
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(helm-buffer-file
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-buffer-not-saved
     ((,srcery-class (:foreground ,srcery-green :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-green :background ,srcery-256-black))))

   `(helm-buffer-process
     ((,srcery-class (:foreground ,srcery-red :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-red :background ,srcery-256-black))))

   `(helm-buffer-saved-out
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-buffer-size
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-candidate-number
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-red :weight bold))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-red :weight bold))))

   `(helm-ff-directory
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(helm-ff-dotted-directory
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(helm-ff-dotted-symlink-directory
     ((,srcery-class (:foreground ,srcery-cyan))
      (,srcery-256-class (:foreground ,srcery-256-cyan))))

   `(helm-ff-executable
     ((,srcery-class (:foreground ,srcery-green :background ,srcery-black :weight normal))
      (,srcery-256-class (:foreground ,srcery-256-green :background ,srcery-256-black :weight normal))))

   `(helm-ff-file
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black :weight normal))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black :weight normal))))

   `(helm-ff-invalid-symlink
     ((,srcery-class (:foreground ,srcery-red :background ,srcery-black :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :background ,srcery-256-black :weight bold))))

   `(helm-ff-prefix
     ((,srcery-class (:foreground ,srcery-black :background ,srcery-red :weight normal))
      (,srcery-256-class (:foreground ,srcery-256-black :background ,srcery-256-red :weight normal))))

   `(helm-ff-symlink
     ((,srcery-class (:foreground ,srcery-cyan :background ,srcery-black :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-cyan :background ,srcery-256-black :weight bold))))

   `(helm-grep-cmd-line
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-grep-file
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-grep-finish
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black))))

   `(helm-grep-lineno
     ((,srcery-class (:foreground ,srcery-bright-blue :background ,srcery-black :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-bright-blue :background ,srcery-256-black :weight bold))))

   `(helm-grep-match
     ((,srcery-class (:foreground nil :background nil :inherit helm-match))
      (,srcery-256-class (:foreground nil :background nil :inherit helm-match))))

   `(helm-header
     ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black :underline nil :box nil))
      (,srcery-256-class (:foreground ,srcery-256-bright-white :background ,srcery-256-black :underline nil :box nil))))

   `(helm-header-line-left-margin
     ((,srcery-class (:foreground ,srcery-red :background ,nil))
      (,srcery-256-class (:foreground ,srcery-256-red :background ,nil))))

   `(helm-match
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(helm-match-item
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(helm-moccur-buffer
     ((,srcery-class (:foreground ,srcery-blue :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-blue :background ,srcery-256-black))))

   `(helm-selection
     ((,srcery-class (:background ,srcery-bright-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-bright-black :weight bold))))

   `(helm-selection-line
     ((,srcery-class (:background ,srcery-bright-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-bright-black :weight bold))))

   `(helm-separator
     ((,srcery-class (:foreground ,srcery-green :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-green :background ,srcery-256-black))))

   `(helm-source-header
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-green :underline t))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-green :underline t))))

   `(helm-time-zone-current
     ((,srcery-class (:foreground ,srcery-red :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-red :background ,srcery-256-black))))

   `(helm-time-zone-home
     ((,srcery-class (:foreground ,srcery-green :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-green :background ,srcery-256-black))))

   `(helm-visible-mark
     ((,srcery-class (:foreground ,srcery-red :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-red :background ,srcery-256-black))))


   ;; helm-swoop
   `(helm-swoop-target-line-block-face
     ((,srcery-class (:foreground ,srcery-yellow :background ,srcery-black))
      (,srcery-256-class (:foreground ,srcery-256-yellow :background ,srcery-256-black))))

   `(helm-swoop-target-line-face
     ((,srcery-class (:background ,srcery-bright-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-bright-black :weight bold))))

   `(helm-swoop-target-word-face
     ((,srcery-class (:foreground ,srcery-magenta :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-magenta :weight bold))))

   ;; highlights
   `(hi-yellow
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(hi-green
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   ;; highlight-indentation
   `(highlight-indentation-face
     ((,srcery-class (:background ,srcery-white))
      (,srcery-256-class (:background ,srcery-256-white))))

   ;; highlight-symbol
   `(highlight-symbol-face
     ((,srcery-class (:background ,srcery-bright-black))
      (,srcery-256-class (:background ,srcery-256-bright-black))))

   ;; hydra
   `(hydra-face-blue
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(hydra-face-red
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   ;; ido
   `(ido-first-match
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   `(ido-only-match
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(ido-subdir
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(ido-indicator
     ((,srcery-class (:background ,srcery-red :foreground ,srcery-bright-white))
      (,srcery-256-class (:background ,srcery-256-red :foreground ,srcery-256-bright-white))))

   `(ido-vertical-match-face ((,srcery-class (:foreground ,srcery-green :underline nil))
                              (,srcery-256-class (:foreground ,srcery-256-green :underline nil))))

   ;; info
   `(info-header-xref
     ((,srcery-class (:foreground ,srcery-yellow :underline t))
      (,srcery-256-class (:foreground ,srcery-256-yellow :underline t))))

   `(info-menu
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(info-node
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(info-quoted-name
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(info-reference-item
     ((,srcery-class (:background nil :underline t :weight bold))
      (,srcery-256-class (:background nil :underline t :weight bold))))

   `(info-string
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(info-title-1
     ((,srcery-class (:height 1.4 :weight bold))
      (,srcery-256-class (:height 1.4 :weight bold))))

   `(info-title-2
     ((,srcery-class (:height 1.3 :weight bold))
      (,srcery-256-class (:height 1.3 :weight bold))))

   `(info-title-3
     ((,srcery-class (:height 1.3))
      (,srcery-256-class (:height 1.3))))

   `(info-title-4
     ((,srcery-class (:height 1.2))
      (,srcery-256-class (:height 1.2))))

   ;; ivy
   `(ivy-current-match
     ((,srcery-class (:background ,srcery-magenta :weight bold))
      (,srcery-256-class (:background ,srcery-256-magenta :weight bold))))

   `(ivy-minibuffer-match-face-1
     ((,srcery-class (:weight bold))
      (,srcery-256-class (:weight bold))))

   `(ivy-minibuffer-match-face-2
     ((,srcery-class (:foreground ,srcery-blue :underline t))
      (,srcery-256-class (:foreground ,srcery-256-blue :underline t))))

   `(ivy-minibuffer-match-face-3
     ((,srcery-class (:foreground ,srcery-yellow :underline t))
      (,srcery-256-class (:foreground ,srcery-256-yellow :underline t))))

   `(ivy-minibuffer-match-face-4
     ((,srcery-class (:foreground ,srcery-bright-green :underline t))
      (,srcery-256-class (:foreground ,srcery-256-bright-green :underline t))))

   `(ivy-remote
     ((,srcery-class (:foreground ,srcery-cyan))
      (,srcery-256-class (:foreground ,srcery-256-cyan))))

   ;; latex
   `(font-latex-bold-face
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(font-latex-italic-face
     ((,srcery-class (:foreground ,srcery-red :italic t))
      (,srcery-256-class (:foreground ,srcery-256-red :italic t))))

   `(font-latex-match-reference-keywords
     ((,srcery-class (:foreground ,srcery-bright-magenta))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta))))

   `(font-latex-match-variable-keywords
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(font-latex-sectioning-0-face
     ((,srcery-class (:weight bold :foreground ,srcery-bright-green :height ,(if srcery-org-height 1.3 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-bright-green :height ,(if srcery-org-height 1.3 1.0)))))

   `(font-latex-sectioning-1-face
     ((,srcery-class (:weight bold :foreground ,srcery-bright-yellow :height ,(if srcery-org-height 1.3 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-bright-yellow :height ,(if srcery-org-height 1.3 1.0)))))

   `(font-latex-sectioning-2-face
     ((,srcery-class (:weight bold :foreground ,srcery-blue :height ,(if srcery-org-height 1.3 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-blue :height ,(if srcery-org-height 1.3 1.0)))))

   `(font-latex-sectioning-3-face
     ((,srcery-class (:weight bold :foreground ,srcery-cyan :height ,(if srcery-org-height 1.2 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-cyan :height ,(if srcery-org-height 1.2 1.0)))))

   `(font-latex-sectioning-4-face
     ((,srcery-class (:bold nil :foreground ,srcery-bright-green :height ,(if srcery-org-height 1.1 1.0)))
      (,srcery-class (:bold nil :foreground ,srcery-256-bright-green :height ,(if srcery-org-height 1.1 1.0)))))

   `(font-latex-sectioning-5-face
     ((,srcery-class (:bold nil :foreground ,srcery-yellow))
      (,srcery-256-class (:bold nil :foreground ,srcery-256-yellow))))

   `(font-latex-string-face
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   ;; linum-mode
   `(linum
     ((,srcery-class (:foreground ,srcery-white :background ,srcery-black))
      (,srcery-class (:foreground ,srcery-white :background ,srcery-black))))

   ;; linum-relative
   `(linum-relative-current-face
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-class (:foreground ,srcery-yellow))))

   ;; magit
   `(magit-blame-culprit
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-header
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   `(magit-blame-sha1
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-subject
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-time
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   `(magit-blame-name
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-heading
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   `(magit-blame-hash
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-summary
     ((,srcery-class :foreground ,srcery-yellow)
      (,srcery-256-class :foreground ,srcery-256-yellow)))

   `(magit-blame-date
     ((,srcery-class :foreground ,srcery-green)
      (,srcery-256-class :foreground ,srcery-256-green)))

   `(magit-log-date
     ((,srcery-class :foreground ,srcery-bright-white)
      (,srcery-256-class :foreground ,srcery-256-bright-white)))

   `(magit-log-graph
     ((,srcery-class :foreground ,srcery-bright-white)
      (,srcery-256-class :foreground ,srcery-256-bright-white)))

   `(magit-reflog-amend
     ((,srcery-class :foreground ,srcery-magenta)
      (,srcery-256-class :foreground ,srcery-256-magenta)))

   `(magit-reflog-other
     ((,srcery-class :foreground ,srcery-cyan)
      (,srcery-256-class :foreground ,srcery-256-cyan)))

   `(magit-reflog-rebase
     ((,srcery-class :foreground ,srcery-magenta)
      (,srcery-256-class :foreground ,srcery-256-magenta)))

   `(magit-reflog-remote
     ((,srcery-class :foreground ,srcery-cyan)
      (,srcery-256-class :foreground ,srcery-256-cyan)))

   `(magit-reflog-reset
     ((,srcery-class :foreground ,srcery-red)
      (,srcery-256-class :foreground ,srcery-256-red)))

   `(magit-branch
     ((,srcery-class (:foreground ,srcery-bright-magenta :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-bright-magenta :weight bold))))

   `(magit-branch-current
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-blue :weight bold :box t))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-blue :weight bold :box t))))

   `(magit-branch-local
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-blue :weight bold))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-blue :weight bold))))

   `(magit-branch-remote
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-orange :weight bold))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-orange :weight bold))))

   `(magit-diff-file-header
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(magit-diff-file-heading
     ((,srcery-class (:foreground ,srcery-blue :weight light))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight light))))

   `(magit-diff-file-heading-highlight
     ((,srcery-class (:foreground ,srcery-blue :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold))))

   `(magit-diff-file-heading-selection
     ((,srcery-class (:foreground ,srcery-blue :weight bold :background ,srcery-bright-black))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold :background ,srcery-256-bright-black))))


   `(magit-diff-hunk-heading
     ((,srcery-class (:foreground ,srcery-yellow :weight light))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight light))))

   `(magit-diff-hunk-heading-highlight
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(magit-diff-hunk-heading-selection
     ((,srcery-class (:foreground ,srcery-black :background ,srcery-white :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-black :background ,srcery-256-white :weight bold))))


   `(magit-diff-added
     ((,srcery-class (:foreground ,srcery-green :weight light))
      (,srcery-256-class (:foreground ,srcery-256-green :weight light))))

   `(magit-diff-removed
     ((,srcery-class (:foreground ,srcery-red :weight light))
      (,srcery-256-class (:foreground ,srcery-256-red :weight light))))

   `(magit-diff-context
     ((,srcery-class (:foreground ,srcery-white :weight light))
      (,srcery-256-class (:foreground ,srcery-256-white :weight light))))

   `(magit-diff-added-highlight
     ((,srcery-class (:foreground ,srcery-green :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-green :weight bold))))

   `(magit-diff-removed-highlight
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(magit-diff-context-highlight
     ((,srcery-class (:foreground ,srcery-white :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-white :weight bold))))

   `(magit-diff-base
     ((,srcery-class (:foreground ,srcery-white :weight light))
      (,srcery-256-class (:foreground ,srcery-256-white :weight light))))

   `(magit-diff-base-highlight
     ((,srcery-class (:foreground ,srcery-white :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-white :weight bold))))

   `(magit-diff-lines-boundary
     ((,srcery-class (:background ,srcery-white :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-white :foreground ,srcery-256-black))))

   `(magit-diff-lines-heading
     ((,srcery-class (:background ,srcery-white :foreground ,srcery-black))
      (,srcery-256-class (:background ,srcery-256-white :foreground ,srcery-256-black))))

   `(magit-hash
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(magit-item-highlight
     ((,srcery-class :background ,srcery-bright-black)
      (,srcery-256-class :background ,srcery-256-bright-black)))

   `(magit-log-author
     ((,srcery-class (:foreground ,srcery-yellow))
      (,srcery-256-class (:foreground ,srcery-256-yellow))))

   `(magit-log-head-label-head
     ((,srcery-class (:background ,srcery-yellow :foreground ,srcery-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-yellow :foreground ,srcery-256-black :weight bold))))

   `(magit-log-head-label-local
     ((,srcery-class (:background ,srcery-red :foreground ,srcery-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-red :foreground ,srcery-256-black :weight bold))))

   `(magit-log-head-label-remote
     ((,srcery-class (:background ,srcery-green :foreground ,srcery-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-green :foreground ,srcery-256-black :weight bold))))

   `(magit-log-head-label-tags
     ((,srcery-class (:background ,srcery-magenta :foreground ,srcery-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-magenta :foreground ,srcery-256-black :weight bold))))

   `(magit-log-head-label-wip
     ((,srcery-class (:background ,srcery-cyan :foreground ,srcery-black :weight bold))
      (,srcery-256-class (:background ,srcery-256-cyan :foreground ,srcery-256-black :weight bold))))

   `(magit-log-sha1
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(magit-process-ng
     ((,srcery-class (:foreground ,srcery-bright-orange :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-bright-orange :weight bold))))

   `(magit-process-ok
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

   `(magit-section-heading
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(magit-section-highlight
     ((,srcery-class (:weight bold))
      (,srcery-256-class (:weight bold))))

   `(section-heading-selection
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(magit-section-title
     ((,srcery-class (:background ,srcery-black :foreground ,srcery-red :weight bold))
      (,srcery-256-class (:background ,srcery-256-black :foreground ,srcery-256-red :weight bold))))

   `(magit-cherry-equivalent
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(magit-cherry-unmatched
     ((,srcery-class (:foreground ,srcery-cyan))
      (,srcery-256-class (:foreground ,srcery-256-cyan))))

   `(magit-reflog-checkout
     ((,srcery-class (:foreground ,srcery-blue))
      (,srcery-256-class (:foreground ,srcery-256-blue))))

   `(magit-reflog-cherry-pick
     ((,srcery-class (:foreground ,srcery-bright-green))
      (,srcery-256-class (:foreground ,srcery-256-bright-green))))

   `(magit-bisect-bad
     ((,srcery-class (:foreground ,srcery-red))
      (,srcery-256-class (:foreground ,srcery-256-red))))

   `(magit-bisect-good
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(magit-bisect-skip
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(magit-diff-conflict-heading
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

;;;;; man
   `(Man-overstrike
     ((,srcery-class (:foreground ,srcery-blue :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-blue :weight bold))))

   `(Man-reverse
     ((,srcery-class (:foreground ,srcery-magenta))
      (,srcery-256-class (:foreground ,srcery-256-magenta))))

   `(Man-underline
     ((,srcery-class (:foreground ,srcery-green :underline t))
      (,srcery-256-class (:foreground ,srcery-256-green :underline t))))


;;;;; markdown
   `(markdown-header-face-1
     ((,srcery-class (:weight bold :foreground ,srcery-blue :height ,(if srcery-org-height 1.3 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-blue :height ,(if srcery-256-org-height 1.3 1.0)))))

   `(markdown-header-face-2
     ((,srcery-class (:weight bold :foreground ,srcery-bright-cyan :height ,(if srcery-org-height 1.2 1.0)))
      (,srcery-256-class (:weight bold :foreground ,srcery-256-bright-cyan :height ,(if srcery-256-org-height 1.2 1.0)))))

   `(markdown-header-face-3
     ((,srcery-class (:bold nil :foreground ,srcery-bright-green :height ,(if srcery-org-height 1.1 1.0)))
      (,srcery-256-class (:bold nil :foreground ,srcery-256-bright-green :height ,(if srcery-256-org-height 1.1 1.0)))))

   `(markdown-header-face-4
     ((,srcery-class (:bold nil :foreground ,srcery-yellow))
      (,srcery-256-class (:bold nil :foreground ,srcery-256-yellow))))

   `(markdown-header-face-5
     ((,srcery-class (:bold nil :foreground ,srcery-blue))
      (,srcery-256-class (:bold nil :foreground ,srcery-256-blue))))

   `(markdown-header-face-6
     ((,srcery-class (:bold nil :foreground ,srcery-cyan))
      (,srcery-256-class (:bold nil :foreground ,srcery-256-cyan))))

;;;;; mu4e
   `(mu4e-cited-1-face
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(mu4e-cited-7-face
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(mu4e-header-marks-face
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(mu4e-header-key-face
     ((,srcery-class (:foreground ,srcery-cyan :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-cyan :weight bold))))

   `(mu4e-view-url-number-face
     ((,srcery-class (:foreground ,srcery-green))
      (,srcery-256-class (:foreground ,srcery-256-green))))

   `(mu4e-unread-face
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

;;;;; neotree
   `(neo-dir-link-face
     ((,srcery-class (:foreground ,srcery-red :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-red :weight bold))))

   `(neo-expand-btn-face
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(neo-file-link-face
     ((,srcery-class (:foreground ,srcery-bright-white))
      (,srcery-256-class (:foreground ,srcery-256-bright-white))))

   `(neo-root-dir-face
     ((,srcery-class (:foreground ,srcery-yellow :weight bold))
      (,srcery-256-class (:foreground ,srcery-256-yellow :weight bold))))

;;;;; org
   `(org-agenda-clocking         ((,srcery-class (:background ,srcery-magenta :foreground ,srcery-green))))
   `(org-agenda-date             ((,srcery-class (:foreground ,srcery-blue :height ,(if srcery-org-height 1.1 1.0)))))
   `(org-agenda-date-today       ((,srcery-class (:foreground ,srcery-red :slant italic :weight bold :height ,(if srcery-org-height 1.3 1.0)))))
   `(org-agenda-date-weekend     ((,srcery-class (:weight bold :foreground ,srcery-blue))))
   `(org-agenda-done             ((,srcery-class (:foreground ,srcery-green :height ,(if srcery-org-height 1.2 1.0)))))
   `(org-agenda-structure        ((,srcery-class (:weight bold :foreground ,srcery-green))))
   `(org-block                   ((,srcery-class (:foreground ,srcery-bright-white))))
   `(org-block-begin-line        ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-green))))
   `(org-block-end-line          ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-green))))
   `(org-clock-overlay           ((,srcery-class (:foreground ,srcery-green))))
   `(org-code                    ((,srcery-class (:foreground ,srcery-cyan))))
   `(org-column                  ((,srcery-class (:background ,srcery-magenta))))
   `(org-column-title            ((,srcery-class (:background ,srcery-magenta))))
   `(org-date                    ((,srcery-class (:underline t :foreground ,srcery-blue))))
   `(org-date-selected           ((,srcery-class (:background ,srcery-yellow :foreground ,srcery-black))))
   `(org-document-info-keyword   ((,srcery-class (:foreground ,srcery-white))))
   `(org-document-info           ((,srcery-class (:foreground ,srcery-bright-magenta))))
   `(org-document-title          ((,srcery-class (:foreground ,srcery-yellow :weight bold :height ,(if srcery-org-height 1.4 1.0)))))
   `(org-done                    ((,srcery-class (:foreground ,srcery-green :weight bold))))
   `(org-ellipsis                ((,srcery-class (:foreground ,srcery-red))))
   `(org-footnote                ((,srcery-class (:underline t :foreground ,srcery-bright-white))))
   `(org-hide                    ((,srcery-class (:foreground ,srcery-bright-white))))
   `(org-kbd                     ((,srcery-class (:inherit region :foreground ,srcery-bright-white :box (:line-width 1 :style released-button)))))
   `(org-level-1                 ((,srcery-class (:weight bold :foreground ,srcery-blue :height ,(if srcery-org-height 1.3 1.0)))))
   `(org-level-2                 ((,srcery-class (:weight bold :foreground ,srcery-green :height ,(if srcery-org-height 1.2 1.0)))))
   `(org-level-3                 ((,srcery-class (:bold nil :foreground ,srcery-bright-blue :height ,(if srcery-org-height 1.1 1.0)))))
   `(org-level-4                 ((,srcery-class (:bold nil :foreground ,srcery-bright-green))))
   `(org-level-5                 ((,srcery-class (:bold nil :foreground ,srcery-yellow))))
   `(org-level-6                 ((,srcery-class (:bold nil :foreground ,srcery-bright-magenta))))
   `(org-level-7                 ((,srcery-class (:bold nil :foreground ,srcery-yellow))))
   `(org-level-8                 ((,srcery-class (:bold nil :foreground ,srcery-cyan))))
   `(org-link                    ((,srcery-class (:foreground ,srcery-white :underline t))))
   `(org-meta-line               ((,srcery-class (:foreground ,srcery-white))))
   `(org-mode-line-clock-overrun ((,srcery-class (:foreground ,srcery-red))))
   `(org-mode-line-clock         ((,srcery-class (:foreground ,srcery-bright-green))))
   `(org-priority                ((,srcery-class (:foreground ,srcery-bright-orange :weight bold))))
   `(org-quote                   ((,srcery-class (:inherit org-block :slant italic))))
   `(org-scheduled               ((,srcery-class (:foreground ,srcery-green))))
   `(org-scheduled-today         ((,srcery-class (:foreground ,srcery-yellow :height ,(if srcery-org-height 1.2 1.0)))))
   `(org-sexp-date               ((,srcery-class (:foreground ,srcery-bright-white))))
   `(org-special-keyword         ((,srcery-class (:foreground ,srcery-yellow))))
   `(org-table                   ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-gray1))))
   `(org-time-grid               ((,srcery-class (:foreground ,srcery-bright-green))))
   `(org-todo                    ((,srcery-class (:foreground ,srcery-yellow :weight bold))))
   `(org-verbatim                ((,srcery-class (:foreground ,srcery-bright-orange))))
   `(org-verse                   ((,srcery-class (:inherit org-block :slant italic))))
   `(org-warning                 ((,srcery-class (:foreground ,srcery-red))))

;;;;; perspective
   `(persp-selected-face ((,srcery-class (:weight bold :foreground ,srcery-yellow))))

;;;;; popup
   `(popup-face                       ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-white))))
   `(popup-tip-face                   ((,srcery-class (:background ,srcery-bright-blue :foreground ,srcery-bright-white :bold nil :italic nil :underline nil))))
   `(popup-menu-face                  ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-bright-white))))
   `(popup-enu-selection-face         ((,srcery-class (:background ,srcery-bright-blue :foreground ,srcery-bright-white))))
   `(popup-menu-mouse-face            ((,srcery-class (:inherit highlight))))
   `(popup-isearch-match              ((,srcery-class (:inherit match))))
   `(popup-scroll-bar-foreground-face ((,srcery-class (:background ,srcery-gray4))))
   `(popup-scroll-bar-background-face ((,srcery-class (:background ,srcery-bright-black))))

;;;;; mode-line
   `(powerline-active1   ((,srcery-class (:background ,srcery-gray3 :foreground ,srcery-bright-white))))
   `(powerline-active2   ((,srcery-class (:foreground ,srcery-bright-white))))
   `(powerline-inactive1 ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-white))))
   `(powerline-inactive2 ((,srcery-class (:background ,srcery-bright-black :foreground ,srcery-white))))

   `(mode-line                    ((,srcery-class (:foreground ,srcery-white :background ,srcery-bright-black))))
   `(mode-line-inactive           ((,srcery-class (:foreground ,srcery-white :background ,srcery-bright-black))))
   `(mode-line-buffer-id          ((,srcery-class (:foreground ,srcery-yellow))))
   `(mode-line-highlight          ((,srcery-class (:background ,srcery-bright-black :box (:color ,srcery-magenta :line-width 1)))))
   `(mode-line-buffer-id-inactive ((,srcery-class (:foreground ,srcery-bright-white))))
   `(magit-mode-line-process      ((,srcery-class (:foreground ,srcery-blue))))
   ;; `(mode-line-emphasis           ((,srcery-class (:weight bold :foreground ,srcery-yellow))))

   `(spaceline-python-venv      ((,srcery-class (:foreground ,srcery-green))))
   `(spaceline-flycheck-error   ((,srcery-class (:foreground ,srcery-red))))
   `(spaceline-flycheck-info    ((,srcery-class (:foreground ,srcery-bright-white))))
   `(spaceline-flycheck-warning ((,srcery-class (:foreground ,srcery-bright-orange))))
   `(spaceline-evil-normal      ((,srcery-class (:background ,srcery-gray4 :foreground ,srcery-bright-white))))
   `(spaceline-evil-insert      ((,srcery-class (:background ,srcery-bright-white :foreground ,srcery-black))))
   `(spaceline-evil-replace     ((,srcery-class (:background ,srcery-bright-red :foreground ,srcery-bright-white))))
   `(spaceline-evil-visual      ((,srcery-class (:background ,srcery-cyan :foreground ,srcery-black))))
   `(spaceline-evil-motion      ((,srcery-class (:background ,srcery-bright-magenta :foreground ,srcery-black))))
   `(spaceline-evil-emacs       ((,srcery-class (:background ,srcery-orange :foreground ,srcery-bright-white))))
   `(spaceline-unmodified       ((,srcery-class (:foreground ,srcery-bright-white))))
   `(spaceline-modified         ((,srcery-class (:background ,srcery-bright-orange :foreground ,srcery-black))))
   `(spaceline-read-only        ((,srcery-class (:background ,srcery-gray1 :foreground ,srcery-orange))))
   `(spaceline-highlight-face   ((,srcery-class (:background ,srcery-yellow :foreground ,srcery-black))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face    ((,srcery-class :foreground ,srcery-bright-white)))
   `(rainbow-delimiters-depth-2-face    ((,srcery-class :foreground ,srcery-bright-blue)))
   `(rainbow-delimiters-depth-3-face    ((,srcery-class :foreground ,srcery-bright-white)))
   `(rainbow-delimiters-depth-4-face    ((,srcery-class :foreground ,srcery-bright-cyan)))
   `(rainbow-delimiters-depth-5-face    ((,srcery-class :foreground ,srcery-bright-green)))
   `(rainbow-delimiters-depth-6-face    ((,srcery-class :foreground ,srcery-blue)))
   `(rainbow-delimiters-depth-7-face    ((,srcery-class :foreground ,srcery-green)))
   `(rainbow-delimiters-depth-8-face    ((,srcery-class :foreground ,srcery-yellow)))
   `(rainbow-delimiters-unmatched-face  ((,srcery-class :foreground ,srcery-red)))
   `(rainbow-delimiters-mismatched-face ((,srcery-class :foreground ,srcery-bright-red)))
   ;; `(rainbow-delimiters-unmatched-face  ((,srcery-class :foreground ,srcery-red :overline t :inhert bold)))
   ;; `(rainbow-delimiters-mismatched-face ((,srcery-class :foreground ,srcery-red :overline t :weight bold)))


;;;;; sh
   `(sh-heredoc ((,srcery-class (:foreground ,srcery-green :weight bold))))
   `(sh-quoted-exec ((,srcery-class (:foreground ,srcery-yellow :weight bold))))

;;;;; shm
   `(shm-current-face    ((,srcery-class (:background ,srcery-green, :foreground ,srcery-black))))
   `(shm-quarantine-face ((,srcery-class (:background ,srcery-gray1))))

;;;;; show-paren
   `(show-paren-match    ((,srcery-class (:foreground ,srcery-bright-magenta :weight bold))))
   `(show-paren-mismatch ((,srcery-class (:background ,srcery-red :foreground ,srcery-bright-white))))

;;;;; paren-face
   `(parenthesis ((,srcery-class (:foreground ,srcery-gray5))))

;;;;; smartparens
   `(sp-pair-overlay-face         ((,srcery-class (:background ,srcery-magenta :foreground nil))))
   `(sp-show-pair-match-face      ((,srcery-class (:foreground ,srcery-bright-magenta :weight bold))))
   `(sp-wrap-overlay-closing-pair ((,srcery-class (:background ,srcery-magenta :foreground, srcery-bright-yellow))))

;;;;; evil-snipe
   `(evil-snipe-first-match-face ((,srcery-class (:foreground ,srcery-magenta :weight bold))))
   `(evil-snipe-matches-face     ((,srcery-class (:foreground ,srcery-magenta :weight bold))))

;;;;; spacemacs
   `(spacemacs-normal-face                ((,srcery-class (:background ,srcery-gray4 :foreground ,srcery-bright-white))))
   `(spacemacs-insert-face                ((,srcery-class (:background ,srcery-bright-white :foreground ,srcery-black))))
   `(spacemacs-replace-face               ((,srcery-class (:background ,srcery-bright-red :foreground ,srcery-bright-white))))
   `(spacemacs-visual-face                ((,srcery-class (:background ,srcery-bright-cyan :foreground ,srcery-black))))
   `(spacemacs-motion-face                ((,srcery-class (:background ,srcery-magenta :foreground ,srcery-bright-white))))
   `(spacemacs-emacs-face                 ((,srcery-class (:background ,srcery-orange :foreground ,srcery-bright-white))))
   `(spacemacs-hybrid-face                ((,srcery-class (:background ,srcery-bright-blue :foreground ,srcery-bright-black))))
   `(spacemacs-lisp-face                  ((,srcery-class (:background ,srcery-green :foreground ,srcery-black))))
   `(spacemacs-evilified-face             ((,srcery-class (:background ,srcery-bright-yellow :foreground ,srcery-black))))
   `(spacemacs-helm-navigation-ms-face    ((,srcery-class (:foreground ,srcery-bright-white))))
   `(spacemacs-transient-state-title-face ((,srcery-class (:background nil :foreground ,srcery-green :box nil :weight bold))))
   `(spacemacs-transient-state-title-face ((,srcery-class (:background nil :foreground ,srcery-green :box nil :weight bold))))
   `(spacemacs-ido-navigation-ts-face     ((,srcery-class (:foreground ,srcery-yellow))))
   `(spacemacs-iedit-face                 ((,srcery-class (:background ,srcery-bright-orange :foreground ,srcery-black))))
   `(spacemacs-iedit-insert-face          ((,srcery-class (:background ,srcery-bright-orange :foreground ,srcery-black))))
   `(spacemacs-micro-state-binding-face   ((,srcery-class (:foreground ,srcery-yellow :weight bold))))
   ;; spacemacs-ido-navigation-ts-face
;;;;; swiper
   `(swiper-line-face    ((,srcery-class (:background ,srcery-magenta :weight bold))))
   `(swiper-match-face-1 ((,srcery-class (:weight bold))))
   `(swiper-match-face-2 ((,srcery-class (:foreground ,srcery-blue :underline t))))
   `(swiper-match-face-3 ((,srcery-class (:foreground ,srcery-yellow :underline t))))
   `(swiper-match-face-4 ((,srcery-class (:foreground ,srcery-bright-green :underline t))))

;;;;; term
   `(term               ((,srcery-class (:foreground ,srcery-bright-white :background ,srcery-black))))
   `(term-color-black   ((,srcery-class (:foreground ,srcery-black))))
   `(term-color-blue    ((,srcery-class (:foreground ,srcery-blue))))
   `(term-color-cyan    ((,srcery-class (:foreground ,srcery-cyan))))
   `(term-color-green   ((,srcery-class (:foreground ,srcery-green))))
   `(term-color-magenta ((,srcery-class (:foreground ,srcery-magenta))))
   `(term-color-red     ((,srcery-class (:foreground ,srcery-red))))
   `(term-color-white   ((,srcery-class (:foreground ,srcery-white))))
   `(term-color-yellow  ((,srcery-class (:foreground ,srcery-yellow))))

;;;;; web-mode
   `(web-mode-builtin-face         ((,srcery-class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face         ((,srcery-class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face        ((,srcery-class (:inherit ,font-lock-constant-face))))
   `(web-mode-doctype-face         ((,srcery-class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face   ((,srcery-class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face  ((,srcery-class (:foreground ,srcery-yellow))))
   `(web-mode-html-attr-value-face ((,srcery-class (:foreground ,srcery-red))))
   `(web-mode-html-tag-face        ((,srcery-class (:foreground ,srcery-red))))
   `(web-mode-keyword-face         ((,srcery-class (:foreground ,srcery-red))))
   `(web-mode-string-face          ((,srcery-class (:foreground ,srcery-bright-green))))
   `(web-mode-symbol-face          ((,srcery-class (:foreground ,srcery-bright-blue))))
   `(web-mode-type-face            ((,srcery-class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face         ((,srcery-class (:inherit ,font-lock-warning-face))))

;;;;; which-key
   `(which-key-command-description-face ((,srcery-class (:foreground ,srcery-bright-white))))
   `(which-key-group-description-face   ((,srcery-class (:foreground ,srcery-red))))
   `(which-key-key-face                 ((,srcery-class (:foreground ,srcery-yellow :weight bold))))
   `(which-key-separator-face           ((,srcery-class (:background nil :foreground ,srcery-bright-green))))
   `(which-key-special-key-face         ((,srcery-class (:background ,srcery-yellow :foreground ,srcery-black))))

;;;;; which-function-mode
   `(which-func ((,srcery-class (:foreground ,srcery-yellow))))

;;;;; whitespace-mode
   `(whitespace-empty            ((,srcery-class (:background nil :foreground ,srcery-yellow))))
   `(whitespace-indentation      ((,srcery-class (:background nil :foreground ,srcery-bright-orange))))
   `(whitespace-line             ((,srcery-class (:background nil :foreground ,srcery-green))))
   `(whitespace-newline          ((,srcery-class (:background nil :foreground ,srcery-green))))
   `(whitespace-space            ((,srcery-class (:background nil :foreground ,srcery-gray4))))
   `(whitespace-space-after-tab  ((,srcery-class (:background nil :foreground ,srcery-yellow))))
   `(whitespace-space-before-tab ((,srcery-class (:background nil :foreground ,srcery-yellow))))
   `(whitespace-tab              ((,srcery-class (:background nil))))
   `(whitespace-trailing         ((,srcery-class (:background ,srcery-red :foreground ,srcery-bright-orange))))

;;;;; other, need more work
   `(ac-completion-face                      ((,srcery-class (:underline t :foreground ,srcery-red))))
   `(ffap                                    ((,srcery-class (:foreground ,srcery-bright-white))))
   `(flx-highlight-face                      ((,srcery-class (:foreground ,srcery-green :underline nil))))
   `(icompletep-determined                   ((,srcery-class :foreground ,srcery-red)))
   `(js2-external-variable                   ((,srcery-class (:foreground ,srcery-green))))
   `(js2-function-param                      ((,srcery-class (:foreground ,srcery-bright-magenta))))
   `(js2-jsdoc-html-tag-delimiter            ((,srcery-class (:foreground ,srcery-bright-green))))
   `(js2-jsdoc-html-tag-name                 ((,srcery-class (:foreground ,srcery-red))))
   `(js2-jsdoc-value                         ((,srcery-class (:foreground ,srcery-bright-green))))
   `(js2-private-function-call               ((,srcery-class (:foreground ,srcery-bright-magenta))))
   `(js2-private-member                      ((,srcery-class (:foreground ,srcery-bright-white))))
   `(js3-error-face                          ((,srcery-class (:underline ,srcery-bright-orange))))
   `(js3-external-variable-face              ((,srcery-class (:foreground ,srcery-blue))))
   `(js3-function-param-face                 ((,srcery-class (:foreground ,srcery-red))))
   `(js3-instance-member-face                ((,srcery-class (:foreground ,srcery-bright-magenta))))
   `(js3-jsdoc-tag-face                      ((,srcery-class (:foreground ,srcery-red))))
   `(js3-warning-face                        ((,srcery-class (:underline ,srcery-red))))
   `(slime-repl-inputed-output-face          ((,srcery-class (:foreground ,srcery-green))))
   `(trailing-whitespace                     ((,srcery-class :foreground nil :background ,srcery-red)))
   `(undo-tree-visualizer-current-face       ((,srcery-class :foreground ,srcery-red)))
   `(undo-tree-visualizer-default-face       ((,srcery-class :foreground ,srcery-bright-white)))
   `(undo-tree-visualizer-register-face      ((,srcery-class :foreground ,srcery-green)))
   `(undo-tree-visualizer-unmodified-face    ((,srcery-class :foreground ,srcery-blue)))
   `(undo-tree-visualizer-active-branch-face ((,srcery-class :foreground ,srcery-bright-magenta)))
   `(persp-face-lighter-buffer-not-in-persp  ((,srcery-class :background ,srcery-red :foreground ,srcery-bright-white)))
   `(pulse-highlight-face                    ((,srcery-class :background ,srcery-green :foreground ,srcery-black)))
   `(pulse-highlight-start-face              ((,srcery-class :background ,srcery-bright-green :foreground ,srcery-black)))
   `(custom-invalid                          ((,srcery-class :background ,srcery-bright-red :foreground ,srcery-bright-white)))
   )
  (custom-theme-set-variables
   'srcery
   `(ansi-color-names-vector [,srcery-black ,srcery-red ,srcery-green ,srcery-yellow ,srcery-blue ,srcery-magenta ,srcery-cyan ,srcery-white])
   `(hl-paren-colors '(,srcery-bright-white ,srcery-green ,srcery-blue ,srcery-white))))
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'srcery)
(provide 'srcery-theme)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; srcery-theme.el ends here
