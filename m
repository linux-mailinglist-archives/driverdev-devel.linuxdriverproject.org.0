Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4752336DADE
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 17:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0E04405A1;
	Wed, 28 Apr 2021 15:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRD4i0e-LpNT; Wed, 28 Apr 2021 15:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15C4140598;
	Wed, 28 Apr 2021 15:09:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51E1F1BF5DE
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 15:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FFC440560
 for <devel@linuxdriverproject.org>; Wed, 28 Apr 2021 15:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j22LA_0V7dcW for <devel@linuxdriverproject.org>;
 Wed, 28 Apr 2021 15:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9388B40543
 for <devel@driverdev.osuosl.org>; Wed, 28 Apr 2021 15:09:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DFC66141F;
 Wed, 28 Apr 2021 15:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619622583;
 bh=PivjCQ4OHe6j9i0UuVSGYTIEpWQw6cOVC+IdTduVEbQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ooui2sOIBvLuR0c2/kuF0MWZedMGpMAdwIOJ8bNGmvmzwPP3wHB+GBvjMxfCMbu9D
 UCQ6Dxvhd2DvzHnP4qJiU5QYzHYMxxAXs6+ZCxCBfj0q0bgNqC9YO0SWD+zIXlYM56
 1nQILdxPjC9imI/qwv/wRCiklBSL+UwjUdGUybK0SFofBiD0Qqeh3iIlyFoGlyOkKy
 J/XVsPdoKT1sNTULA7k/72zyJyTOdWsjkhar1dtyx+Z6QfDHqF/+o+CRN9dldyFshf
 LJtRXuvzDOFrY99tRjlH4HEyDbYc3/F7YoqsXVWrCA3Xz+PRnr4xcs51gShIbqgKsB
 nKaQNkEG8Aw/w==
Received: from johan by xi with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lblp7-00052P-6X; Wed, 28 Apr 2021 17:09:57 +0200
Date: Wed, 28 Apr 2021 17:09:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 20/79] staging: media: rkvdec: fix
 pm_runtime_get_sync() usage count
Message-ID: <YIl6xZegj9o5m8EF@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
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
 linux-rockchip@lists.infradead.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 28, 2021 at 04:51:41PM +0200, Mauro Carvalho Chehab wrote:
> The pm_runtime_get_sync() internally increments the
> dev->power.usage_count without decrementing it, even on errors.
> Replace it by the new pm_runtime_resume_and_get(), introduced by:
> commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> in order to properly decrement the usage counter and avoid memory
> leaks.

Again, there is no memory leak here either. Just a potential PM usage
counter leak.

> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index d821661d30f3..8c17615f3a7a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
>  	if (WARN_ON(!desc))
>  		return;
>  
> -	ret = pm_runtime_get_sync(rkvdec->dev);
> +	ret = pm_runtime_resume_and_get(rkvdec->dev);
>  	if (ret < 0) {
>  		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
>  		return;

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
