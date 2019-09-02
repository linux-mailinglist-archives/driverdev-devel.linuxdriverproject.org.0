Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0964A51FF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 10:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64AE0862E6;
	Mon,  2 Sep 2019 08:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3aTZy381tosz; Mon,  2 Sep 2019 08:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F1EF862ED;
	Mon,  2 Sep 2019 08:40:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3E811BF5E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 08:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0BA22051F
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 08:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaTKWrOsfL2z for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 08:40:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0291D2051E
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 08:40:24 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 28B04813BA; Mon,  2 Sep 2019 10:40:07 +0200 (CEST)
Date: Mon, 2 Sep 2019 10:40:20 +0200
From: Pavel Machek <pavel@denx.de>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 01/24] erofs: add on-disk layout
Message-ID: <20190902084020.GB19557@amd>
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-2-gaoxiang25@huawei.com>
 <20190829095954.GB20598@infradead.org>
MIME-Version: 1.0
In-Reply-To: <20190829095954.GB20598@infradead.org>
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
 Dave Chinner <david@fromorbit.com>, LKML <linux-kernel@vger.kernel.org>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============1965809564235708901=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1965809564235708901==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NMuMz9nt05w80d4+"
Content-Disposition: inline


--NMuMz9nt05w80d4+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > +struct erofs_super_block {
> > +/*  0 */__le32 magic;           /* in the little endian */
> > +/*  4 */__le32 checksum;        /* crc32c(super_block) */
> > +/*  8 */__le32 features;        /* (aka. feature_compat) */
> > +/* 12 */__u8 blkszbits;         /* support block_size =3D=3D PAGE_SIZE=
 only */
>=20
> Please remove all the byte offset comments.  That is something that can
> easily be checked with gdb or pahole.

I don't think I agree. gdb will tell you byte offsets _on one
architecture_. But filesystem is supposed to be portable between them.=20

> > +/* 64 */__u8 volume_name[16];   /* volume name */
> > +/* 80 */__le32 requirements;    /* (aka. feature_incompat) */
> > +
> > +/* 84 */__u8 reserved2[44];
> > +} __packed;                     /* 128 bytes */
>=20
> Please don't add __packed.  In this case I think you don't need it
> (but double check with pahole), but even if you would need it using
> proper padding fields and making sure all fields are naturally aligned
> will give you much better code generation on architectures that don't
> support native unaligned access.

This is on-disk structure, right?

drivers/staging/erofs/super.c:	struct erofs_super_block *layout;
drivers/staging/erofs/super.c:	layout =3D (struct erofs_super_block
*)((u8 *)bh->b_data

So __packed is right thing to do. If architecture accesses that
slowly, that's ungood, but different structures between architectures
would be really bad.

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--NMuMz9nt05w80d4+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1s1XQACgkQMOfwapXb+vK1qgCeMhRodxdCMHktGBYzM6YZ0upo
P8IAnRXsAoM5UyuAx4MPbJJVq8NtKIG8
=L04e
-----END PGP SIGNATURE-----

--NMuMz9nt05w80d4+--

--===============1965809564235708901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1965809564235708901==--
