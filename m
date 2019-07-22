Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CF96FB7E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 10:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D975877F1;
	Mon, 22 Jul 2019 08:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dr2LSRlHj7lK; Mon, 22 Jul 2019 08:40:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58E1B8712D;
	Mon, 22 Jul 2019 08:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59F481BF34E
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E5E387118
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tvOo+63nk0T for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 08:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 582518712D
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 08:40:30 +0000 (UTC)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M8eOsg070238;
 Mon, 22 Jul 2019 03:40:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563784824;
 bh=TviAWhiRP3zQTB51r4gI+gZaJWkaHb/tZnv/A5V5Vec=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=iGDD/T/krkpcQWBLx7cJN+bhSHCfkTJfr4zmFgdjTROeqVqtmjIOb2TjaQPaq+Ew+
 xyJxkc12dBMvkmGrPryQRTAN9G3loNxthgqkCX4HiiAz/oKPGD8R6XUYsBor0MTDvW
 BnRcmxfHPb/gfiXi3HEXO0qiVt4aFZyBll1kTGao=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M8eOaw058289
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 03:40:24 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 03:40:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 03:40:23 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M8eIZk028120;
 Mon, 22 Jul 2019 03:40:19 -0500
Subject: Re: [PATCH] staging: media/davinci_vpfe: fix pinmux setup compilation
To: Arnd Bergmann <arnd@arndb.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190722081243.2084226-1-arnd@arndb.de>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <35b6ec33-f3d7-54ec-e9a0-3748ee9eb343@ti.com>
Date: Mon, 22 Jul 2019 14:10:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722081243.2084226-1-arnd@arndb.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
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
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
 devel@driverdev.osuosl.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mukesh Ojha <mojha@codeaurora.org>, Ioannis Valasakis <code@wizofe.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Arnd,

On 22/07/19 1:42 PM, Arnd Bergmann wrote:
> The dm365_isif staging driver uses an odd method for configuring its
> pin muxing by calling directly into low-level davinci platform specific
> code, even when being compile-tested for other platforms.
> 
> As we want davinci to be part of a multi-platform kernel, this will
> cause a build failure when those headers are no longer exported even
> for davinci:
> 
> drivers/staging/media/davinci_vpfe/dm365_isif.c: In function 'vpfe_isif_init':
> drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:2: error: implicit declaration of function 'davinci_cfg_reg'; did you mean 'omap_cfg_reg'? [-Werror=implicit-function-declaration]
>   davinci_cfg_reg(DM365_VIN_CAM_WEN);
>   ^~~~~~~~~~~~~~~
>   omap_cfg_reg
> drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:18: error: 'DM365_VIN_CAM_WEN' undeclared (first use in this function); did you mean 'DM365_ISIF_MAX_CLDC'?
>   davinci_cfg_reg(DM365_VIN_CAM_WEN);
>                   ^~~~~~~~~~~~~~~~~
> 
> Digging further, it seems that the platform data structures defined
> in drivers/staging/media/davinci_vpfe/vpfe.h are an incompatible
> version of the same structures in include/media/davinci/vpfe_capture.h,
> which is the version that is used by the platform code, so the
> combination that exists in the mainline kernel cannot be used.
> 
> The platform code already has an abstraction for the pinmux,
> in the form of the dm365_isif_setup_pinmux() helper. If we want
> to ever get to use the staging driver again, this needs to be
> read from the platform data passed to this driver, or rewritten
> to use the pinmux framework.
> 
> For the moment, pretend we pass the helper function in the
> staging platform driver to get it to build cleanly. I could
> not figure out how the staging driver relates to the code
> in drivers/media/platform/davinci/, some clarification on that
> would be helpful to decide what the long-term plan on this
> should be to either remove the staging driver as obsolete or
> integrate it with the rest in a way that actually works.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I looked at the history of updates on this driver over last 4 years.
None of them are towards fixing some issue found with the driver during
actual usage or for improving its design to move it out of staging.

I think no one is really using it or working on moving it out of
staging. Perhaps the right thing to do would be to delete it.

Thanks,
Sekhar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
