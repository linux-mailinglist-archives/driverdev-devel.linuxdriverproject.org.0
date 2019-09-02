Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3B3A5209
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 10:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 956D886406;
	Mon,  2 Sep 2019 08:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6rdud1kXxa2; Mon,  2 Sep 2019 08:43:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82D79862E8;
	Mon,  2 Sep 2019 08:43:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1782B1BF5E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 08:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 11DDB862ED
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 08:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9p4ubDkg47J for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 08:43:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B59B4862E8
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 08:43:06 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id ACB57809D3; Mon,  2 Sep 2019 10:42:50 +0200 (CEST)
Date: Mon, 2 Sep 2019 10:43:03 +0200
From: Pavel Machek <pavel@denx.de>
To: dsterba@suse.cz, Joe Perches <joe@perches.com>,
 Gao Xiang <gaoxiang25@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Pavel Machek <pavel@denx.de>,
 Amir Goldstein <amir73il@gmail.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara <jack@suse.cz>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Miao Xie <miaoxie@huawei.com>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190902084303.GC19557@amd>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190829103252.GA64893@architecture4>
 <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
 <20190830120714.GN2752@twin.jikos.cz>
MIME-Version: 1.0
In-Reply-To: <20190830120714.GN2752@twin.jikos.cz>
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
Content-Type: multipart/mixed; boundary="===============6818822895076290137=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6818822895076290137==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lMM8JwqTlfDpEaS6"
Content-Disposition: inline


--lMM8JwqTlfDpEaS6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > Rather than they didn't run "gdb" or "pahole" and change it by mistak=
e.
> >=20
> > I think Christoph is not right here.
> >=20
> > Using external tools for validation is extra work
> > when necessary for understanding the code.
>=20
> The advantage of using the external tools that the information about
> offsets is provably correct ...

No. gdb tells you what the actual offsets _are_.

> > The expected offset is somewhat valuable, but
> > perhaps the form is a bit off given the visual
> > run-in to the field types.
> >=20
> > The extra work with this form is manipulating all
> > the offsets whenever a structure change occurs.
>=20
> ... while this is error prone.

While the comment tells you what they _should be_.

								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--lMM8JwqTlfDpEaS6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1s1hcACgkQMOfwapXb+vLwegCgmC1y9HxKZu/YFm0T4U+rH5ko
oJcAni3phOqqriczOS1slpVzLy+HY7Nv
=pnr4
-----END PGP SIGNATURE-----

--lMM8JwqTlfDpEaS6--

--===============6818822895076290137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6818822895076290137==--
