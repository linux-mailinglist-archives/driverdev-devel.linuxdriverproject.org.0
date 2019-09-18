Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB4FB5929
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 03:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E722D84181;
	Wed, 18 Sep 2019 01:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0jC5U7x316e; Wed, 18 Sep 2019 01:04:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A251085E60;
	Wed, 18 Sep 2019 01:04:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75D711BF400
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 01:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72FD120498
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 01:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLSq8mXIEPQ3 for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 01:03:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by silver.osuosl.org (Postfix) with ESMTPS id 1387F20461
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 01:03:56 +0000 (UTC)
Received: from vbox.gregn.net (unknown
 [IPv6:2001:470:d:6c5:d160:a7bd:83cb:f0e0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 85D43C7D;
 Tue, 17 Sep 2019 18:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1568768674; bh=M4CRdn4a+6tBBU/aHmbM1LUvA1hKXk0WFMnBz0gNlbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UaRpdxCbdEIupohYfft4/Q8D6j6+90fIWsXvfyU9GrMhepSLfg7eq2lrmT/0tBwfd
 MtR4VjpGCruwBUbniJkUXi6S/VtCZgaIQJ6cT58mL/a/xvQIDitzTo+uvVTO+NvaeC
 m3iP8mxP5nu/csoRctcslWMcfy2Ep4Af/uTKdbs0YjmfD/FAXsLzHXBxTnFG0M2VAV
 ePPd7PSMd8PwZ+hh9mS6dpmKcxKMq8W+czXWPtneemo4j1R+2390FJpDh1DkFc7lw2
 u5AMz9Ae8+FjrDuG83qS6t4nkYxSZw3cpDm7h19hfbIW27ayuO+vd5s03x58H9agj7
 TpNKhEMXpqaRA==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>)
 id 1iAONt-0002ys-TT; Tue, 17 Sep 2019 18:03:53 -0700
Date: Tue, 17 Sep 2019 18:03:53 -0700
From: Gregory Nowak <greg@gregn.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190918010351.GA10455@gregn.net>
References: <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
 <20190916141100.GA1595107@kroah.com>
 <20190916223848.GA8679@gregn.net>
 <20190917080118.GC2075173@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
In-Reply-To: <20190917080118.GC2075173@kroah.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.101.4 at vserver
X-Virus-Status: Clean
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 okash.khawaja@gmail.com,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 17, 2019 at 10:01:18AM +0200, Greg Kroah-Hartman wrote:
> On Mon, Sep 16, 2019 at 03:38:48PM -0700, Gregory Nowak wrote:
> > On Mon, Sep 16, 2019 at 04:11:00PM +0200, Greg Kroah-Hartman wrote:
> > > On Mon, Sep 16, 2019 at 03:47:28PM +0200, Samuel Thibault wrote:
> > > > Okash Khawaja, le dim. 15 sept. 2019 19:41:30 +0100, a ecrit:
> > > > > I have attached the descriptions.
> > > > 
> > > > Attachment is missing :)
> > > 
> > > I saw it :)
> > > 
> > > Anyway, please put the Description: lines without a blank after that,
> > > with the description text starting on that same line.
> > > 
> > > thanks!
> > > 
> > > greg k-h
> > 
> > It's attached. Hope the indentation is OK.
> 
> Alignment is a bit off, you forgot a tab after "Description:"
> 
> And you have some trailing whitespace in the document :(
> 
> thanks,
> 
> greg k-h
> 

I put in the tabs after "Description:" and did the best I could to fix
the alignment, and to find and get rid of the white space. If the
alignment is still off, or if there is still white space I missed,
could someone else please correct that? Thanks.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=sysfs-driver-speakup

What:		/sys/accessibility/speakup/attrib_bleep
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Beeps the PC speaker when there is an attribute change such as
		foreground or background color when using speakup review 
		commands. One = on, zero = off.
What:		/sys/accessibility/speakup/bell_pos
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This works much like a typewriter bell. If for example 72 is 
		echoed to bell_pos, it will beep the PC speaker when typing on
		a line past character 72.
What:		/sys/accessibility/speakup/bleeps
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls whether one hears beeps through the PC speaker
		when using speakup's review commands.
		TODO: what values does it accept?
What:		/sys/accessibility/speakup/bleep_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls the duration of the PC speaker beeps speakup
		produces.
		TODO: What are the units? Jiffies?
What:		/sys/accessibility/speakup/cursor_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls cursor delay when using arrow keys. When a
		connection is very slow, with the default setting, when moving
		with  the arrows, or backspacing etc. speakup says the incorrect
		characters. Set this to a higher value to adjust for the delay
		and better synchronisation between cursor position and speech.
What:		/sys/accessibility/speakup/delimiters
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Delimit a word from speakup.
		TODO: add more info
What:		/sys/accessibility/speakup/ex_num
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/key_echo
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if speakup speaks keys when they are typed. One = on,
		zero = off or don't echo keys.
What:		/sys/accessibility/speakup/keymap
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Speakup keymap remaps keys to Speakup functions.
		It uses a binary
		format. A special program called genmap is needed to compile a
		textual  keymap into the binary format which is then loaded into
		/sys/accessibility/speakup/keymap.
What:		/sys/accessibility/speakup/no_interrupt
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if typing interrupts output from speakup. With
		no_interrupt set to zero, typing on the keyboard will interrupt
		speakup if for example
		the say screen command is used before the
		entire screen  is read.
		With no_interrupt set to one, if the say
		screen command is used, and one then types on the keyboard,
		speakup will continue to say the whole screen regardless until
		it finishes.
What:		/sys/accessibility/speakup/punc_all
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to four.
What:		/sys/accessibility/speakup/punc_level
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls the level of punctuation spoken as the screen is
		displayed, not reviewed. Levels range from zero no punctuation,
		to four, all punctuation. One corresponds to punc_some, two
		corresponds to punc_most, and three as well as four both
		correspond to punc_all. Some hardware synthesizers may have
		different levels each corresponding to  three and four for
		punc_level. Also note that if punc_level is set to zero, and
		key_echo is set to one, typed punctuation is still spoken as it
		is typed.
What:		/sys/accessibility/speakup/punc_most
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to two.
What:		/sys/accessibility/speakup/punc_some
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is a list of all the punctuation speakup should speak when
		punc_level is set to one.
What:		/sys/accessibility/speakup/reading_punc
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Almost the same as punc_level, the differences being that
		reading_punc controls the level of punctuation when reviewing
		the screen with speakup's screen review commands. The other
		difference is that reading_punc set to three speaks punc_all,
		and reading_punc set to four speaks all punctuation, including
		spaces.
What:		/sys/accessibility/speakup/repeats
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	A list of characters speakup repeats. Normally, when there are
		more than three characters in a row, speakup
		just reads three of
		those characters. For example, "......" would be read as dot,
		dot, dot. If a . is added to the list of characters in repeats,
		"......" would be read as dot, dot, dot, times six.
What:		/sys/accessibility/speakup/say_control
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	If set to one, speakup speaks shift, alt and control when those
		keys are pressed. If say_control is set to zero, shift, ctrl,
		and alt are not spoken when they are pressed.
What:		/sys/accessibility/speakup/say_word_ctl
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/silent
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/spell_delay
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls how fast a word is spelled
		when speakup's say word
		review command is pressed twice quickly to speak the current
		word being reviewed. Zero just speaks the letters one after
		another, while values one through four
		seem to introduce more of
		a pause between the spelling of each letter by speakup.
What:		/sys/accessibility/speakup/synth
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the synthesizer driver currently in use. Reading
		synth returns the synthesizer driver currently in use. Writing
		synth switches to the given synthesizer driver, provided it is
		either built into the kernel, or already loaded as a module.
What:		/sys/accessibility/speakup/synth_direct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Sends whatever is written to synth_direct
		directly to the speech synthesizer in use, bypassing speakup.
		This could be used to make the synthesizer speak
		a string, or to
		send control sequences to the synthesizer to change how the
		synthesizer behaves.
What:		/sys/accessibility/speakup/version
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Reading version returns the version of speakup, and the version
		of the synthesizer driver currently in use.
What:		/sys/accessibility/speakup/i18n/announcements
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This file contains various general announcements, most of which
		cannot be categorized.  You will find messages such as "You
		killed Speakup", "I'm alive", "leaving help", "parked",
		"unparked", and others. You will also find the names of the
		screen edges and cursor tracking modes here.
What:		/sys/accessibility/speakup/i18n/chartab
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO
What:		/sys/accessibility/speakup/i18n/ctl_keys
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Here, you will find names of control keys.  These are used with
		Speakup's say_control feature.
What:		/sys/accessibility/speakup/i18n/function_names
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Here, you will find a list of names for Speakup functions.
		These are used by the help system.  For example, suppose that
		you have activated help mode, and you pressed
		keypad 3.  Speakup
		says: "keypad 3 is character, say next."
		The message "character, say next" names a Speakup function, and
		it comes from this function_names file.
What:		/sys/accessibility/speakup/i18n/states
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This file contains names for key states.
		Again, these are part of the help system.  For instance, if you
		had pressed speakup + keypad 3, you would hear:
		"speakup keypad 3 is go to bottom edge."
		The speakup key is depressed, so the name of the key state is
		speakup.
		This part of the message comes from the states collection.
What:		/sys/accessibility/speakup/i18n/characters
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Through this sys entry, Speakup gives you the ability to change
		how Speakup pronounces a given character. You could, for
		example, change how some punctuation characters are spoken. You
		can even change how Speakup will pronounce certain letters. For
		further details see '12.  Changing the Pronunciation of
		Characters' in Speakup User's Guide (file spkguide.txt in
		source).
What:		/sys/accessibility/speakup/i18n/colors
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	When you use the "say attributes" function, Speakup says the
		name of the foreground and background colors.  These names come
		from the i18n/colors file.
What:		/sys/accessibility/speakup/i18n/formatted
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This group of messages contains embedded formatting codes, to
		specify the type and width of displayed data.  If you change
		these, you must preserve all of the formatting codes, and they
		must appear in the order used by the default messages.
What:		/sys/accessibility/speakup/i18n/key_names
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Again, key_names is used by Speakup's help system.  In the
		previous example, Speakup said that you pressed "keypad 3."
		This name came from the key_names file.
What:		/sys/accessibility/speakup/<synth-name>/
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	In `/sys/accessibility/speakup` is a directory corresponding to
		the synthesizer driver currently in use (E.G) `soft` for the
		soft driver. This directory contains files which control the
		speech synthesizer itself,
		as opposed to controlling the speakup
		screen reader. The parameters in this directory have the same
		names and functions across all
		supported synthesizers. The range
		of values for freq, pitch, rate, and vol is the same for all
		supported synthesizers, with the given range being internally
		mapped by the driver to  more or less fit the range of values
		supported for a given parameter by the individual synthesizer.
		Below is a description of values and  parameters for soft
		synthesizer, which is currently the most commonly used.
What:		/sys/accessibility/speakup/soft/caps_start
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is the string that is sent to the synthesizer to cause it
		to start speaking uppercase letters. For the soft synthesizer
		and most others, this causes the pitch of the voice to rise
		above the currently set pitch.
What:		/sys/accessibility/speakup/soft/caps_stop
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This is the string sent to the synthesizer to cause it to stop
		speaking uppercase letters. In the case of the soft synthesizer
		and most others, this returns the pitch of the voice
		down to the
		currently set pitch.
What:		/sys/accessibility/speakup/soft/delay_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/direct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Controls if punctuation is spoken by speakup, or by the
		synthesizer.
		For example, speakup speaks ">" as "greater", while
		the espeak synthesizer used by the soft driver speaks "greater
		than". Zero lets speakup speak the punctuation. One lets the
		synthesizer itself speak punctuation.
What:		/sys/accessibility/speakup/soft/freq
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the frequency of the speech synthesizer. Range is
		0-9.
What:		/sys/accessibility/speakup/soft/full_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/jiffy_delta
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	This controls how many jiffys the kernel gives to the
		synthesizer. Setting this too high can make a system unstable,
		or even crash it.
What:		/sys/accessibility/speakup/soft/pitch
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the pitch of the synthesizer. The range is 0-9.
What:		/sys/accessibility/speakup/soft/punct
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the amount of punctuation spoken by the
		synthesizer. The range for the soft driver seems to be 0-2.
		TODO: How is this related to speakup's punc_level, or
		reading_punc.
What:		/sys/accessibility/speakup/soft/rate
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the rate of the synthesizer. Range is from zero
		slowest, to nine fastest.
What:		/sys/accessibility/speakup/soft/tone
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the tone of the speech synthesizer. The range for
		the soft driver seems to be 0-2. This seems to make no
		difference if using espeak and the espeakup connector.
		TODO: does espeakup support different tonalities?
What:		/sys/accessibility/speakup/soft/trigger_time
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	TODO:
What:		/sys/accessibility/speakup/soft/voice
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the voice used by the synthesizer if the
		synthesizer can speak in more than one voice. The range for the
		soft driver is 0-7. Note that while espeak supports multiple
		voices, this parameter will not set the voice when the espeakup
		connector is used  between speakup and espeak.
What:		/sys/accessibility/speakup/soft/vol
KernelVersion:	2.6
Contact:	speakup@linux-speakup.org
Description:	Gets or sets the volume of the speech synthesizer. Range is 0-9,
		with zero being the softest, and nine being the loudest.

--huq684BweRXVnRxX
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--huq684BweRXVnRxX--
