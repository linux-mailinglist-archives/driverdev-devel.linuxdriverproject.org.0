Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1912CBF5E
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 15:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EFD942E26C;
	Wed,  2 Dec 2020 14:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JWa5aDTn2m8h; Wed,  2 Dec 2020 14:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A59872E25D;
	Wed,  2 Dec 2020 14:16:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B8031BF3B9
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 35D7D8714D
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ao9yl7CbHVJf for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 14:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 349218714A
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 14:16:53 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0F5322001D;
 Wed,  2 Dec 2020 14:16:44 +0000 (UTC)
Date: Wed, 2 Dec 2020 15:16:44 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 06/19] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <X8ehzCjZJ3yC8YtJ@aptenodytes>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-7-paul.kocialkowski@bootlin.com>
 <20201201104321.rl3ujt5pjre6xlmm@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201201104321.rl3ujt5pjre6xlmm@gilmour>
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
Content-Type: multipart/mixed; boundary="===============2329247806497039571=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2329247806497039571==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bQSyNp+lgLUEvy9B"
Content-Disposition: inline


--bQSyNp+lgLUEvy9B
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 01 Dec 20, 11:43, Maxime Ripard wrote:
> On Sat, Nov 28, 2020 at 03:28:26PM +0100, Paul Kocialkowski wrote:
> > The A31 CSI controller supports two distinct input interfaces:
> > parallel and an external MIPI CSI-2 bridge. The parallel interface
> > is often connected to a set of hardware pins while the MIPI CSI-2
> > bridge is an internal FIFO-ish link. As a result, these two inputs
> > are distinguished as two different ports.
> >=20
> > Note that only one of the two may be present on a controller instance.
> > For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> > dedicated to parallel.
> >=20
> > Update the binding with an explicit ports node that holds two distinct
> > port nodes: one for parallel input and one for MIPI CSI-2.
> >=20
> > This is backward-compatible with the single-port approach that was
> > previously taken for representing the parallel interface port, which
> > stays enumerated as fwnode port 0. However, it is now marked as
> > deprecated and the multi-port approach should be preferred.
> >=20
> > Note that additional ports may be added in the future, especially to
> > support feeding the CSI controller's output to the ISP.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../media/allwinner,sun6i-a31-csi.yaml        | 86 ++++++++++++++++---
> >  1 file changed, 73 insertions(+), 13 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a3=
1-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-cs=
i.yaml
> > index 1fd9b5532a21..3bcee2d44f3c 100644
> > --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.y=
aml
> > @@ -43,6 +43,7 @@ properties:
> >    # See ./video-interfaces.txt for details
> >    port:
> >      type: object
> > +    deprecated: true
>=20
> I'm not sure we want to deprecate it. There's some SoCs with the same
> controller but without the MIPI-CSI block where this would be completely
> valid

I think we'll need to deprecate it when adding support for the ISP anyway,
so I figured we might as well do it now. But I'm okay to postpone this for =
now.

> >      properties:
> >        endpoint:
> > @@ -67,6 +68,59 @@ properties:
> > =20
> >      additionalProperties: false
> > =20
> > +  ports:
> > +    type: object
> > +
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: Parallel input port, connect to a parallel sensor
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +              bus-width:
> > +                enum: [ 8, 10, 12, 16 ]
> > +
> > +              pclk-sample: true
> > +              hsync-active: true
> > +              vsync-active: true
> > +
> > +            required:
> > +              - bus-width
> > +              - remote-endpoint
> > +
> > +        required:
> > +          - endpoint
> > +
> > +        additionalProperties: false
> > +
> > +      port@1:
> > +        type: object
> > +        description: MIPI CSI-2 bridge input port
> > +
> > +        properties:
> > +          reg:
> > +            const: 1
> > +
> > +          endpoint:
> > +            type: object
> > +
> > +            properties:
> > +              remote-endpoint: true
> > +
> > +            required:
> > +              - remote-endpoint
> > +
> > +        additionalProperties: false
>=20
> There's a schema for the OF-graph now, you'll want to use it.

I didn't know that, thanks for the tip! Will look into it.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--bQSyNp+lgLUEvy9B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/HocwACgkQ3cLmz3+f
v9GG9Af9H1paVLqMvziqXTI0WNg+VMR5O6DYyo7mI+qYy2k13gShP+emMEuZsLhm
vSOVR/gIRIotX+0dO2+BOj9ik0+7WiwtAfXdIsUo6kGhHxay1go4E8Xuy5YimqO2
zMcpf200AlTfTE+1dFfP0Cbujt5wWH0WSYwFL/pbckNDb1TLC6KFJfBIgtN4T9q2
31Ci4ZtaU1NmOrclYkJTT3eDtzYd4bqgbTScXJ+8gnnrIjRQi8jxEqOJGYj5sx5g
biJTcl8+INexfPsV6O9c3Jl0QnwjGMp8avD8cjnHVf4SsshhrIklOjAtVxjpAElZ
zmr7Z4hAcpREkZpZQy5bNeJjzm9gCg==
=O/vb
-----END PGP SIGNATURE-----

--bQSyNp+lgLUEvy9B--

--===============2329247806497039571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2329247806497039571==--
