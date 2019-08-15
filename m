Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FF78E525
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 09:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5362859ED;
	Thu, 15 Aug 2019 07:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7SdLWe6bP1vm; Thu, 15 Aug 2019 07:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F80885A81;
	Thu, 15 Aug 2019 07:01:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 292851BF852
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 07:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 248FB2046B
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 07:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0LDt9Uw4BtOg for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 07:01:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 6611220000
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 07:01:37 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 34AD7806FD; Thu, 15 Aug 2019 09:01:20 +0200 (CEST)
Date: Thu, 15 Aug 2019 09:01:32 +0200
From: Pavel Machek <pavel@denx.de>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v7 08/24] erofs: add namei functions
Message-ID: <20190815070132.GB3669@amd>
References: <20190813091326.84652-1-gaoxiang25@huawei.com>
 <20190813091326.84652-9-gaoxiang25@huawei.com>
 <20190813114821.GB11559@amd> <20190813122332.GA17429@138>
MIME-Version: 1.0
In-Reply-To: <20190813122332.GA17429@138>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Pavel Machek <pavel@denx.de>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============3005282846228408851=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3005282846228408851==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MfFXiAuoTsnnDAfZ"
Content-Disposition: inline


--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > +	/*
> > > +	 * on-disk error, let's only BUG_ON in the debugging mode.
> > > +	 * otherwise, it will return 1 to just skip the invalid name
> > > +	 * and go on (in consideration of the lookup performance).
> > > +	 */
> > > +	DBG_BUGON(qd->name > qd->end);
> >=20
> > I believe you should check for errors in non-debug mode, too.
>=20
> Thanks for your kindly reply!
>=20
> The following is just my personal thought... If I am wrong, please
> kindly point out...
>=20
> As you can see, this is a new prefixed string binary search algorithm
> which can provide similar performance with hashed approach (but no
> need to store hash value at all), so I really care about its lookup
> performance.
>=20
> There is something needing to be concerned, is, whether namei() should
> report any potential on-disk issues or just return -ENOENT for these
> corrupted dirs, I think I tend to use the latter one.

-ENOENT is okay for corrupted directories, as long as corrupted
directories do not cause some kind of security bugs (memory
corruption, crashes, ...)


Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--MfFXiAuoTsnnDAfZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1VA0wACgkQMOfwapXb+vJ0RACeIl9SXkQ+HyKjoz6KEOY1IIxQ
fokAoLx3vqeReYdzJjSOjFpCjcgEgtud
=GkrJ
-----END PGP SIGNATURE-----

--MfFXiAuoTsnnDAfZ--

--===============3005282846228408851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3005282846228408851==--
