Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6294F20F4
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 22:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D39A38A2A1;
	Wed,  6 Nov 2019 21:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6yrWwwo9wnWw; Wed,  6 Nov 2019 21:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36F85896DB;
	Wed,  6 Nov 2019 21:46:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 748FC1BF488
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 707C1203FD
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 03dnHbL5Psrv for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 21:46:08 +0000 (UTC)
X-Greylist: delayed 00:08:38 by SQLgrey-1.7.6
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by silver.osuosl.org (Postfix) with ESMTPS id 7258C2044F
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 21:46:08 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 36D4F1C09B6; Wed,  6 Nov 2019 22:37:26 +0100 (CET)
Date: Wed, 6 Nov 2019 22:37:25 +0100
From: Pavel Machek <pavel@denx.de>
To: Chao Yu <yuchao0@huawei.com>
Subject: Re: [PATCH 10/10] errno.h: Provide EFSCORRUPTED for everybody
Message-ID: <20191106213725.GB7020@amd>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-11-Valdis.Kletnieks@vt.edu>
 <5c441427-7e65-fcae-3518-eb37cea5f875@huawei.com>
MIME-Version: 1.0
In-Reply-To: <5c441427-7e65-fcae-3518-eb37cea5f875@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-arch@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Arnd Bergmann <arnd@arndb.de>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Theodore Ts'o <tytso@mit.edu>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-fsdevel@vger.kernel.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Gao Xiang <xiang@kernel.org>, linux-ext4@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, Jan Kara <jack@suse.com>
Content-Type: multipart/mixed; boundary="===============5752533297273032913=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5752533297273032913==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jq0ap7NbKX2Kqbes"
Content-Disposition: inline


--jq0ap7NbKX2Kqbes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > There's currently 6 filesystems that have the same #define. Move it
> > into errno.h so it's defined in just one place.
> >=20
> > Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
> > Acked-by: Darrick J. Wong <darrick.wong@oracle.com>
> > Reviewed-by: Jan Kara <jack@suse.cz>
> > Acked-by: Theodore Ts'o <tytso@mit.edu>
>=20
> >  fs/erofs/internal.h              | 2 --
>=20
> >  fs/f2fs/f2fs.h                   | 1 -
>=20
> Acked-by: Chao Yu <yuchao0@huawei.com>

Are we still using EUCLEAN for something else than EFSCORRUPTED? Could
we perhaps change the glibc definiton to "your filesystem is
corrupted" in the long run?

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--jq0ap7NbKX2Kqbes
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3DPRUACgkQMOfwapXb+vIeLACgumqpgUAXyu1qs1LlH4i+wJ+u
sPEAn0YdeU4hDroZD6g3yLDme7o5MHbL
=nCbA
-----END PGP SIGNATURE-----

--jq0ap7NbKX2Kqbes--

--===============5752533297273032913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5752533297273032913==--
