Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5CB36C85B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 17:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D170F6080E;
	Tue, 27 Apr 2021 15:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Tuey5qOqNUA; Tue, 27 Apr 2021 15:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F06B96067C;
	Tue, 27 Apr 2021 15:09:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F014B1BF356
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 15:09:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFDA740122
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 15:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEZGHm2O1os2 for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 15:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5EC14015E
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 15:08:55 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B288931B;
 Tue, 27 Apr 2021 08:08:54 -0700 (PDT)
Received: from [10.57.61.101] (unknown [10.57.61.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 053013F73B;
 Tue, 27 Apr 2021 08:08:52 -0700 (PDT)
Subject: Re: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
Date: Tue, 27 Apr 2021 16:08:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
Content-Language: en-GB
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
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2021-04-27 11:27, Mauro Carvalho Chehab wrote:
> Despite other *_get()/*_put() functions, where usage count is
> incremented only if not errors, the pm_runtime_get_sync() has
> a different behavior, incrementing the counter *even* on
> errors.
> 
> That's an error prone behavior, as people often forget to
> decrement the usage counter.
> 
> However, the hantro driver depends on this behavior, as it
> will decrement the usage_count unconditionally at the m2m
> job finish time, which makes sense.
> 
> So, intead of using the pm_runtime_resume_and_get() that
> would decrement the counter on error, keep the current
> API, but add a documentation explaining the rationale for
> keep using pm_runtime_get_sync().
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>   drivers/staging/media/hantro/hantro_drv.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 595e82a82728..96f940c1c85c 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -155,6 +155,13 @@ static void device_run(void *priv)
>   	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
>   	if (ret)
>   		goto err_cancel_job;

..except this can also cause the same pm_runtime_put_autosuspend() call 
without even reaching the "matching" get below, so rather than some kind 
of cleverness it seems more like it's just broken :/

Robin.

> +
> +	/*
> +	 * The pm_runtime_get_sync() will increment dev->power.usage_count,
> +	 * even on errors. That's the expected behavior here, since the
> +	 * hantro_job_finish() function at the error handling code
> +	 * will internally call pm_runtime_put_autosuspend().
> +	 */
>   	ret = pm_runtime_get_sync(ctx->dev->dev);
>   	if (ret < 0)
>   		goto err_cancel_job;
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
