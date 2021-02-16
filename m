Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FDC31CC28
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 15:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A01928719A;
	Tue, 16 Feb 2021 14:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ph8myrB62Zqd; Tue, 16 Feb 2021 14:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E9A287182;
	Tue, 16 Feb 2021 14:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0CC1BF5E0
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AD606ED1C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 14:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c47JlVlqx-vx for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 14:38:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D7B626F503; Tue, 16 Feb 2021 14:38:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E65D56ED1C
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 14:38:50 +0000 (UTC)
Received: from bagend.localnet (92-110-45-68.cable.dynamic.v4.ziggo.nl
 [92.110.45.68]) (Authenticated sender: didi.debian@cknow.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 22964100007;
 Tue, 16 Feb 2021 14:38:44 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Tue, 16 Feb 2021 15:38:41 +0100
Message-ID: <17930115.H5U4FefUke@bagend>
Organization: Connecting Knowledge
In-Reply-To: <11208610.7f3IsiomVT@bagend>
References: <3165951.nLcn7dHqa8@bagend>
 <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com> <11208610.7f3IsiomVT@bagend>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============2895227520970066822=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2895227520970066822==
Content-Type: multipart/signed; boundary="nextPart4652306.3r05hgNpEz"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart4652306.3r05hgNpEz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org, Stefan Wahren <stefan.wahren@i2se.com>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Tue, 16 Feb 2021 15:38:41 +0100
Message-ID: <17930115.H5U4FefUke@bagend>
Organization: Connecting Knowledge
In-Reply-To: <11208610.7f3IsiomVT@bagend>
References: <3165951.nLcn7dHqa8@bagend> <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com> <11208610.7f3IsiomVT@bagend>

On dinsdag 16 februari 2021 01:12:12 CET Diederik de Haas wrote:
> On maandag 8 februari 2021 13:22:56 CET Stefan Wahren wrote:
> > Currently i cannot see any of the fixes by Phil
> > Elwell in linux-stable. Maybe they won't apply and needs to be backport
> > manually.
> > 
> > Just for reference here are the revelant patches:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit
> > /d
> > rivers/staging/vc04_services?h=next-20210205&id=96ae327678eceabf455b11a88
> > ba1 4ad540d4b046
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit
> > /d
> > rivers/staging/vc04_services?h=next-20210205&id=88753cc19f087abe0d39644b8
> > 44e 67a59cfb5a3d
> > 
> > Could you please try?

I've cherry-picked both patches on top of 5.10.16 and they apply cleanly.
 
> I've now successfully build and booted a 5.10.16 kernel 'pristine' and with
> the above mentioned patches.
> In the 'pristine' variant, I had the same bad/horrible quality as I
> experienced with Debian's 5.10 kernels.
> The 'patched' variant seems to be a tad better, but didn't completely solve
> the audio problem. There's still some noise intermixed with the music and
> other artifacts, but I'm inclined to think it's not as horrible as before.
> 
> I'll do some more hearing tests tomorrow when I'm fresh again, but figured
> I'd share these preliminary results already.

It may have been wishful thinking. 
If there is a difference then isn't big like night and day that would make 
sound play properly. 
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=935456#33 also mentions
that digital audio is not working on arm64, but does work with armhf.

What is bloody annoying is that the sequence of the sound cards keep 
switching, which in turn means I have to check the config and enable or 
disable the settings in /etc/asound.conf to make ALSA use the ALSA card.
The net result is that instead of being able to compare the sounds within 
(say) 1 minute, it takes 3 minutes, 'just' too long to (easily) compare.

diederik@rpi-mpd:~$ aplay -l
**** List of PLAYBACK Hardware Devices ****
card 0: vc4hdmi [vc4-hdmi], device 0: MAI PCM vc4-hdmi-hifi-0 [MAI PCM vc4-hdmi-hifi-0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 1: ALSA [bcm2835 ALSA], device 0: bcm2835 ALSA [bcm2835 ALSA]
  Subdevices: 6/7
  Subdevice #0: subdevice #0
  Subdevice #1: subdevice #1
  Subdevice #2: subdevice #2
  Subdevice #3: subdevice #3
  Subdevice #4: subdevice #4
  Subdevice #5: subdevice #5
  Subdevice #6: subdevice #6
card 1: ALSA [bcm2835 ALSA], device 1: bcm2835 IEC958/HDMI [bcm2835 IEC958/HDMI]
  Subdevices: 1/1
  Subdevice #0: subdevice #0

My rpi-mpd device is connected to my multichannel audio capable AV receiver. 
Is one of these cards capable of just passing through the bitstream? 
If so, which. And how?


--nextPart4652306.3r05hgNpEz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEf+PJh5LtCd6LDwjYE45BkVx+/tYFAmAr2PEACgkQE45BkVx+
/tZTNg/+KsuFJqyAIfkA4CWJ+J+0eI5Oz4NmEBBRRlU7Rzu7NU7WARMAO2KT5twH
hC03EQpJwtrvhvNVym3jhiODgvwPTIIEloAGYwY8n83SKdlLhkz/xZbApNHoAvOm
aQMOakIuFqU6HGMPR1o7SbiFIiYwc8dDGcbuPVtoY8JIokStpubGemRKLIMtfVA2
IuW0uOva3gyeI+uemXjMlVIWa7mkA16pUcqQBqYEu3riKeMiEvc9IL4NpIOR1rLV
LeolvPK/8UDZ2/qxwW8D8qB9sxOjEJJ1LY4TYBsxvCFrTTrwyD8peS3aCLRvK237
E0AhA/W9T2af2Wk6hFO7hifsz/vUrMPynKiMyng41m4xoI4HDcYMVw9/+muzkAx5
PcNEyrna752XIxmziXhSfy17SQ+0YMnk/NJMeV0SVij3mTlkuJKZUP9nfHXT0gt3
TMIS9qeDxT++mXX/iARAgNy0cAHRzK6zpR2JIHNomBfosHDO9N0EvnH9vfwyOHdY
+h7Ot0lQ85pAJVUoso/cCN7h+WpuJD6uJVFvj7KsMJTYmTxEJWsO+nqbRuDECXIk
urR2jLAiL+zmRVV7MOFKqXCP8DocX1J6mioH6V6D+HSc+0l3iqZNpMsFfiEiRF3Z
2s/bbCnWL4MOEoKXbsh7sUX2immMKmPu/xcSHMPq2rQ1s/tKpeA=
=cJ1B
-----END PGP SIGNATURE-----

--nextPart4652306.3r05hgNpEz--




--===============2895227520970066822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2895227520970066822==--



