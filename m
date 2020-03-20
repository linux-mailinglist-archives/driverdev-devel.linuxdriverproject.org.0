Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C243518C95C
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 09:58:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDB6A24DFD;
	Fri, 20 Mar 2020 08:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6-ceJk35JJW; Fri, 20 Mar 2020 08:58:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 733372357A;
	Fri, 20 Mar 2020 08:58:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64F9A1BF31B
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 08:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D8A8880DF
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 08:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZwcxI4ztG9k for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 08:58:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8D7C87FCC
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 08:58:10 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mo7if-1jeAAm1Fxz-00pewW; Fri, 20 Mar 2020 09:57:51 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id D01EF64E13A;
 Fri, 20 Mar 2020 08:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8WVdriKV_24H; Fri, 20 Mar 2020 09:57:49 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 88A6664E076;
 Fri, 20 Mar 2020 09:57:49 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 09:57:49 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 03CEB80524; Fri, 20 Mar 2020 09:57:49 +0100 (CET)
Date: Fri, 20 Mar 2020 09:57:48 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 05/10] media: adv748x: add support for HDMI audio
Message-ID: <20200320085748.GC4344@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <252bb433f47b0ccb61bb077abdbd892091abc550.1584639664.git.alexander.riesen@cetitec.com>
 <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7764
X-Provags-ID: V03:K1:wVJ3OvhV0Lvry0hgcgROi8Lpbax9cgifbiymKG7FRbbbjAK1rX0
 Is0O+5SFuT17dvunKoqEGCwkjWmyvRAwfuARYtS+7Hfh785pgLXdL6dcbIOi6sp+zn7cFrT
 lwdJU/vpOTIFoz3tYZKAhrUG8jPAGIhmJumC2obezAomNKeWhJ91+U2KXS752GQWo3q5RJU
 RLerO04OwjnEpPnGC9Vzg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:uNMETWAQjQg=:vLEFwoWAelStQ0k7nCUVNT
 aCVw9ozlhp45UIJqEh/USKF9RgevErT2upztWoeYjACvqVIBIEEogFQakTQsiipMm1CDW6MoB
 XnAqzycEx64LZ7rmN470XIj0avElWBShMm+zyN0K2t+JFt5vKLHhwY7YGPIMVwy+yTdTjg/rP
 99SU4WMGxUt8ulLUdPsgVEGgnLsdBnoVsblpGsM+gwxjCXNLDMNREKAGv8ixgE+UJZtJIfRp+
 FpZKH0yADUGcZxKDOKzCCeNPxN0YgxIrGG5Jpz3pek3PLzaZW/GCxen9LZuQhsV4LyeuXWL5C
 F576r7CXv9zaxd9eScgDaeta68I2xklolW2cfo0R4Ks2azs4lyo2BAkuJb5xRbKL7j2RSYcKS
 plEGX4KSs1je913qrf44VhgZKzN8GmeC8GlJTcn+Xt24pyfb922HVEBfsMSm/caWpBiXsino+
 yJhgeuycnrseXlpENT78oBd+OW6/ocUNj/XmiQXkJfISAfriZTRLYjdCQsNoaZsq0MtbRwPxN
 qesn7vFjAbM9aEbZsHF2ePInrD4g1ESAVo4Re5KPNpOHY60kZ/RJx2mh+tCTTWkjPnT3BVTk/
 A9y363R6OQ707Kn37QjqY+ed8vOBKtMCvnzGzwAoI9rA5iggSnPcK3MPYm+764GfEistE89xM
 6+jnmggijWTyUVottTgIJw4aW3JloGlsTJTHmzylgjb350BLxlpBR3rljcJsUiah7j4LfJuOG
 ey9WEan1X3myyUZLH9tZ0LbI5sPAoaMMPYSvSkuAXMxp/UqhPsJecI5Q4wLpY2OLfUdQWZDui
 u+GNLb6zZ5GFBuSzElEldypinSlBLkPjv80wi8buFIT3E1KE8Qi5vo6jIGuBv9llBUigJ87
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Geert,

Geert Uytterhoeven, Fri, Mar 20, 2020 09:43:29 +0100:
> CC linux-clk for the clock provider.

Thanks!

> > +int adv748x_dai_init(struct adv748x_dai *dai)
> > +{
> > +       int ret;
> > +       struct adv748x_state *state = adv748x_dai_to_state(dai);
> > +
> > +       dai->mclk = clk_register_fixed_rate(state->dev,
> > +                                           "adv748x-hdmi-i2s-mclk",
> 
> I assume there can be multiple adv748x instances in the system?
> Hence the clock name should be unique for each instance.

I think that can happen.

Is it alright to derive the clock name from the device name? E.g.:
adv748x.4-0070-mclk? Where "adv748x.4-0070" is a struct device->name.

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
