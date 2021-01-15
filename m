Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 225912F7783
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 12:21:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F29CA86CFB;
	Fri, 15 Jan 2021 11:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NiBrvUEQGMzA; Fri, 15 Jan 2021 11:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC58486AC8;
	Fri, 15 Jan 2021 11:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4CF51BF2C6
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 11:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E062886CAC
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 11:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PKXrfwtofJ32 for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 11:20:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0178.hostedemail.com
 [216.40.44.178])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7AD3D86AC8
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 11:20:58 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 98C01180244E5
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 11:04:02 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id F3DCF100E7B44;
 Fri, 15 Jan 2021 11:03:59 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1261:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2561:2564:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:7652:7875:7903:8599:8957:9025:9388:10004:10049:10400:10848:11232:11657:11658:11914:12043:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14181:14659:14721:14849:21080:21451:21627:21939:30054:30080:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: sock06_080489a2752e
X-Filterd-Recvd-Size: 2111
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Fri, 15 Jan 2021 11:03:58 +0000 (UTC)
Message-ID: <7d5c085f456ab83700c26db467b22dc9ccf233ac.camel@perches.com>
Subject: Re: [PATCH v3 4/4] phy: phy-hi3670-usb3: move driver from staging
 into phy
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Vinod Koul
 <vkoul@kernel.org>
Date: Fri, 15 Jan 2021 03:03:57 -0800
In-Reply-To: <78e54d594b9e31d603d913048a7bc89d3a089608.1610697726.git.mchehab+huawei@kernel.org>
References: <cover.1610697726.git.mchehab+huawei@kernel.org>
 <78e54d594b9e31d603d913048a7bc89d3a089608.1610697726.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2021-01-15 at 09:10 +0100, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.
[]
> diff --git a/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
[]
> +++ b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,hi3670-usb3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Hisilicon Kirin970 USB PHY
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +description: |+
> +  Bindings for USB3 PHY on HiSilicon Kirin 970.

The cover letter for v3 says there's a blank link after maintainers:
here but not found...


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
