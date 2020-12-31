Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 670ED2E801A
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Dec 2020 13:54:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD7CF2E12C;
	Thu, 31 Dec 2020 12:54:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lD0J9+klLN8v; Thu, 31 Dec 2020 12:54:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5DCBF20460;
	Thu, 31 Dec 2020 12:54:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20B6A1BF2BA
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 12:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 16C85872F9
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 12:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQ-VWxcbLcOa for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 12:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F35F8872F3
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 12:54:37 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 75D64E0003;
 Thu, 31 Dec 2020 12:54:28 +0000 (UTC)
Date: Thu, 31 Dec 2020 13:54:28 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 09/15] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <X+3KBO6o5HVRh12e@aptenodytes>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-10-paul.kocialkowski@bootlin.com>
 <20201214113904.v6j7z3yrvjv74dcd@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201214113904.v6j7z3yrvjv74dcd@gilmour>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============4288268104759138853=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4288268104759138853==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UZSCC+lhIG3E1TOG"
Content-Disposition: inline


--UZSCC+lhIG3E1TOG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 14 Dec 20, 12:39, Maxime Ripard wrote:
> On Fri, Dec 11, 2020 at 04:57:02PM +0100, Paul Kocialkowski wrote:
> > +#define sun6i_mipi_csi2_subdev_video(subdev) \
> > +	container_of(subdev, struct sun6i_mipi_csi2_video, subdev)
> > +
> > +#define sun6i_mipi_csi2_video_dev(video) \
> > +	container_of(video, struct sun6i_mipi_csi2_dev, video)
>=20
> Isn't it a bit unsafe?
>=20
> The second subdev and video here is not the variable passed in the macro
> but the field in the structure, so any attempt at using those two macros
> with anything but a variable named subdev or video will result in a
> compilation issue?

Yep you're totally right. Will fix in the next revision!

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--UZSCC+lhIG3E1TOG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/tygMACgkQ3cLmz3+f
v9Gp0Qf9Hfjq6i2KFmaJ6VFCJGzJSNnxgEPWekzxZsKrMDphbOVlEpz/VH+lLz6I
UIDtiIhRqxp5j3WH0lU61Ysfd+Dl9SFinxRm4UXDzhGXrK8Bi1W3V30n//pWlA1t
fHgDXXWcjZ2iEB/lnwa8KmR06JbDW6F2TS7j9Bstxoaxya4uGrQHejHoj6hfO+pr
p8EvkYsBTVlhRi0meK8bFIfdvW6yT7ijmTFb/yK41Hm3TX3//AZiexLaEasvlFuH
qUp2sZjEziH3ah6cuVjUQaUgzjxGPdp54/sDK6VRGATnSDmkSOvcTq03JMgdAJtx
mwoTJPVY3a2Iid1xnqiJA6BzQCGFSA==
=ofsU
-----END PGP SIGNATURE-----

--UZSCC+lhIG3E1TOG--

--===============4288268104759138853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4288268104759138853==--
