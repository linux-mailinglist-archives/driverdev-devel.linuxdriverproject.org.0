Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0212A631C
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 12:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE36F86C7B;
	Wed,  4 Nov 2020 11:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+xeHOywpDrK; Wed,  4 Nov 2020 11:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71D4D868D0;
	Wed,  4 Nov 2020 11:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC8881BF5DD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 11:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C4FEE868DA
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 11:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7K6w7Ev-0I5c for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 11:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 606D7868D0
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 11:17:15 +0000 (UTC)
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4CBB8240011;
 Wed,  4 Nov 2020 11:17:11 +0000 (UTC)
Date: Wed, 4 Nov 2020 12:17:10 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201104111710.GB287014@aptenodytes>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
 <1a3a615c-a058-e282-2dbb-c99dfa98be68@collabora.com>
 <20201102092110.ro6a456lvbrktwoz@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20201102092110.ro6a456lvbrktwoz@gilmour.lan>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4725074175859073471=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4725074175859073471==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 02 Nov 20, 10:21, Maxime Ripard wrote:
> On Fri, Oct 30, 2020 at 07:45:18PM -0300, Helen Koike wrote:
> > On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
> > > The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 controller
> > > found on Allwinner SoCs such as the A31 and V3/V3s.
> > >=20
> > > It is a standalone block, connected to the CSI controller on one side
> > > and to the MIPI D-PHY block on the other. It has a dedicated address
> > > space, interrupt line and clock.
> > >=20
> > > Currently, the MIPI CSI-2 controller is hard-tied to a specific CSI
> > > controller (CSI0) but newer SoCs (such as the V5) may allow switching
> > > MIPI CSI-2 controllers between CSI controllers.
> > >=20
> > > It is represented as a V4L2 subdev to the CSI controller and takes a
> > > MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> > > media controller API.
> >=20
> > Maybe this is a bad idea, but I was thinking:
> > This driver basically just turn on/off and catch some interrupts for er=
rors,
> > and all the rest of v4l2 config you just forward to the next subdevice
> > on the pipeline.
> >=20
> > So instead of exposing it as a subdevice, I was wondering if modeling
> > this driver also through the phy subsystem wouldn't be cleaner, so
> > you won't need all the v4l2 subdevice/topology boilerplate code that
> > it seems you are not using (unless you have plans to add controls or
> > some specific configuration on this node later).
> >=20
> > But this would require changes on the sun6i-csi driver.
> >=20
> > What do you think?
>=20
> Eventually we'll need to filter the virtual channels / datatypes I
> guess, so it's definitely valuable to have it in v4l2

Agreed and like I mentionned in the discussion on 00/14 I don't think it
would be a cleaner way to expose things.

There's also the fact that newer SoCs like the V5 seem to allow connecting
any MIPI CSI-2 controller to any CSI controller, so the graph representation
is definitely welcome here.

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl+ijbYACgkQ3cLmz3+f
v9Fb1wgAh9Q8P4R5upBbkO+og7cJgFf/zB+D0ht5gGmg/DnFyx7Qbu0URcwTm99o
SS9l3PciZ2grf+J12pMOxobiIh2GuNQOXEOCdJkIDz7w6hw1IF9WQqBrY4anGsof
EYDHm4dRNr7dZHQl2vQwvSYZRsk4Kotd43w5JzSW/cU3+aAkMU/4O5DyO39JS92B
UOsBaw8r09Vp50SAEBRvmluXDo90m8Wi+LNT2qmXTo+aShRNYeS2vmBqiFg4YpgO
6kcdCDup8CHGi18b3ak4o8AGq8BJjAkjKpBVeJxWbF96eaxaQgKZ7JbgRxFCcmmL
tI6VBvxl6ULRZ3ws5QeQ9kq9EZjbBg==
=aT0d
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--

--===============4725074175859073471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4725074175859073471==--
