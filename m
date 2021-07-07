Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66803BE5FD
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Jul 2021 11:52:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB97C40492;
	Wed,  7 Jul 2021 09:52:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mwyUUxcC25fr; Wed,  7 Jul 2021 09:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E62940132;
	Wed,  7 Jul 2021 09:52:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 587A51BF228
 for <devel@linuxdriverproject.org>; Wed,  7 Jul 2021 09:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 540DC4066A
 for <devel@linuxdriverproject.org>; Wed,  7 Jul 2021 09:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fc7LMxVuoKJp for <devel@linuxdriverproject.org>;
 Wed,  7 Jul 2021 09:52:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBA4A4065F
 for <devel@linuxdriverproject.org>; Wed,  7 Jul 2021 09:52:42 +0000 (UTC)
Received: by ajax-webmail-mail.loongson.cn (Coremail) ; Wed, 7 Jul 2021
 17:52:37 +0800 (GMT+08:00)
X-Originating-IP: [10.20.41.133]
Date: Wed, 7 Jul 2021 17:52:37 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5pmo6Ziz?= <lichenyang@loongson.cn>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Subject: Reply: Re: [PATCH 3/3] drm/loongson: Add interrupt driver for LS7A
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10a build 20191018(4c4f6d15)
 Copyright (c) 2002-2021 www.mailtech.cn .loongson.cn
In-Reply-To: <20210706090501.GD26651@kadam>
References: <20210706063631.180665-1-lichenyang@loongson.cn>
 <20210706063631.180665-3-lichenyang@loongson.cn>
 <20210706090501.GD26651@kadam>
MIME-Version: 1.0
Message-ID: <40b7d266.9aad.17a806232b5.Coremail.lichenyang@loongson.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: AQAAf9BxsOJleeVgY2wdAA--.12122W
X-CM-SenderInfo: xolfxvxq1d0wo6or00hjvr0hdfq/1tbiAQAOA13QvNohhgAIsI
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
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
Cc: devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

&gt; -----Original Messages-----
&gt; From: "Dan Carpenter" <dan.carpenter@oracle.com>
&gt; Sent Time: 2021-07-06 17:05:01 (Tuesday)
&gt; To: lichenyang <lichenyang@loongson.cn>
&gt; Cc: devel@linuxdriverproject.org
&gt; Subject: Re: [PATCH 3/3] drm/loongson: Add interrupt driver for LS7A
&gt; 
&gt; On Tue, Jul 06, 2021 at 02:36:31PM +0800, lichenyang wrote:
&gt; &gt;  int loongson_crtc_init(struct loongson_device *ldev, int index)
&gt; &gt; diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
&gt; &gt; index 252be9e25aff..89450c8c9102 100644
&gt; &gt; --- a/drivers/gpu/drm/loongson/loongson_drv.c
&gt; &gt; +++ b/drivers/gpu/drm/loongson/loongson_drv.c
&gt; &gt; @@ -167,6 +167,10 @@ static int loongson_drm_load(struct drm_device *dev, unsigned long flags)
&gt; &gt;  	if (ret)
&gt; &gt;  		dev_err(dev-&gt;dev, "Fatal error during modeset init: %d\n", ret);
&gt; &gt;  
&gt; &gt; +	ret = loongson_irq_init(ldev);
&gt; &gt; +	if (ret)
&gt; &gt; +		dev_err(dev-&gt;dev, "Fatal error during irq init: %d\n", ret);
&gt; 
&gt; It feel like there should be proper cleanup and error handling on this
&gt; path instead of just printing an error and continuing.

Thank you very much for your advice.

&gt; 
&gt; &gt; +
&gt; &gt;  	drm_kms_helper_poll_init(dev);
&gt; &gt;  	drm_mode_config_reset(dev);
&gt; &gt;  
&gt; 
&gt; regards,
&gt; dan carpenter


------------------------------
Loongson LiChenyang</lichenyang@loongson.cn></dan.carpenter@oracle.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
