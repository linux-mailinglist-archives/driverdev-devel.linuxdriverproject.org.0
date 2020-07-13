Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BAC21D593
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 14:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9485687798;
	Mon, 13 Jul 2020 12:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rn_bXntRsS0H; Mon, 13 Jul 2020 12:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 732D486F73;
	Mon, 13 Jul 2020 12:14:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB0F81BF3F6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D199486F73
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 12:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSGHlZ17p4pd for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 12:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CA4C86DFA
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 12:14:44 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ls15so6169392pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 05:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2P82DVa0uA6ZsAd3NB4q4eF6eR6EDSKhk3gZmaYEnrI=;
 b=OY1u+H7TOfRirjsCn6YZ4ohxeV6a0pnQ8m6WWhPNUDRlvXcaIj2MdZ0bIJ7+lMr5H5
 mi+DErEvZIBa7esEYaKuMK333QVLsFQEwO7baTFTH/6sq9xwUL2hKD+X/dBRNg+WlZ5F
 HQH7T1i2KCC1N0vlTy7cJWKYzdsWPLtY6WpRDF9ZUQp3HhxYCFklkqhOZoZpKCGbPBwZ
 QJF0T8HSWxscPIEocZP0eQxckDS6xq3GJM4F3SKP0YTZiBDAzwlBi06T8FxYUb8rv1uv
 bNj7sI/h3oobmnw4zOWTdd+Ybpv+YXgFdX5G9W6L6LKyCgnmkpPqgwqBYdjAZhwqEz2V
 5DSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2P82DVa0uA6ZsAd3NB4q4eF6eR6EDSKhk3gZmaYEnrI=;
 b=eZ0CNFk4x3vRzqeRVEIh7it0sA66c5J/8j9vqPzXv+uMR8ayCDfws8JBw3qGZB5r78
 O87Q5baUnLx+pPfUjXk257E/NylOy4rAhDWECconQMdNdQNKVylAI72dvrF+f/Fpf8hn
 qcrhLFDf+j9qHTP3fmkBFxoaieSd8GCLojbKudfdi0moUH9ckrk9JQc925/6NISMTteL
 GUpjIeEh9QSSu+5E/lW/tCvrE30ljczsqgB2FUb8tVABcEKZjFNdfBXnM3laIIgrj0pi
 VYiCAGowTxh05wEnZQD6Q0v2gflTIGeSHX6QE1V61YPVEV95BoXx4WU60mlk0jllvpq4
 MxPg==
X-Gm-Message-State: AOAM530tifGixZistnw131JcN7l4divyjlCBWaHVGEXKVnI/D1yTtr+T
 jfQWpV7LCuKB1shMz3QYpgI=
X-Google-Smtp-Source: ABdhPJzH/Mg6FFnMjQPexZV+clQXflYEUbtTrxhI8RnnXsVRT+zfTStVRzLh9stkH84cILUtqvIocw==
X-Received: by 2002:a17:90a:f206:: with SMTP id
 bs6mr20065510pjb.48.1594642483042; 
 Mon, 13 Jul 2020 05:14:43 -0700 (PDT)
Received: from blackclown ([103.88.82.220])
 by smtp.gmail.com with ESMTPSA id v11sm16230393pfc.108.2020.07.13.05.14.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jul 2020 05:14:42 -0700 (PDT)
Date: Mon, 13 Jul 2020 17:44:27 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org
Subject: [PATCH 0/6] staging: qlge: General cleanup and refactor.
Message-ID: <cover.1594642213.git.usuraj35@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0337243790572140137=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0337243790572140137==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hii,
	This patchest aims to remove several of the checkpatch.pl
warnings and refactor some ugly while loops into for loops for better
readability.
Some of the issues are found with checkpatch and others were listed in
qlge/TODO.

Thanks,

Suraj Upadhyay (6):
  staging: qlge: qlge.h: Function definition arguments should have
    names.
  staging: qlge: qlge.h: Insert line after declaration.
  staging: qlge: qlge_dbg: Simplify while statements
  staging: qlge: qlge_main: Simplify while statements.
  staging: qlge: qlge_mpi: Simplify while statements.
  staging: qlge: qlge_ethtool: Remove one byte memset.

 drivers/staging/qlge/qlge.h         |  7 +++--
 drivers/staging/qlge/qlge_dbg.c     |  5 ++-
 drivers/staging/qlge/qlge_ethtool.c |  4 +--
 drivers/staging/qlge/qlge_main.c    | 49 +++++++++++++----------------
 drivers/staging/qlge/qlge_mpi.c     | 32 +++++++++----------
 5 files changed, 45 insertions(+), 52 deletions(-)

--=20
2.17.1


--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8MUBoACgkQ+gRsbIfe
7454sg/8DJM1+74HINhkyKxsOhUgvby6VzO0B0iFGVivi796N9MMSjLGpth9dl29
PLvjRCYwqpFriYMpzPJPI++RXoPXKXHrIlYgUi0kKQmB8hmYc+bhfcTNuSMEJRgF
+34nRwTJEruI8aOczBnqD3t/fNsXXappC8GIaOhqAvkZIGmw/oAHss7oNc83qgRW
YajyFoZt1zcw2zBbch9PHFpgj/9zOZfSuy47/irzeioqYLfXSs4HcZJB08Nan5Hn
NZc4QgW5ggu/fCg80BCaKCwiQXl7df6dKQ62+eAgt/KGKg24oGbYfYc7yNgMTYVo
c/ihaAV3NzZPZAEnwgVU4yS3ygBavS/Dnoas5hsl/cqzdXJFiu5lewIriRl6/ldk
y7xp71Vyxm1O22iMwZGuHCt0JUc9UsXxp8+4lROo5sz42rqD0RZnXYVT5OVSYsfF
09mvC2u9xMvxOt4kFsPQXYeYF6nqAU0yDZJ0xpCXCrZ3d5chy3lMbxN178KH843A
YBQ6xTsopIHEvCMaM55KckzdmKF5zwFTFlVSBsRGtQhjHGF+q/DwwTvYV58YXC0W
3K5j2SIcWgHeA0ThmQOTkIQogHmSS2nJTh6g4mAAFXOXjGO1C4N/TigPj0G1EHsn
oyQd0Icgj/uS/uNK+92otBPkL2J6EVHdoJaUS+gJM13WzlYAznw=
=FhHN
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--

--===============0337243790572140137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0337243790572140137==--
