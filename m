Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D521746FE
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 08:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0780086D39;
	Thu, 25 Jul 2019 06:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d0fkOne5rcjl; Thu, 25 Jul 2019 06:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EF9A86CDB;
	Thu, 25 Jul 2019 06:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2CF91BF59B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF0BD86153
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqezT7H-bRIO for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 06:17:09 +0000 (UTC)
X-Greylist: delayed 00:05:59 by SQLgrey-1.7.6
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8992B86197
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 06:17:08 +0000 (UTC)
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 9F8222979437_D3947F9B;
 Thu, 25 Jul 2019 06:11:05 +0000 (GMT)
Received: from willempc.meraka.csir.co.za (unknown [146.64.217.138])
 by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
 228D22978B73_D3947F9F; Thu, 25 Jul 2019 06:11:05 +0000 (GMT)
Received: from [127.0.0.1] (helo=localhost)
 by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
 (envelope-from <wvdwalt@csir.co.za>)
 id 1hqWy0-0002Y8-VE; Thu, 25 Jul 2019 08:11:05 +0200
Date: Thu, 25 Jul 2019 08:11:04 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
In-Reply-To: <20190725035352.GA7717@gregn.net>
Message-ID: <alpine.DEB.2.21.1.1907250724490.6623@willempc.meraka.csir.co.za>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com> <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function> <20190713004623.GA9159@gregn.net>
 <20190725035352.GA7717@gregn.net>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christopher Brannon <chris@the-brannons.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
I have added a few things inline in Greg's message, mainly regarding the 
bleeps and cursor_time.
FWIW, Willem

On Wed, 24 Jul 2019, Gregory Nowak wrote:

> [The e-mail server of the sender could not be verified (SPF Record)]
>
> On Fri, Jul 12, 2019 at 05:46:23PM -0700, Gregory Nowak wrote:
>> On Fri, Jul 12, 2019 at 11:23:19AM +0200, Samuel Thibault wrote:
>>> Hello,
>>>
>>> To readers of the linux-speakup: could you help on this so we can get
>>> Speakup in mainline?  Neither Okash or I completely know what user
>>> consequences the files in /sys/accessibility/speakup/ have, so could
>>> people give brief explanations for each file (something like 3-6 lines
>>> of explanation)?
>>
>> I have a recollection of documenting most of this on the speakup list
>> in response to a similar query a number of years ago. Unfortunately,
>> the speakup mailing list archives aren't easily searchable, and I
>> don't have a local copy of that mail.
>>
>> Kirk, doing grep with a few of the file names in
>> /sys/accessibility/speakup against the list's mbox file archive should
>> find that message if it's in fact there. If you can please find it,
>> and post the date when it was sent, we can provide a URL to that
>> thread as a starting point. If my recollection is wrong, and such a
>> message isn't in the archives, I'll write up what I know about.
>
> I've located the message I was thinking of in the archives, but that
> describes some speakup key commands, not
> /sys/accessibility/speakup. So, here's what I know, and hopefully
> someone else can fill in the rest.
>
> attrib_bleep
> Beeps the PC speaker when there is an attribute change such as
> foreground or background color when using speakup review commands. One
> = on, zero = off. I'm not currently at a machine with a working PC
> speaker, so can't test this right now.
>
> bell_pos
> As far as I know, this works much like a typewriter bell. If for
> example 72 is echoed to bell_pos, it will beep the PC speaker when
> typing on a line past character 72. Again, no PC speaker at the moment
> here, so can't actually test this.
Yes, it works as you  say, a verry short beep happens at the echoed 
position.
>
> bleeps
> Not 100% sure, but I believe this controls whether one hears beeps
> through the PC speaker when using speakup's review commands. If no one
> jumps in on this, I'll experiment when at a machine with a working PC
> speaker, and will reply back with details.
>
Yes, when 0 is echoed to /sys/accessibility/speakup/bleeps, review beeps 
stop. the default seem to be 3, so I suppose it controls more than just on 
or off. When set to zero, the bell still sounds when, e.g. in a terminal 
at a bash prompt, one press backspace.
  > bleep_time
> Again, not 100% sure, but I believe this controls the duration of the
> PC speaker beeps speakup produces. I'm not sure of the units this is
> in either, possibly jiffys. I'll come back with more details on this
> one if no one else does.
Yes, it seems to control the time as you say, verry small units though.
It was 30 and I could set it to 180, but  not 360. At 180, the bleeps are 
clearly a little longer, but not much.

>
> cursor_time
> Don't know.
As far as I know, one can set cursor_time to a higher value when working 
e.g. over a slow connection.
When a connection is very slow, with the default setting, when moving with 
the arrows, or backspacing etc. speakup says the incorrect characters.
I am not 100% sure though, but seem to recall having used such a setting 
in the past when working over dialup.

>
> delimiters
> Don't know. I've tried echoing various characters to this and looking
> for differences when reviewing the screen, but no luck.
>
> ex_num
> Don't know.
>
> key_echo
> Controls if speakup speaks keys when they are typed. One = on, zero =
> off or don't echo keys.
>
> keymap
> I believe this is the currently active kernel keymap. I'm not sure of
> the format, probably what dumpkeys(1) and showkey(1) use. Echoing
> different values here should allow for remapping speakup's review
> commands besides remapping the keyboard as a whole.
>
> no_interrupt
> Controls if typing interrupts output from speakup. With no_interrupt
> set to zero, typing on the keyboard will interrupt speakup if for
> example the say screen command is used before the entire screen is
> read. With no_interrupt set to one, if the say screen command is used,
> and one then types on the keyboard, speakup will continue to say the
> whole screen regardless until it finishes.
>
> punc_all
> This is a list of all the punctuation speakup should speak when
> punc_level is set to four.
>
> punc_level
> Controls the level of punctuation spoken as the screen is displayed,
> not reviewed. Levels range from zero no punctuation, to four, all
> punctuation. As far as I can tell, one corresponds to punc_some, two
> corresponds to punc_most, and three as well as four seem to both
> correspond to punc_all, though I do stand to be corrected. I am using
> the soft synthesizer driver, so it is possible that some hardware
> synthesizers have different levels each corresponding to three and four
> for punc_level. Also note that if punc_level is set to zero, and
> key_echo is set to one, typed punctuation is still spoken as it is
> typed.
>
> punc_most
> This is a list of all the punctuation speakup should speak when
> punc_level is set to two.
>
> punc_some
> This is a list of all the punctuation speakup should speak when
> punc_level is set to one.
>
> reading_punc
> Almost the same as punc_level, the differences being that reading_punc controls
> the level of punctuation when reviewing the screen with speakup's
> screen review commands. The other difference is that reading_punc set
> to three speaks punc_all, and reading_punc set to four speaks all
> punctuation, including spaces.
>
> repeats
> a list of characters speakup repeats. Normally, when there are
> more than three characters in a row, speakup just reads three of those
> characters. For example, "......" would be read as dot, dot, dot. If a
> . is added to the list of characters in repeats, "......" would be
> read as dot, dot, dot, times six.
>
> say_control
> If set to one, speakup speaks shift, alt and control when those keys are
> pressed. Perhaps more keys are spoken, but those three are the ones I
> found. If say_control is set to zero, shift, ctrl, and alt are not
> spoken when they are pressed.
>
> say_word_ctl
> Don't know.
>
> silent
> Don't know.
>
> spell_delay
> As far as I can tell, this controls how fast a word is spelled when
> speakup's say word review command is pressed twice quickly to speak
> the current word being reviewed. Zero just speaks the letters one
> after another, while values one through four seem to introduce more of
> a pause between the spelling of each letter by speakup.
>
> synth
> Gets or sets the synthesizer driver currently in use. Reading synth
> returns the synthesizer driver currently in use. Writing synth
> switches to the given synthesizer driver, provided it is either built
> into the kernel, or already loaded as a module.
>
> synth_direct
> Sends whatever is written to synth_direct
> directly to the speech synthesizer in use, bypassing speakup. This
> could be used to make the synthesizer speak a string, or to send
> control sequences to the synthesizer to change how the synthesizer
> behaves.
>
> version
> Reading version returns the version of speakup, and the version of the
> synthesizer driver currently in use.
>
> Synthesizer Driver Parameters
> In /sys/accessibility/speakup is a directory corresponding to the
> synthesizer driver currently in use (E.G) soft for the soft
> driver. This directory contains files which control the speech
> synthesizer itself, as opposed to controlling the speakup screen
> reader. As far as I know, the parameters in this directory have the
> same names and functions across all supported synthesizers. Also as
> far as I know, the range of values for freq, pitch, rate, and vol is
> the same for all supported synthesizers,
> with the given range being internally mapped by the driver to more or
> less fit the range of values supported for a given parameter by the
> individual synthesizer. I will below describe the values and
> parameters for the soft synthesizer, which I believe is the
> synthesizer currently most commonly in use.
>
> caps_start
> I believe this is the string that is sent to the synthesizer to cause
> it to start speaking uppercase letters. For the soft synthesizer and
> most others, this causes the pitch of the voice to rise above the
> currently set pitch.
>
> caps_stop
> I believe this is the string sent to the synthesizer to cause it to
> stop speaking uppercase letters. In the case of the soft synthesizer
> and most others, this returns the pitch of the voice down to the
> currently set pitch.
>
> delay_time
> Don't know.
>
> direct
> Controls if punctuation is spoken by speakup, or by the
> synthesizer. For example, speakup speaks ">" as "greater", while the
> espeak synthesizer used by the soft driver speaks "greater than". Zero
> lets speakup speak the punctuation. One lets the synthesizer itself
> speak punctuation.
>
> freq
> Gets or sets the frequency of the speech synthesizer. Range is 0-9.
>
> full_time
> Don't know.
>
> jiffy_delta
> As far as I know, this controls how many jiffys the kernel gives to
> the synthesizer. I seem to recall Kirk saying that setting this too
> high can make a system unstable, or even crash it.
>
> pitch
> Gets or sets the pitch of the synthesizer. The range is 0-9.
>
> punct
> Gets or sets the amount of punctuation spoken by the synthesizer. The
> range for the soft driver seems to be 0-2. I'm not exactly sure how
> this relates to speakup's punc_level, or reading_punc
>
> rate
> Gets or sets the rate of the synthesizer. Range is from zero slowest,
> to nine fastest.
>
> tone
> Gets or sets the tone of the speech synthesizer. The range for the
> soft driver seems to be 0-2. This seems to make no difference if using
> espeak and the espeakup connector. I'm not sure even if espeakup
> supports different tonalities.
>
> trigger_time
> Don't know.
>
> voice
> Gets or sets the voice used by the synthesizer if the synthesizer can
> speak in more than one voice. The range for the soft driver is
> 0-7. Note that while espeak supports multiple voices, this parameter
> will not set the voice when the espeakup connector is used between
> speakup and espeak.
>
> vol
> Gets or sets the volume of the speech synthesizer. Range is 0-9, with
> zero being the softest, and nine being the loudest.
>
> Additions, clarifications, and corrections are welcome and
> appreciated.
>
> Greg
>
>
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
