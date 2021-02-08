Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7EB31335E
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 14:34:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19E52867F7;
	Mon,  8 Feb 2021 13:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdcyzAokHk6E; Mon,  8 Feb 2021 13:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 079C3867C0;
	Mon,  8 Feb 2021 13:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCFA1BF39C
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 942E086FE8
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dcgy8QmWy+C1 for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 13:34:00 +0000 (UTC)
X-Greylist: delayed 00:31:59 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47D7886FBB
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 13:34:00 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (unknown [217.70.183.195])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 7D55C3C86E5
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 12:50:50 +0000 (UTC)
X-Originating-IP: 92.110.45.68
Received: from bagend.localnet (92-110-45-68.cable.dynamic.v4.ziggo.nl
 [92.110.45.68]) (Authenticated sender: didi.debian@cknow.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 6800B60007;
 Mon,  8 Feb 2021 12:50:39 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Mon, 08 Feb 2021 13:50:39 +0100
Message-ID: <4138983.jq09TEf7Ks@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
References: <3165951.nLcn7dHqa8@bagend>
 <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============0929627743599684306=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0929627743599684306==
Content-Type: multipart/signed; boundary="nextPart2469665.2WxzA1PoCY"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2469665.2WxzA1PoCY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org, devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Mon, 08 Feb 2021 13:50:39 +0100
Message-ID: <4138983.jq09TEf7Ks@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
References: <3165951.nLcn7dHqa8@bagend> <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>

On maandag 8 februari 2021 13:22:56 CET Stefan Wahren wrote:
> > TL;DR: I have a RPi 3B+ running pure Debian Bullseye arm64 (~from
> > raspi.debian.net), named rpi-mpd, connected via HDMI cable to my AV
> > Receiver.
> can you please confirm that the bcm2835-audio driver causing the issues?

How can I confirm that?

> > Playing music worked fine with kernel 5.9, but with 5.10.2-1 the music
> > (quality) became not good to quite horribly, because of (static) noise and
> > distortion.
> > With kernel version 5.10.9 (linux-image-5.10.0-2-arm64) it all seemed
> > fixed, but returned with 5.10.12 (linux-image-5.10.0-3-arm64) and is also
> > present with 5.10.13.
> 
> I cannot explain why 5.10.9 works for you, but we had multiple
> regressions in 5.10. Currently i cannot see any of the fixes by Phil
> Elwell in linux-stable. Maybe they won't apply and needs to be backport
> manually.

FTR: All the kernel versions I mentioned are the Debian kernel versions (and 
thus also Debian's config).

> Just for reference here are the revelant patches:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/d
> rivers/staging/vc04_services?h=next-20210205&id=96ae327678eceabf455b11a88ba1
> 4ad540d4b046
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/d
> rivers/staging/vc04_services?h=next-20210205&id=88753cc19f087abe0d39644b844e
> 67a59cfb5a3d
> 
> Could you please try?

I'll try. But it may take a while as I don't know how to (properly) do that.
And I'm guessing that building on a RPi3B+ isn't exactly fast. But I assume 
I'm able to 'overcome' all that.
--nextPart2469665.2WxzA1PoCY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEf+PJh5LtCd6LDwjYE45BkVx+/tYFAmAhM58ACgkQE45BkVx+
/tat6hAAt3e7+gJUeeyWnLt/+mPATdOl3b02bRUSgjwffiNNABB6heeQcvrmUTwC
F9FcSqrSZhs+dWb2OsumyroFCPEfxJj0tkmbQHVXxOPZRFl5ogKmnVTSAmThoimB
adNyum9lK+XdlJzowLK1zkGIEGxc8FJodlykFURBdsCZgkinLyDW2JBET1jzaPwp
G8/KsDYBPHWZE/u9faOtLAYBjWln+7YxCrOp8ZkL/Cl+hsbymMcdgOae4+1GSKxv
e0T9NWdaepmk2VaaIwBUNdsW61uhXkvc/mAS61A30rbLqhlD9Pnj2t9l8GlInBNe
pXWCFonF/TItvtMVSdpemc1lWaFWbxfl0xY2eXfNmdtt+jO9/vQOr/gGBpdDZFHr
l4XzW8/p4gPic2rj68mypJCadiPZRxGrkAdhxuMtAQum0NXQIRxLJbypLR0H9vk0
8XZQIr5kbbE2+YC1opDVr9n9dyKtz39LjcQl1/bxftOO5bnnaHbua+MTD1QayJDk
jT2cxlYRGtJ5qmjux3ytlktVNFgpt9vrvhrTtiXtrjItUenAmpD6u3a3I47Ffzwv
8EjWkkQ8RwsG3Dxw2OMoEzdbGTBXXTzpOIZzn66te18SKIuaOAeRBwpNVL5+TgQn
mvAK/nAux8oivLsNoNRMHcU33skKUqlfsgyF/HO6InxpZfqqSjY=
=DI9j
-----END PGP SIGNATURE-----

--nextPart2469665.2WxzA1PoCY--




--===============0929627743599684306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0929627743599684306==--



