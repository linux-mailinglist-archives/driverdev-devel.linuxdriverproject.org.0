Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA2CA5D98
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 23:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15AF18682A;
	Mon,  2 Sep 2019 21:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDrttRw4J9K3; Mon,  2 Sep 2019 21:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5BA58666F;
	Mon,  2 Sep 2019 21:37:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 624141BF3F9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 21:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5EE5187E7D
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 21:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STOODWaC2pFE for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 21:37:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 91A7D87A5F
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 21:37:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z11so15265981wrt.4
 for <devel@driverdev.osuosl.org>; Mon, 02 Sep 2019 14:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=AzTuyC2UsbNpm6l7U9X8UINePV0sxSWA4lyUt5FUF8I=;
 b=ACOXOZftMzxnBXf7Mn8TNUGkt5tTRL0PxYAd9HIEyOmhxpyBC2Xs0YAiO2WCsQGZuM
 2RyyEMVjxsUXBfHRnbvsgdAJ0Soi7FTywBM7MiTPh/31uIqySyseSdQZ2X+ucXc/NAmB
 zzx7xB9CHW0AQlMugYjiOAr6J2CMaC4T4CTvmSNc4o6Gmrs3GUD3qiHcaceT2XEampVQ
 uv3DSFPyxEaoUQHtQj+MFFif6DI37sQ3URILMUTlkVDslod+EUX47nfEHhue5U0gMKpM
 4xjaCMmwR/X6+Pc/5og0XwtV56aBpEjjx+8JUbqJ613u7EsgbM4A4Bz6vFeED2fmwLm0
 PEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=AzTuyC2UsbNpm6l7U9X8UINePV0sxSWA4lyUt5FUF8I=;
 b=AEylcMS6wr4JE/BdvhCQcCQ0hu79QC0+8zNnKUl9fb+nASMPOcMPC3jZP6GBLigxe/
 rffmq2pHIi3DJE0sbS4snay09N8lvDd0GrfsRPmKki9DPQChQCpUJ5ydWA+WMsBgTN40
 d0DFA2TM0FdOWGOYAENVCC3AMg5rXLdGwu7IxxB/neYnMvbqDSNOKw8oRskLVXVOogl6
 oVhhOUVV1oovTcMRuhfLiepbtA+n3ClKDOBDrH0iVmn5L9zIQvQ0HLiTf9ys7qlUVWco
 kQLTjR4TnpbffNvp5R6pMbafy3J9lWZ47ny8+G+l3QV8KoDXF5gEJWtRGojavzjKJs4E
 W8Hg==
X-Gm-Message-State: APjAAAUwtucJgLzfbJ7duR65Q1e6k/fQa1feVmk7afWmEbbCfdfNPQeq
 i2YF8kQZQFW5lmJm7wvrz9o=
X-Google-Smtp-Source: APXvYqziqzBEOwGLRmlaO0Yb8EPO9joHZ7A7//D5mVWpDB+g5EX3APsttrwr1cYJsIvfbbQRjE3bKg==
X-Received: by 2002:adf:f30e:: with SMTP id i14mr24352349wro.288.1567460265983; 
 Mon, 02 Sep 2019 14:37:45 -0700 (PDT)
Received: from [172.30.89.46] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id q24sm23219092wmc.3.2019.09.02.14.37.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 14:37:45 -0700 (PDT)
Subject: Re: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
To: Rui Miguel Silva <rmfrfs@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-16-slongerbeam@gmail.com> <m3blw35970.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <b648b587-110d-8e6a-8b9c-10e8dbb9561e@gmail.com>
Date: Mon, 2 Sep 2019 14:37:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <m3blw35970.fsf@gmail.com>
Content-Language: en-US
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rui,

On 9/2/19 2:38 AM, Rui Miguel Silva wrote:
> Hi Steve,
> On Tue 06 Aug 2019 at 00:34, Steve Longerbeam wrote:
>> Implement a notifier bound op to register media links from the remote
>> sub-device's source pad(s) to the CSI sink pad.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>>   drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>> index a1c96c52a606..f71ac485f780 100644
>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>> @@ -196,6 +196,11 @@ struct imx7_csi {
>>   	struct completion last_eof_completion;
>>   };
>>
>> +static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
>>
> As the other one add the namespace for the function name:
> imx7_csi_notifier_to_dev
>
> other than this, looks good to me.

Thanks for the review. I will make those changes in next rev.

Steve

>
>
>> +{
>> +	return container_of(n, struct imx7_csi, notifier);
>> +}
>> +
>>   static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
>>   {
>>   	return readl(csi->regbase + offset);
>> @@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
>>   	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
>>   }
>>
>> +static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
>> +				 struct v4l2_subdev *sd,
>> +				 struct v4l2_async_subdev *asd)
>> +{
>> +	struct imx7_csi *csi = notifier_to_dev(notifier);
>> +	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
>> +
>> +	return media_create_fwnode_pad_links(sink,
>> +					     dev_fwnode(csi->sd.dev),
>> +					     &sd->entity,
>> +					     dev_fwnode(sd->dev), 0);
>> +}
>> +
>> +static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
>> +	.bound = imx7_csi_notify_bound,
>> +};
>> +
>>   static int imx7_csi_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> @@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
>>
>>   	v4l2_async_notifier_init(&csi->notifier);
>>
>> +	csi->notifier.ops = &imx7_csi_notify_ops;
>> +
>>   	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
>>   						sizeof(struct v4l2_async_subdev),
>>   						NULL, 0,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
