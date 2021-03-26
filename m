Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8D034AA19
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 15:37:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EC2D405D8;
	Fri, 26 Mar 2021 14:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LuL0uzo0O6UX; Fri, 26 Mar 2021 14:37:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E003405BD;
	Fri, 26 Mar 2021 14:37:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2949B1BF59E
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25C3C84C46
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_5Co3Y5XEXR for <devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 14:37:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CABFC84C47
 for <devel@driverdev.osuosl.org>; Fri, 26 Mar 2021 14:37:33 +0000 (UTC)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnaQ-0001Ln-5z; Fri, 26 Mar 2021 15:37:18 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnaO-0007mU-JM; Fri, 26 Mar 2021 15:37:16 +0100
Date: Fri, 26 Mar 2021 15:37:16 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <20210326143716.GA27823@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
 <20210326141156.GA8441@pengutronix.de>
 <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:29:00 up 36 days, 17:52, 99 users,  load average: 0.78, 0.37, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 26, 2021 at 03:26:15PM +0100, Benjamin Gaignard wrote:
> =

> Le 26/03/2021 =E0 15:11, Philipp Zabel a =E9crit=A0:
> > On Thu, Mar 18, 2021 at 09:20:35AM +0100, Benjamin Gaignard wrote:
> > > Introducing G2 hevc video decoder lead to modify the bindings to allow
> > > to get one node per VPUs.
> > > VPUs share one hardware control block which is provided as a phandle =
on
> > > an syscon.
> > > Each node got now one reg and one interrupt.
> > > Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> > > =

> > > To be compatible with older DT the driver is still capable to use 'ct=
rl'
> > > reg-name even if it is deprecated now.
> > > =

> > > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > > ---
> > > version 5:
> > > - This version doesn't break the backward compatibilty between kernel
> > >    and DT.
> > > =

> > >   .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++----=
---
> > >   1 file changed, 34 insertions(+), 19 deletions(-)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.y=
aml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > index 762be3f96ce9..79502fc8bde5 100644
> > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > @@ -15,22 +15,18 @@ description:
> > >   properties:
> > >     compatible:
> > > -    const: nxp,imx8mq-vpu
> > > +    oneOf:
> > > +      - const: nxp,imx8mq-vpu
> > > +      - const: nxp,imx8mq-vpu-g2
> > >     reg:
> > > -    maxItems: 3
> > > -
> > > -  reg-names:
> > > -    items:
> > > -      - const: g1
> > > -      - const: g2
> > > -      - const: ctrl
> > > +    maxItems: 1
> > >     interrupts:
> > > -    maxItems: 2
> > > +    maxItems: 1
> > >     interrupt-names:
> > > -    items:
> > > +    oneOf:
> > >         - const: g1
> > >         - const: g2
> > > @@ -46,14 +42,18 @@ properties:
> > >     power-domains:
> > >       maxItems: 1
> > > +  nxp,imx8mq-vpu-ctrl:
> > > +    description: Specifies a phandle to syscon VPU hardware control =
block
> > > +    $ref: "/schemas/types.yaml#/definitions/phandle"
> > > +
> > Should we drop the 'q' here, i.e. nxp,imx8m-vpu-ctrl so we can use the =
same
> > binding for i.MX8MM later?
> =

> I don't know if the control block is the same or not on IMX8MM, so I have=
 only
> put a compatible targeting IMX8MQ.

Oh, the compatible property of the control handle node can be different.
I'm just suggesting that this phandle property be called the same.
Otherwise we'd have to add another nxp,imx8mm-vpu-ctrl property and then
mark either of the two as required, depending on the compatible.

> > =

> > >   required:
> > >     - compatible
> > >     - reg
> > > -  - reg-names
> > >     - interrupts
> > >     - interrupt-names
> > >     - clocks
> > >     - clock-names
> > > +  - nxp,imx8mq-vpu-ctrl
> > >   additionalProperties: false
> > > @@ -62,18 +62,33 @@ examples:
> > >           #include <dt-bindings/clock/imx8mq-clock.h>
> > >           #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > -        vpu: video-codec@38300000 {
> > > +        vpu_ctrl: syscon@38320000 {
> > > +                 compatible =3D "nxp,imx8mq-vpu-ctrl", "syscon";
> > > +                 reg =3D <0x38320000 0x10000>;
> > > +        };
> > > +
> > > +        vpu_g1: video-codec@38300000 {
> > >                   compatible =3D "nxp,imx8mq-vpu";
> > > -                reg =3D <0x38300000 0x10000>,
> > > -                      <0x38310000 0x10000>,
> > > -                      <0x38320000 0x10000>;
> > > -                reg-names =3D "g1", "g2", "ctrl";
> > > -                interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> > > -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > > -                interrupt-names =3D "g1", "g2";
> > > +                reg =3D <0x38300000 0x10000>;
> > > +                interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > > +                interrupt-names =3D "g1";
> > > +                clocks =3D <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> > > +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> > Does the G1 VPU require the G2 clock and vice versa?
> =

> Yes either the control hardware block won't work.

Ok.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
