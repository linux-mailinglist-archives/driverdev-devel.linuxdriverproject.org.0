Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8531D6B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C96DD864C1;
	Wed, 17 Feb 2021 08:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIWJi+k5r1kq; Wed, 17 Feb 2021 08:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78D9C8639E;
	Wed, 17 Feb 2021 08:38:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A3BC1BF59C
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 917298531B
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MO5DKzeOYGkm for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A67668517E
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:38:50 +0000 (UTC)
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6DF5924000F;
 Wed, 17 Feb 2021 08:38:44 +0000 (UTC)
Date: Wed, 17 Feb 2021 09:38:43 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzWE9VNK9yd+Db+@aptenodytes>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
MIME-Version: 1.0
In-Reply-To: <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net,
 Greg KH <gregkh@linuxfoundation.org>, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, hverkuil-cisco@xs4all.nl,
 shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: multipart/mixed; boundary="===============6758416296378657708=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============6758416296378657708==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ow2nU972vRHVC8/"
Content-Disposition: inline


--7ow2nU972vRHVC8/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Benjamin,

On Wed 17 Feb 21, 09:28, Benjamin Gaignard wrote:
> Le 17/02/2021 =C3=A0 09:08, Greg KH a =C3=A9crit=C2=A0:
> > On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> > > The IMX8MQ got two VPUs but until now only G1 has been enabled.
> > > This series aim to add the second VPU (aka G2) and provide basic
> > > HEVC decoding support.
> > Why are you adding this directly to drivers/staging/media/ and not
> > drivers/media/?  Why can't this just go to the main location and not
> > live in staging?
>=20
> G2/HEVC is added inside the already exiting Hantro driver, it is "just"
> an other codec from Hantro driver point of view.
> In addition of that v4l2-hevc uAPI is still unstable.
> One goal of this series is to have one more consumer of this v4l2-hevc
> uAPI so maybe we can claim it to be stable enough to move away from stagi=
ng
> and then do the same for Hantro driver. That would be a great achievement=
 !

Thanks for working on Hantro G2 support!

As the initial author of the HEVC API, it definitely does not feel ready to
be destaged. The API has lots of issues and limitation and I think signific=
ant
work is still needed.

This initial implementation was kind of a proof of concept for simple cases.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--7ow2nU972vRHVC8/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmAs1hMACgkQ3cLmz3+f
v9HIZQf/XT0QkO85qqIKOjBJc13qI9EuI0hqS/3DaKfoLDUlh/YYkNRNKq2LPJUO
Yn6zxwbKF7ztf8Xilpb+KN9Ab4Iiuo99wFFaPT+QicAiXnP4mPGTnsElI0vLXYtX
Cvj4oZa7Yt1d3tj6bdntUkickpI5N9jnTsfUGDgbY7UNiHPhkKrFXnm2k/YlSG0c
jThLGevtAfaArPhOdLRw2mbfxEXPWTIetrvFBsUBw82Zr1HUtB6ugUXKWwhZogly
3XU23bzYbrJQNXrwN93W2XIe6izSwknWrJeAB1UwaXkhVKnlCv/hjeLxKAf9/D/D
Q7TKg/z2kPWnZWqv5cir0FevaaaxwA==
=n/FC
-----END PGP SIGNATURE-----

--7ow2nU972vRHVC8/--

--===============6758416296378657708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6758416296378657708==--
