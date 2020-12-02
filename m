Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3AF2CBF5F
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 15:19:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AE922E26F;
	Wed,  2 Dec 2020 14:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e2yDzKOIOQKH; Wed,  2 Dec 2020 14:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7381D2E260;
	Wed,  2 Dec 2020 14:19:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 403791BF281
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33D758738D
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zg-TQG4ZOW65 for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 14:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C58C38765E
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 14:19:20 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 4856DC0007;
 Wed,  2 Dec 2020 14:19:12 +0000 (UTC)
Date: Wed, 2 Dec 2020 15:19:11 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 07/19] media: sun6i-csi: Add support for MIPI CSI-2
 bridge input
Message-ID: <X8eiXxYw1iHKbdDV@aptenodytes>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-8-paul.kocialkowski@bootlin.com>
 <20201201121241.cyafjhot45puusfc@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201201121241.cyafjhot45puusfc@gilmour>
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
Content-Type: multipart/mixed; boundary="===============3231236216975860985=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3231236216975860985==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tDn8NpJ7qnoGqYpK"
Content-Disposition: inline


--tDn8NpJ7qnoGqYpK
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 01 Dec 20, 13:12, Maxime Ripard wrote:
> Hi,
>=20
> On Sat, Nov 28, 2020 at 03:28:27PM +0100, Paul Kocialkowski wrote:
> > The A31 CSI controller supports a MIPI CSI-2 bridge input, which has
> > its own dedicated port in the fwnode graph.
> >=20
> > Support for this input is added with this change:
> > - two pads are defined for the media entity instead of one
> >   and only one needs to be connected at a time;
> > - the pads currently match the fwnode graph representation;
> > - links are created between our pads and the subdevs for each
> >   interface and are no longer immutable so that userspace can select
> >   which interface to use in case both are bound to a subdev;
> > - fwnode endpoints are parsed and stored for each interface;
> > - the active subdev (and fwnode endpoint) is retrieved when validating
> >   the media link at stream on time and cleared at stream off;
> > - an error is raised if both links are active at the same time;
> > - the MIPI interface bit is set if the MIPI CSI-2 bridge endpoint is
> >   active.
> >=20
> > In the future, the media entity representation might evolve to:
> > - distinguish the internal parallel bridge and data formatter;
> > - represent each of the 4 internal channels that can exist between
> >   the parallel bridge (for BT656 time-multiplex) and MIPI CSI-2
> >   (internal channels can be mapped to virtual channels);
> > - connect the controller's output to the ISP instead of its
> >   DMA engine.
> >=20
> > Finally note that the MIPI CSI-2 bridges should not be linked in
> > the fwnode graph unless they have a sensor subdev attached.
>=20
> I'll leave most of the review to Laurent and Sakari, but I'm not quite
> sure what you meant in the last paragraph. Did you mean that the
> MIPI-CSI controller in the Allwinner SoC should only be linked if it has
> a sensor attached, or did you mean that any MIPI-CSI2 bridge cannot be
> attached to the controller?

So the use of plural was a mistake and your first understanding is the corr=
ect
one: if the bridge is linked to the CSI controller in the OF graph but the
bridge doesn't have a sensor attached, the CSI controller driver will fail
to probe, as far as I could see.

I haven't investigated much but it looks like this is expected behavior.

> Also, having somewhere (like your cover letter) the media-ctl setup you
> tested with would be great.

Understood!

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--tDn8NpJ7qnoGqYpK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/Hol8ACgkQ3cLmz3+f
v9EqPAf/X3YxsNi+JcqhfeAseKXD/cboW7DdagCpjzxZ/RZN8sjOJGOKhxrKkxw5
wkAPyF/nPPaqeSUF20XtgSx/rwQqMrOb1efwgUY22v7rq1u4Kw4kcVl9iLfS3xpo
B2fcBhgLvne3l6tpGUiKoQS7cNTiVMAYw6scpEPCpZ/mA6pV02upCEFcrZkGUw7i
scOA6986c3kONoWQQ6Zu5x7J7DMklN/+kc+zkZt/Vb6ZwSOO+/DMopUMsbhv0Op3
FBYySRjzikhFTMYjtLWvIqihnpaCr3OXroEMgS1sGIpsUepFeMvVbL1ihmgNo7vh
T9iQ6dPLnWvDl4gg4XMefkTAB4BRUg==
=iVuy
-----END PGP SIGNATURE-----

--tDn8NpJ7qnoGqYpK--

--===============3231236216975860985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3231236216975860985==--
