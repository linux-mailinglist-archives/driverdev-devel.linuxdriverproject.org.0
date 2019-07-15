Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F8E69142
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 16:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD06B86A0C;
	Mon, 15 Jul 2019 14:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4MClJPi5sRu4; Mon, 15 Jul 2019 14:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 548B186A10;
	Mon, 15 Jul 2019 14:27:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 669D91BF3D6
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 14:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 591C885D8D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 14:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzunAHLayqHH for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 14:27:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6F57B85B11
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 14:27:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 24AF8AF10;
 Mon, 15 Jul 2019 14:27:47 +0000 (UTC)
Message-ID: <481382385e1916edef81cd1219d695b045e0a20a.camel@suse.de>
Subject: Re: [PATCH 0/2] Staging: fbtft: Fix probing of gpio descriptor
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Phil Reid <preid@electromag.com.au>, gregkh@linuxfoundation.org, 
 bhanusreemahesh@gmail.com, leobras.c@gmail.com, nishadkamdar@gmail.com, 
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
 devel@driverdev.osuosl.org
Date: Mon, 15 Jul 2019 16:27:44 +0200
In-Reply-To: <1562833913-10510-1-git-send-email-preid@electromag.com.au>
References: <1562833913-10510-1-git-send-email-preid@electromag.com.au>
User-Agent: Evolution 3.32.3 
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
Content-Type: multipart/mixed; boundary="===============0155980971592465600=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============0155980971592465600==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-gKBUbqe+P9k3BDYCtp9q"


--=-gKBUbqe+P9k3BDYCtp9q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-11 at 16:31 +0800, Phil Reid wrote:
> GPIO probing and reset polarity are broken.
> Fix them.
>=20
> Fixes: c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor
> interface")
>=20
> Phil Reid (2):
>   Staging: fbtft: Fix probing of gpio descriptor
>   Staging: fbtft: Fix reset assertion when using gpio descriptor
>=20
>  drivers/staging/fbtft/fbtft-core.c | 43 ++++++++++++++++++--------------=
-----
> -
>  1 file changed, 20 insertions(+), 23 deletions(-)
>=20

You can add my:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

The only issue I see is in the second patch, who should also have the same
'Fixes' tag.

BTW, while testing I found another issue, I'll send a fix shortly.

Kind regards,
Nicolas


--=-gKBUbqe+P9k3BDYCtp9q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0sjWAACgkQlfZmHno8
x/7ChAgAnqe9gOqVqsH2hZYK+itU2ED7RijpJpZvjzGHFbAKc6LK7YYhCkT6yUBG
uo98pK18pjUtaTdvhrnToLWqU1Utr87sDjVfwIdduDSmAnyM36P26NVtXPtr+atl
iL9BpNNhkG0/ZveKtm3zv1ql0kfDxgCfcSrAWnAo/nJ83jmeObEOrZHJY4EVZwB1
kQc4McdlGxqrmuvuY12a+ixc73AdlUArDJCWsbu/n1TKER3J6X5zFkZmZWDRqGZS
8i61Iz2TNQl+k9J/ts0Y5S3RguweADMj+Q+rMmTmdMsGduOp5T6KpXfQoq89HAtc
fO7UVjl6ssxy8EDCh6bO02G+Enw2+A==
=0/r6
-----END PGP SIGNATURE-----

--=-gKBUbqe+P9k3BDYCtp9q--


--===============0155980971592465600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0155980971592465600==--

