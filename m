Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 993782F6879
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 18:56:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B61A86C03;
	Thu, 14 Jan 2021 17:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUePZqpiJggG; Thu, 14 Jan 2021 17:56:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E36886BF3;
	Thu, 14 Jan 2021 17:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C14111BF9BD
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B7DD320452
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NBm8SjL0ZRDF for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 17:56:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0042.hostedemail.com
 [216.40.44.42])
 by silver.osuosl.org (Postfix) with ESMTPS id 285B420416
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 17:56:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 0857818037FFE
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 17:56:48 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 4A746837F24D;
 Thu, 14 Jan 2021 17:56:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:4321:5007:7652:7807:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12438:12740:12895:13069:13255:13311:13357:13439:13894:14659:14721:21080:21627:21990,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: vein42_380c97427528
X-Filterd-Recvd-Size: 2342
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Thu, 14 Jan 2021 17:56:43 +0000 (UTC)
Message-ID: <d9ebc10ac5c4ba5231ed50ef0d2a15f424547736.camel@perches.com>
Subject: Re: [PATCH v2 3/4] staging: hikey9xx: phy-hi3670-usb3.c:
 hi3670_is_abbclk_seleted() returns bool
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Vinod Koul
 <vkoul@kernel.org>
Date: Thu, 14 Jan 2021 09:56:41 -0800
In-Reply-To: <d1e0d94381e214157545d6808835fdfe99448f76.1610645385.git.mchehab+huawei@kernel.org>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <d1e0d94381e214157545d6808835fdfe99448f76.1610645385.git.mchehab+huawei@kernel.org>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yu Chen <chenyu56@huawei.com>, Alex Dewar <alex.dewar90@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2021-01-14 at 18:35 +0100, Mauro Carvalho Chehab wrote:
> Instead of using 1/0 for true/false, change the type to boolean
> and change the returned value.
[]
> diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging=
/hikey9xx/phy-hi3670-usb3.c
[]
> @@ -326,24 +326,24 @@ static int hi3670_phy_set_params(struct hi3670_priv=
 *priv)
> =A0	return ret;
> =A0}
> =

> -static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
> +static bool hi3670_is_abbclk_seleted(struct hi3670_priv *priv)

Presumably this should be "selected" not "seleted"

> =A0{
> =A0	u32 reg;
> =

> =A0	if (!priv->sctrl) {
> =A0		dev_err(priv->dev, "priv->sctrl is null!\n");
> -		return 1;
> +		return true;
> =A0	}
> =

> =A0	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
> =A0		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
> -		return 1;
> +		return true;
> =A0	}
> =

> =A0	if ((reg & USB_CLK_SELECTED) =3D=3D 0)
> -		return 1;
> +		return true;
> =

> -	return 0;
> +	return false;
> =A0}

	if (foo)
		return true;
	return false;

should generally be consolidated into a single test.

So this is perhaps better as:

	return (!(reg & USB_CLK_SELECTED));

But the return value seems backwards.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
