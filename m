Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCD38CFE6
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 11:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FAB02202E;
	Wed, 14 Aug 2019 09:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRpvjEZH0iPd; Wed, 14 Aug 2019 09:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2EDB320784;
	Wed, 14 Aug 2019 09:42:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 549041BF363
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 09:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EB1587117
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 09:42:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xYNz5rPU0aD for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 09:42:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hillosipuli.retiisi.org.uk (retiisi.org.uk [95.216.213.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADD838701E
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 09:42:52 +0000 (UTC)
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 7A1F3634C89;
 Wed, 14 Aug 2019 12:42:38 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hxpnh-0000u7-SD; Wed, 14 Aug 2019 12:42:37 +0300
Date: Wed, 14 Aug 2019 12:42:37 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v3 1/3] ARM: dts: imx6ul: Add csi node
Message-ID: <20190814094237.GJ2527@valkosipuli.retiisi.org.uk>
References: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731163257.32448-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi S=E9bastien,

On Wed, Jul 31, 2019 at 06:32:57PM +0200, S=E9bastien Szymanski wrote:
> Add csi node for i.MX6UL SoC.
> =

> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>

This should be probably merged through the ARM tree.

I can take the other two.

> ---
> =

> Changes for v3:
>  - none
> =

> Changes for v2:
>  - only "mclk" clock is required now.
> =

>  arch/arm/boot/dts/imx6ul.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index 81d4b4925127..56cfcf0e5084 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -957,6 +957,15 @@
>  				};
>  			};
>  =

> +			csi: csi@21c4000 {
> +				compatible =3D "fsl,imx6ul-csi", "fsl,imx7-csi";
> +				reg =3D <0x021c4000 0x4000>;
> +				interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks =3D <&clks IMX6UL_CLK_CSI>;
> +				clock-names =3D "mclk";
> +				status =3D "disabled";
> +			};
> +
>  			lcdif: lcdif@21c8000 {
>  				compatible =3D "fsl,imx6ul-lcdif", "fsl,imx28-lcdif";
>  				reg =3D <0x021c8000 0x4000>;

-- =

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
