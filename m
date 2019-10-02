Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2026AC9441
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 00:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9063C85459;
	Wed,  2 Oct 2019 22:23:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jug0j6BPXytn; Wed,  2 Oct 2019 22:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9C5F81B40;
	Wed,  2 Oct 2019 22:23:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87DA01BF380
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80CBD86ADB
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 22:23:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVtIuDu1rhdh for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 22:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6BBC86D03
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 22:23:15 +0000 (UTC)
X-Originating-IP: 132.205.230.6
Received: from aptenodytes (unknown [132.205.230.6])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1D20E60002;
 Wed,  2 Oct 2019 22:23:09 +0000 (UTC)
Date: Wed, 2 Oct 2019 18:23:07 -0400
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 0/3] media: cedrus: improvements
Message-ID: <20191002222307.GD24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20191002193553.1633467-1-jernej.skrabec@siol.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8982305718807557562=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8982305718807557562==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k4f25fnPtRuIRUb3"
Content-Disposition: inline


--k4f25fnPtRuIRUb3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> This is continuation of https://lkml.org/lkml/2019/5/30/1459 with several
> patches removed (2 merged, others needs redesign) and one added.

Thanks for the continued effort on this, these fixes are greatly appreciated
(and more generally, all the work you are putting into cedrus)!

Although I've been out of the loop on cedrus, it is very nice to see
development happening. Keep up the good work!

Cheers,

Paul

> Patch 1 fixes h264 playback issue which happens in rare cases.
>=20
> Patch 2 sets PPS default reference index count in register from PPS
> control. Currently it was set to values from slice control.
>=20
> Patch 3 replaces direct accesses to capture queue from m2m contex with
> helpers which was designed exactly for that. It's also safer since
> helpers do some checks.
>=20
> Best regards,
> Jernej
>=20
> Jernej Skrabec (3):
>   media: cedrus: Fix decoding for some H264 videos
>   media: cedrus: Fix H264 default reference index count
>   media: cedrus: Use helpers to access capture queue
>=20
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  8 +++-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 46 ++++++++++++++-----
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
>  3 files changed, 44 insertions(+), 13 deletions(-)
>=20
> --=20
> 2.23.0
>=20

--k4f25fnPtRuIRUb3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl2VI0sACgkQ3cLmz3+f
v9EcCQf/dp1ZJ98xtDjBSFeOTicLLmTSYPEL4psHHVW8+VSMna6ZSZtO4ClTTBGZ
tDrKjeCHhy0yri5j2/e+adLJP/qa0IMu0/5Nmoe7Tr6VN2DztUUjfGs50+l4ZcOF
M9Zyuy18MuRWDflAksGRfp49eiH8vPKWbY8svsunL3SDPF+WWtuIjpUBwArhk7vH
Xm5NG55KJdbb2rUd/DhGzgueb1eZQ3EVQe25wNL3RozTeZB03IrNSaRz+QqAVCm/
rAFWSYJn+RzrVKmGa1/LpT8UwzNJ6oXlpX8M6jHnN/OicIXEMzyXy1xQVgJCYMT8
9PbndGZKpiunBcFHh64bHoPk5Fn5gg==
=jxCu
-----END PGP SIGNATURE-----

--k4f25fnPtRuIRUb3--

--===============8982305718807557562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8982305718807557562==--
