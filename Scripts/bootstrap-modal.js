﻿/* =========================================================
* bootstrap-modal.js v2.0.0
* http://twitter.github.com/bootstrap/javascript.html#modal
* =========================================================
* Copyright 2011 Twitter, Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
* ========================================================= */


!function ($) {

    "use strict"

    /* MODAL CLASS DEFINITION
    * ====================== */

    var Modal = function (content, options) {
        this.options = $.extend({}, $.fn.modal.defaults, options)
        this.$element = $(content)
      .delegate('[data-dismiss="modal"]', 'click.dismiss.modal', $.proxy(this.hide, this))
    }

    Modal.prototype = {

        constructor: Modal

    , toggle: function () {
        return this[!this.isShown ? 'show' : 'hide']()
    }

    , show: function () {
        var that = this

        if (this.isShown) return

        this.isShown = true
        this.$element.trigger('show')

        escape.call(this)
        backdrop.call(this, function () {
            var transition = $.support.transition && that.$element.hasClass('fade')

            that.$element
            .appendTo(document.body)
            .show()

            if (transition) {
                that.$element[0].offsetWidth // force reflow
            }

            that.$element.addClass('in')

            transition ?
            that.$element.one($.support.transition.end, function () { that.$element.trigger('shown') }) :
            that.$element.trigger('shown')

        })
    }

    , hide: function (e) {
        e && e.preventDefault()

        if (!this.isShown) return

        var that = this
        this.isShown = false

        escape.call(this)

        this.$element
          .trigger('hide')
          .removeClass('in')

        $.support.transition && this.$element.hasClass('fade') ?
          hideWithTransition.call(this) :
          hideModal.call(this)
    }

    }


    /* MODAL PRIVATE METHODS
    * ===================== */

    function hideWithTransition() {
        var that = this
      , timeout = setTimeout(function () {
          that.$element.off($.support.transition.end)
          hideModal.call(that)
      }, 500)

        this.$element.one($.support.transition.end, function () {
            clearTimeout(timeout)
            hideModal.call(that)
        })
    }

    function hideModal(that) {
        this.$element
      .hide()
      .trigger('hidden')

        backdrop.call(this)
    }

    function backdrop(callback) {
        var that = this
      , animate = this.$element.hasClass('fade') ? 'fade' : ''

        if (this.isShown && this.options.backdrop) {
            var doAnimate = $.support.transition && animate

            this.$backdrop = $('<div class="modal-backdrop ' + animate + '" />')
        .appendTo(document.body)

            if (this.options.backdrop != 'static') {
                this.$backdrop.click($.proxy(this.hide, this))
            }

            if (doAnimate) this.$backdrop[0].offsetWidth // force reflow

            this.$backdrop.addClass('in')

            doAnimate ?
        this.$backdrop.one($.support.transition.end, callback) :
        callback()

        } else if (!this.isShown && this.$backdrop) {
            this.$backdrop.removeClass('in')

            $.support.transition && this.$element.hasClass('fade') ?
        this.$backdrop.one($.support.transition.end, $.proxy(removeBackdrop, this)) :
        removeBackdrop.call(this)

        } else if (callback) {
            callback()
        }
    }

    function removeBackdrop() {
        this.$backdrop.remove()
        this.$backdrop = null
    }

    function escape() {
        var that = this
        if (this.isShown && this.options.keyboard) {
            $(document).on('keyup.dismiss.modal', function (e) {
                e.which == 27 && that.hide()
            })
        } else if (!this.isShown) {
            $(document).off('keyup.dismiss.modal')
        }
    }


    /* MODAL PLUGIN DEFINITION
    * ======================= */

    $.fn.modal = function (option) {
        return this.each(function () {
            var $this = $(this)
        , data = $this.data('modal')
        , options = typeof option == 'object' && option
            if (!data) $this.data('modal', (data = new Modal(this, options)))
            if (typeof option == 'string') data[option]()
            else data.show()
        })
    }

    $.fn.modal.defaults = {
        backdrop: true
    , keyboard: true
    }

    $.fn.modal.Constructor = Modal


    /* MODAL DATA-API
    * ============== */

    $(function () {
        $('body').on('click.modal.data-api', '[data-toggle="modal"]', function (e) {
            var $this = $(this)
        , $target = $($this.attr('data-target') || $this.attr('href'))
        , option = $target.data('modal') ? 'toggle' : $.extend({}, $target.data(), $this.data())

            e.preventDefault()
            $target.modal(option)
        })
    })

} (window.jQuery)