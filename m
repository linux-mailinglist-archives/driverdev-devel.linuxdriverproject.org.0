Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6057919C42C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 16:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AF3B87FF2;
	Thu,  2 Apr 2020 14:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HSzMoI0nAXbG; Thu,  2 Apr 2020 14:31:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87D5C87FA5;
	Thu,  2 Apr 2020 14:31:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 733FE1BF42C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6EDB187FC3
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 14:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HD5A6cuHpjUU for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 14:31:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA22C87FA5
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 14:31:16 +0000 (UTC)
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jK0sC-00087G-L4; Thu, 02 Apr 2020 16:31:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Thu, 02 Apr 2020 16:31:11 +0200
Message-ID: <105956984.FXDh2DO4ZE@diego>
In-Reply-To: <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am Donnerstag, 2. April 2020, 15:48:02 CEST schrieb Johan Jonker:
> Hi Helen,
> 
> > From: Helen Koike <helen.koike@collabora.com>
> 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index 33cc21fcf4c10..fc0295d2a65a1 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -1394,6 +1394,17 @@ io_domains: io-domains {
> >  			status = "disabled";
> >  		};
> >  
> 
> > +		mipi_dphy_rx0: mipi-dphy-rx0 {
> 
> For Heiko sort syscon@ff770000 subnodes alphabetical or reg value first?

Similar to main nodes ... so things without reg alphabetical,
the rest by reg address


> 
> > +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
> > +			clocks = <&cru SCLK_MIPIDPHY_REF>,
> 
> > +				<&cru SCLK_DPHY_RX0_CFG>,
> > +				<&cru PCLK_VIO_GRF>;
> 
> Align                            ^
> 
> > +			clock-names = "dphy-ref", "dphy-cfg", "grf";
> > +			power-domains = <&power RK3399_PD_VIO>;
> > +			#phy-cells = <0>;
> > +			status = "disabled";
> > +		};
> > +
> >  		u2phy0: usb2-phy@e450 {
> >  			compatible = "rockchip,rk3399-usb2phy";
> >  			reg = <0xe450 0x10>;
> 
> 




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
