Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3224F6849F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 09:56:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 791D585C95;
	Mon, 15 Jul 2019 07:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xy8u2cs9D9Yc; Mon, 15 Jul 2019 07:56:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14B3C85BEC;
	Mon, 15 Jul 2019 07:56:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 954BA1BF8A8
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 07:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9259785BEC
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 07:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J_pzahNNNCDQ for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 07:56:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71DAD85BD5
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 07:56:45 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 9159880525; Mon, 15 Jul 2019 09:56:30 +0200 (CEST)
Date: Mon, 15 Jul 2019 09:56:41 +0200
From: Pavel Machek <pavel@denx.de>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v2 00/24] erofs: promote erofs from staging
Message-ID: <20190715075641.GA7695@amd>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190714104940.GA1282@xo-6d-61-c0.localdomain>
 <63b9eaca-5d4b-0fe2-c861-7531977a5b48@aol.com>
MIME-Version: 1.0
In-Reply-To: <63b9eaca-5d4b-0fe2-c861-7531977a5b48@aol.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: multipart/mixed; boundary="===============7444268893064959179=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7444268893064959179==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >> Changelog from v1:
> >>  o resend the whole filesystem into a patchset suggested by Greg;
> >>  o code is more cleaner, especially for decompression frontend.
> >>
> >> --8<----------
> >>
> >> Hi,
> >>
> >> EROFS file system has been in Linux-staging for about a year.
> >> It has been proved to be stable enough to move out of staging
> >> by 10+ millions of HUAWEI Android mobile phones on the market
> >> from EMUI 9.0.1, and it was promoted as one of the key features
> >> of EMUI 9.1 [1], including P30(pro).
> >=20
> > Ok, maybe it is ready to be moved to kernel proper, but as git can
> > do moves, would it be better to do it as one commit?
> >=20
> > Separate patches are still better for review, I guess.
>=20
> Thanks for you reply. Either form is OK for me... The first step could
> be that I hope someone could kindly take some time to look into these
> patches... :)
>=20
> The patch v2 is slightly different for the current code in the staging
> tree since I did some code cleanup these days (mainly renaming / moving,
> including rename unzip_vle.{c,h} to zdata.{c,h} and some confusing
> structure names and clean up internal.h...). No functional chance and I
> can submit cleanup patches to staging as well if doing moves by git...

I believe you should get those committed to staging/, yes. Then you
ask Al Viro to do pull the git move, I guess, and you follow his
instructions at that point...

FILESYSTEMS (VFS and infrastructure)
M:      Alexander Viro <viro@zeniv.linux.org.uk>
L:      linux-fsdevel@vger.kernel.org

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--+HP7ph2BbKc20aGI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0sMbkACgkQMOfwapXb+vIr6QCfeBDCyzFgvaSHJ4qypSy3Ws3a
t+QAoIMCkNTsXsQe3twlBOhsbV6DSfvw
=KP0L
-----END PGP SIGNATURE-----

--+HP7ph2BbKc20aGI--

--===============7444268893064959179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7444268893064959179==--
