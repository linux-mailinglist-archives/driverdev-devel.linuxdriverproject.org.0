Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5B11DBF4
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 03:05:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28D1487330;
	Fri, 13 Dec 2019 02:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUomjHbvJ6FD; Fri, 13 Dec 2019 02:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA137872FD;
	Fri, 13 Dec 2019 02:05:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5231BF298
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 02:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90970872FD
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 02:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSoFTSz_iLCh for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 02:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 92BFB872C2
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 02:05:18 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q9so4543341wmj.5
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 18:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4KHnlSOE+u7gVwbfHgyHTQo5E29XNhzxa8pc2Uz0sSQ=;
 b=aGpdExK4CWD+ZFqM0use0gYjMn76UZwWr+c2NHqwZbnkLlkHzOQ3DPK9Ov5qdUnj5+
 5XkaPpAJlELoFlHtLTFUOabW96QgYE6lBDAHYMtTSAXtk7IKYeOoKC0HnKVJ5ten1SYD
 0R4TFyCfaQLLTzI6bqvJVAxR9kfSDCuuKbUQClOS1ew3nvhup6IVnGT6a2hJqU0I4HnE
 qErauDVPA6nmfvr/MqinVjOVJhcP7unZeZV3U6ipkgJPU2VKc2IE9axD03IsNtqOlALB
 K8AD9AEzf0rZbT/VRhP73Cl8YzHwCnZvnVJThMXcZgAlw9VrEjQ+S8RisIFpMNiGKQyd
 8ZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4KHnlSOE+u7gVwbfHgyHTQo5E29XNhzxa8pc2Uz0sSQ=;
 b=FJdne9TifaiexsJebnXBXvb59KEA9ixeBf2l15uYMlwd01wnrQQGvHCBi/hPL7JDPU
 ryEkMpFOEsWtIEHuNno4UVTVoCYsmbkXxV7/a5Y2rPrKkPxF6OPGqPwqo8Gied9cVR5y
 lp9EmCtrnpKRTZFWWL5EgNVsBgkpSHhMvEWI63DhR090bW9THtbgY8iM2jsbzKvG0F51
 D4iBkOT2D4Sw0H+8xnKxpwoft2LGVsPIfvrHqZnaRo1fvlSE6Yy2bd514hi5OK0rO2xv
 EkLi1VV+5EWIHlr7kbPW5E8VEVPAWwZ4A2rFEJ1/blhcSm4bIFhd8j5CDJdWdCA96OPp
 1uBA==
X-Gm-Message-State: APjAAAVOLUgxVkipLHWddlayhvJLSI/WaL0m95XgOtS1zpGosktIAcOX
 Naxa7j58wwVdOaEZPwVfyns=
X-Google-Smtp-Source: APXvYqw5cMIDLL9NgFGAlF/E0fKpuzAyyOpNrDp+ABiAIecGcepzvQBIHE1252bGWMaBHoLtILsc5w==
X-Received: by 2002:a1c:a98e:: with SMTP id s136mr9717036wme.140.1576202716814; 
 Thu, 12 Dec 2019 18:05:16 -0800 (PST)
Received: from [172.30.89.135] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id m10sm8224474wrx.19.2019.12.12.18.05.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 18:05:15 -0800 (PST)
Subject: Re: [PATCH] media: imx7-mipi-csis: Add the missed
 v4l2_async_notifier_cleanup in remove
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20191209085828.16183-1-hslester96@gmail.com>
 <20191212115134.GA1895@kadam>
 <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <def58acb-ae42-856a-f61d-645dcfbbe3f7@gmail.com>
Date: Thu, 12 Dec 2019 18:05:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212190858.nslwdcjpbjnrfvq2@arch-thunder.localdomain>
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
Cc: devel@driverdev.osuosl.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 12/12/19 11:08 AM, Rui Miguel Silva wrote:
> Hi Dan,
> Thanks for the inputs.
> On Thu, Dec 12, 2019 at 02:51:34PM +0300, Dan Carpenter wrote:
>> On Mon, Dec 09, 2019 at 04:58:28PM +0800, Chuhong Yuan wrote:
>>> All drivers in imx call v4l2_async_notifier_cleanup() after
>>> unregistering the notifier except this driver.  This should be a
>>> miss and we need to add the call to fix it.
>>>
>>> Signed-off-by: Chuhong Yuan <hslester96@gmail.com> ---
>>> drivers/staging/media/imx/imx7-mipi-csis.c | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c
>>> b/drivers/staging/media/imx/imx7-mipi-csis.c index
>>> 99166afca071..2bfa85bb84e7 100644 ---
>>> a/drivers/staging/media/imx/imx7-mipi-csis.c +++
>>> b/drivers/staging/media/imx/imx7-mipi-csis.c @@ -1105,6 +1105,7 @@
>>> static int mipi_csis_remove(struct platform_device *pdev)
>>> mipi_csis_debugfs_exit(state);
>>> v4l2_async_unregister_subdev(&state->mipi_sd);
>>> v4l2_async_notifier_unregister(&state->subdev_notifier); +
>>> v4l2_async_notifier_cleanup(&state->subdev_notifier);
>>>   
>> In this case the "state->subdev_notifier" was never initialized or
>> used so both v4l2_async_notifier_unregister() and
>> v4l2_async_notifier_cleanup() are no-ops.
> I have applied this patch on top of Steve's series [0], since by the
> timeline I was expecting to be applied before this one, that series
> adds a bound notifier, even though, it is not named the same, eheh.
>
> That trigged me to think that this cleanup was correct since a
> notifier was initialized in probe.
>
> But as you say, it is a no-ops in the end.
>
> @Steve, that said, it looks that in [0], you will need to add some
> unregister and cleanup for the notifiers that you are adding in
> several places.

Well, turns out I had failed to notice that an async notifier was 
already included in 'struct imx7_csi' as 'subdev_notifier', even though 
it was unused. So I ended up creating a duplicate 'notifier'. I'll 
cleaning that up in v3 of [0].

Steve

> A patch to fix this will follow.
>
> ------
> Cheers,
>       Rui
>
>
>
> [0]: https://patchwork.kernel.org/project/linux-media/list/?series=207517
>
>> We should just delete "subdev_notifier".
>>
>> regards, dan carpenter
>>
>> _______________________________________________ devel mailing list
>> devel@linuxdriverproject.org
>> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
