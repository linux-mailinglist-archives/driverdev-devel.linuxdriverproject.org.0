Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B650A6763
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 13:27:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55B468687B;
	Tue,  3 Sep 2019 11:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6ZRsvtkeEUx; Tue,  3 Sep 2019 11:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBEA6866AD;
	Tue,  3 Sep 2019 11:27:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 746261BF5DB
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 11:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E934866AD
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 11:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GK7P4bQ9ofv1 for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 11:27:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 23F7A866A9
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 11:27:14 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id BFF3C819EF; Tue,  3 Sep 2019 13:26:54 +0200 (CEST)
Date: Tue, 3 Sep 2019 13:27:07 +0200
From: Pavel Machek <pavel@denx.de>
To: dsterba@suse.cz, Pavel Machek <pavel@denx.de>,
 Joe Perches <joe@perches.com>, Gao Xiang <gaoxiang25@huawei.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Amir Goldstein <amir73il@gmail.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Jan Kara <jack@suse.cz>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Miao Xie <miaoxie@huawei.com>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190903112707.GA3844@amd>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
 <20190829103252.GA64893@architecture4>
 <67d6efbbc9ac6db23215660cb970b7ef29dc0c1d.camel@perches.com>
 <20190830120714.GN2752@twin.jikos.cz> <20190902084303.GC19557@amd>
 <20190902140712.GV2752@twin.jikos.cz>
MIME-Version: 1.0
In-Reply-To: <20190902140712.GV2752@twin.jikos.cz>
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
Content-Type: multipart/mixed; boundary="===============5481165848317029575=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5481165848317029575==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > No. gdb tells you what the actual offsets _are_.
>=20
> Ok, reading your reply twice, I think we have different perspectives. I
> don't trust the comments.
>=20
> The tool I had in mind is pahole that parses dwarf information about the
> structures, the same as gdb does. The actual value of the struct members
> is the thing that needs to be investigated in memory dumps or disk image
> dumps.
>=20
> > > > The expected offset is somewhat valuable, but
> > > > perhaps the form is a bit off given the visual
> > > > run-in to the field types.
> > > >=20
> > > > The extra work with this form is manipulating all
> > > > the offsets whenever a structure change occurs.
> > >=20
> > > ... while this is error prone.
> >=20
> > While the comment tells you what they _should be_.
>=20
> That's exactly the source of confusion and bugs. For me an acceptable
> way of asserting that a value has certain offset is a build check, eg.
> like
>=20
> BUILD_BUG_ON(strct my_superblock, magic, 16);

Yes, that would work, too. As would documentation file with the disk
structures.

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1uTgsACgkQMOfwapXb+vL2IgCgs+lvDMnGJBdzf4Ded3ls5qz4
u/sAn1m34p0fdk6NLGSW8jaPems7I5EL
=38MN
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--

--===============5481165848317029575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5481165848317029575==--
