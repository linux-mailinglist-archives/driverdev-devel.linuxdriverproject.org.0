Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5331C485
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 01:12:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF1FD8703C;
	Tue, 16 Feb 2021 00:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBihKtqQnlIF; Tue, 16 Feb 2021 00:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63C1F87013;
	Tue, 16 Feb 2021 00:12:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BFE91BF97E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 00:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17A2C85BD3
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 00:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X+BNSwnoMvyb for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 00:12:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DBF3E8665D
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 00:12:23 +0000 (UTC)
Received: from bagend.localnet (92-110-45-68.cable.dynamic.v4.ziggo.nl
 [92.110.45.68]) (Authenticated sender: didi.debian@cknow.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id E7C82100004;
 Tue, 16 Feb 2021 00:12:15 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org,
 Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Tue, 16 Feb 2021 01:12:12 +0100
Message-ID: <11208610.7f3IsiomVT@bagend>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============2675754867735144679=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============2675754867735144679==
Content-Type: multipart/signed; boundary="nextPart2844758.jcCGFL8tJk"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2844758.jcCGFL8tJk
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rpi-kernel@lists.infradead.org, Stefan Wahren <stefan.wahren@i2se.com>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Sound issues with the 5.10.x kernel (alsa)
Date: Tue, 16 Feb 2021 01:12:12 +0100
Message-ID: <11208610.7f3IsiomVT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>
References: <3165951.nLcn7dHqa8@bagend> <b0be09a0-5ec3-b716-4b77-1dde43719273@i2se.com>

On maandag 8 februari 2021 13:22:56 CET Stefan Wahren wrote:
> Currently i cannot see any of the fixes by Phil
> Elwell in linux-stable. Maybe they won't apply and needs to be backport
> manually.
> 
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

I've now successfully build and booted a 5.10.16 kernel 'pristine' and with 
the above mentioned patches.
In the 'pristine' variant, I had the same bad/horrible quality as I 
experienced with Debian's 5.10 kernels.
The 'patched' variant seems to be a tad better, but didn't completely solve 
the audio problem. There's still some noise intermixed with the music and 
other artifacts, but I'm inclined to think it's not as horrible as before.

I'll do some more hearing tests tomorrow when I'm fresh again, but figured I'd 
share these preliminary results already.

Cheers,
  Diederik
--nextPart2844758.jcCGFL8tJk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEf+PJh5LtCd6LDwjYE45BkVx+/tYFAmArDdwACgkQE45BkVx+
/tauLA//Vx7K5ibOC8isKBDR/Wd2nF3jnmVftQun2tQ+nh/Pen0RLHY1Sc1kCzYG
xaGeceHoJHSvq4PXElgnoYjvkp842IeOFOUNMNUuE3Zlm/QVnQ1kQ1BNuKYLuh1t
bJmdX04kEH7sHVsiWkmdL1gDhAgrDDN/GQLHaxs3rGCqGaMUcv8CLCU379WIEW4w
Kxuzy07H5Msq25tB4DRlXzGUwwTSkUZoNyxSCx0GZJqBZcEO9ShkV/mjHP9Gucx1
ABgyJJk2lnJQbxDY/t/xJBQt1FVtCBlqZT5Z8UDigprkBZX56A1OopntdB0GkFra
jtQ+geonZaLIr5fFQRrHOdW3vwSFtZOmB1SDjHCoRPYxT71Xu9KlVAOd9hEyHoAR
TRESRB4WmHjlPs8fFn75Cu/nVgtzNHw6/gLuhI3vELkVV/ESXk2W05xlxVzlxsor
xbSQWWfMyryjvbuoTDn87ljEdexe3cW0RwrsHNrxLXluCrGkqcvuDlFcNu9IedsT
Z7thfr793E57U+uZiNPczUA1M7zWlDHr/UHOzrGVSVUHeGnVM6FiG3cOnSyQSCMB
BzVux7lUvqZZ0VcFWc7eKTCA6fCT2u+ctFPvyCS/PpmPRs7qw0wu2VEr0LGlpWZK
+rgs26c/ryabDjzqVlB2uyHPd0UULGCMCHoYjIdm9GDwzTbDERk=
=W0K/
-----END PGP SIGNATURE-----

--nextPart2844758.jcCGFL8tJk--




--===============2675754867735144679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2675754867735144679==--



