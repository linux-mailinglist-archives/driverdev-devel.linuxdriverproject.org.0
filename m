Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1877C23E078
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 20:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEBAD88687;
	Thu,  6 Aug 2020 18:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFIC3mRuiyVF; Thu,  6 Aug 2020 18:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54E3988651;
	Thu,  6 Aug 2020 18:34:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2353E1BF5E0
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E7F688651
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 18:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UDQY208RH3sd for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 18:34:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C49B8864D
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 18:34:29 +0000 (UTC)
Received: from [192.168.1.4] (unknown [176.88.145.153])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id A4228240008;
 Thu,  6 Aug 2020 18:34:25 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: <andy.shevchenko@gmail.com>
Date: Thu, 06 Aug 2020 21:34:22 +0300
Message-ID: <173c50d7bb0.2bfa.85c738e3968116fc5c0dc2de74002084@kernel.wtf>
In-Reply-To: <20200801220101.2783-1-cengiz@kernel.wtf>
References: <20200731083856.GF3703480@smile.fi.intel.com>
 <20200801220101.2783-1-cengiz@kernel.wtf>
User-Agent: AquaMail/1.25.2-1672 (build: 102500008)
Subject: Re: [PATCH v6] staging: atomisp: move null check to earlier point
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 Cengiz Can <cengiz@kernel.wtf>, mchehab@kernel.org, dan.carpenter@oracle.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Andy,

Can I get some feedback on v6 please?

I hope it suits your standards this time.

Thank you

On August 2, 2020 01:02:22 Cengiz Can <cengiz@kernel.wtf> wrote:

> `find_gmin_subdev()` that returns a pointer to `struct
> gmin_subdev` can return NULL.
>
> In `gmin_v2p8_ctrl()` there's a call to this function but the
> possibility of a NULL was not checked before its being dereferenced,
> i.e.:
>
>  /* Acquired here --------v */
>  struct gmin_subdev *gs = find_gmin_subdev(subdev);
>
>  /*  v------Dereferenced here */
>  if (gs->v2p8_gpio >= 0) {
>      ...
>  }
>
> With this change we're null checking `find_gmin_subdev()` result
> and we return an error if that's the case. We also WARN()
> for the sake of debugging.
>
> Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
> Reported-by: Coverity Static Analyzer CID 1465536
> Suggested-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
>
> Please do note that this change introduces a new return value to
> `gmin_v2p8_ctrl()`.
>
> [NEW] - raise a WARN and return -ENODEV if there are no subdevices.
>       - return result of `gpio_request` or `gpio_direction_output`.
>       - return 0 if GPIO is ON.
>       - return results of `regulator_enable` or `regulator_disable`.
>       - according to PMIC type, return result of `axp_regulator_set`
>         or `gmin_i2c_write`.
>       - return -EINVAL if unknown PMIC type.
>
> Patch Changelog:
>   v4: Fix minor typo in commit message
>   v5: Remove typo from email subject
>   v6: Remove duplicate Signed-off-by tag
>
> drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 5 ++++-
> 1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c 
> b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> index 0df46a1af5f0..1ad0246764a6 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> @@ -871,6 +871,9 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, 
> int on)
> 	int ret;
> 	int value;
>
> +	if (WARN_ON(!gs))
> +		return -ENODEV;
> +
> 	if (gs->v2p8_gpio >= 0) {
> 		pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
> 			gs->v2p8_gpio);
> @@ -881,7 +884,7 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, 
> int on)
> 			pr_err("V2P8 GPIO initialization failed\n");
> 	}
>
> -	if (!gs || gs->v2p8_on == on)
> +	if (gs->v2p8_on == on)
> 		return 0;
> 	gs->v2p8_on = on;
>
> --
> 2.27.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
