Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7437A2A61DA
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:37:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C47EE867DA;
	Wed,  4 Nov 2020 10:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIfZcvza-hWQ; Wed,  4 Nov 2020 10:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7ABDA86A00;
	Wed,  4 Nov 2020 10:37:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6971BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 872F385D3D
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yMqTuAiyVGM9 for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:37:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27C8485C5E
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:37:38 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 42D764000A;
 Wed,  4 Nov 2020 10:37:32 +0000 (UTC)
Date: Wed, 4 Nov 2020 11:37:31 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 12/14] media: sunxi: Add support for the A83T MIPI CSI-2
 controller
Message-ID: <20201104103731.GC285779@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-13-paul.kocialkowski@bootlin.com>
 <20201026170041.qsjzxlurufuuhcsq@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201026170041.qsjzxlurufuuhcsq@gilmour.lan>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1588785038853329708=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1588785038853329708==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KN5l+BnMqAQyZLvT"
Content-Disposition: inline


--KN5l+BnMqAQyZLvT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Oct 20, 18:00, Maxime Ripard wrote:
> On Fri, Oct 23, 2020 at 07:45:44PM +0200, Paul Kocialkowski wrote:
> > The A83T supports MIPI CSI-2 with a composite controller, covering both=
 the
> > protocol logic and the D-PHY implementation. This controller seems to b=
e found
> > on the A83T only and probably was abandonned since.
> >=20
> > This implementation splits the protocol and D-PHY registers and uses th=
e PHY
> > framework internally. The D-PHY is not registered as a standalone PHY d=
river
> > since it cannot be used with any other controller.
> >=20
> > There are a few notable points about the controller:
> > - The initialisation sequence involes writing specific magic init value=
s that
> >   do not seem to make any particular sense given the concerned register=
 fields.
> > - Interrupts appear to be hitting regardless of the interrupt mask regi=
sters,
> >   which can cause a serious flood when transmission errors occur.
>=20
> Ah, so it's a separate driver too.
>=20
> > This work is based on the first version of the driver submitted by
> > K=C3=A9vin L'h=C3=B4pital, which was adapted to mainline from the Allwi=
nner BSP.
> > This version integrates MIPI CSI-2 support as a standalone V4L2 subdev
> > instead of merging it in the sun6i-csi driver.
> >=20
> > It was tested on a Banana Pi M3 board with an OV8865 sensor in a 4-lane
> > configuration.
>=20
> Co-developped-by and SoB from Kevin?

Not really. I wrote this driver from scratch and even significantly reworked
the register descriptions to the point that I don't think it makes sense to
consider that he's an author. For parts that can be considered a derivative
work, copyright attribution was given in the header.

Cheers,

Paul

> Looking at the driver, the same comments from the v3s apply there
>=20
> Maxime

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--KN5l+BnMqAQyZLvT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+ihGcACgkQ3cLmz3+f
v9HKqAf+OuoO0165XskKVuTp2nDVtSSL8D+0v2Fji8v+foCHk2qq8v2otrqY5Ey+
ptEefRqzPa/VFRm5ZShzliEzeFK1vE+0/NE/n9QU4KdkhNUNnMGUIYGtEIvQr+Qo
QOqecdSX0SR0qy/CMHbuNQJRRSzZ1AkYjq6g/023m3VMUOvGajq+2cwWYpYE0SC/
Ngjd/deVC3yvosBdjwUfzyB2zj6pNOM8PQrUnIpiO2pBsZcXqqQ4QgLmi1UgtSrz
RsTW9bMwsz7IRyogs4dCrb6s3ooCuK+Ox3v7bqng99Eqe/n6oIveLzRNS5QnlKMa
rDjvmpkshuvTgPMU/kQlaGL1k20Lxw==
=i052
-----END PGP SIGNATURE-----

--KN5l+BnMqAQyZLvT--

--===============1588785038853329708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1588785038853329708==--
