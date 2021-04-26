Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D20D36B158
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 12:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 946EE402B1;
	Mon, 26 Apr 2021 10:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UBKaLTsYSZee; Mon, 26 Apr 2021 10:11:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3B9440264;
	Mon, 26 Apr 2021 10:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F41321BF403
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 10:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0F75830C1
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 10:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QsOdctKQ0KN for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 10:11:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3200E82E19
 for <devel@driverdev.osuosl.org>; Mon, 26 Apr 2021 10:11:16 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id c4so16329063wrt.8
 for <devel@driverdev.osuosl.org>; Mon, 26 Apr 2021 03:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:content-transfer-encoding:date:message-id:cc:subject
 :from:to:references:in-reply-to;
 bh=6QJuBXRzJn2AF9buhoiLcgCgPyLx4ghe04B214br8tk=;
 b=bmowWUwJPdLle6EVB+jkPN3+4gi1p99iRZVN9vq7P3avoRZQRJ3TsIdOegV46+FQkh
 go+MXbeLjk2E2rncmkHnArovf1hnt2sn8/pknG4+WXCqX3l0Dv7KR1wqjdpCOJPzfYaA
 /DtY+4zkL0gDI5tUKgNwjuL921ejoi7/5R5WPzYXvt829R5JWqwXoKQhyKW8y1oCwzAX
 4EvueEoFP1U3bEPBXdZvMMJiGavh718lBxN37vrUoVFQF802sZFnxrRYPfs9pcbK2poJ
 wFiM9cbT1sFp/w2uFyfeFdc4aCqyXcBjXJb0vp+GmM9bcas88qdNY9bWzCLHbW8L12wd
 wZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:date
 :message-id:cc:subject:from:to:references:in-reply-to;
 bh=6QJuBXRzJn2AF9buhoiLcgCgPyLx4ghe04B214br8tk=;
 b=RA2sVvyU2nwymHYHqKMTRm6bZ8cGMjhSzjxmwP5fJjECrXw5KFyHDoOWj3JMLcZje/
 sZMreqaZOKhdPE5p9yXqlXDAtGSXdsLRg+b3AEY9oQL4dGizm7vcA2wrQWdQJGzugJul
 K0AnEoUlRR3bHcrqob7YriWz2EiOiqQsSiCz8I4xFSzMkq/8Nly9nEUmCs9TdNokTY7J
 LMG/Tc7Z6jVT6WG5JuDGYohgV8TV3ErnAYc3n7bfKeu0tDJk0q1RIO5ow1/AsbzO7Psg
 k90TnUE3x6T+ZhapIBMDe+1l06GTNd1BM+ASqMzRyGKHwM9JVquIEeKbbzW+7r0PMDbi
 g6Fg==
X-Gm-Message-State: AOAM530GBPm4C0PwXwY2fL1tPVkxxDcdZg8PyDx0Jkv34B/AO0m4g4i1
 kt+FRmBiYbH0Ve/KxjiCrSb/tIxEPjCf+w==
X-Google-Smtp-Source: ABdhPJzDZ3attoVnXeyn+fChhpBJF1lVz+ag12kYIzWsOz4Xclar1aHxa9Q2LuDCRIipxhRncod7dw==
X-Received: by 2002:a5d:47cc:: with SMTP id o12mr21898459wrc.227.1619431874480; 
 Mon, 26 Apr 2021 03:11:14 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id g6sm7391184wrr.63.2021.04.26.03.11.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 03:11:13 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 26 Apr 2021 11:11:13 +0100
Message-Id: <CAXKOS5IEQ7O.393TTUPR42AWE@arch-thunder>
Subject: Re: [PATCH 14/78] staging: media: imx7-mipi-csis: use
 pm_runtime_resume_and_get()
From: "Rui Miguel Silva" <rmfrfs@gmail.com>
To: "Mauro Carvalho Chehab" <mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <d5f5cb75e48ef7386f83ed023ec3dc1f5be5d08f.1619191723.git.mchehab+huawei@kernel.org>
In-Reply-To: <d5f5cb75e48ef7386f83ed023ec3dc1f5be5d08f.1619191723.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Steve
 Longerbeam <slongerbeam@gmail.com>, mauro.chehab@huawei.com,
 Shawn Guo <shawnguo@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,
On Sat Apr 24, 2021 at 7:44 AM WEST, Mauro Carvalho Chehab wrote:
> Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> added pm_runtime_resume_and_get() in order to automatically handle
> dev->power.usage_count decrement on errors.
>
> Use the new API, in order to cleanup the error check logic.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Thanks, looks good.

Acked-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
	 Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 025fdc488bd6..1dc680d94a46 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -695,11 +695,10 @@ static int mipi_csis_s_stream(struct v4l2_subdev *mipi_sd, int enable)
>  
>  		mipi_csis_clear_counters(state);
>  
> -		ret = pm_runtime_get_sync(&state->pdev->dev);
> -		if (ret < 0) {
> -			pm_runtime_put_noidle(&state->pdev->dev);
> +		ret = pm_runtime_resume_and_get(&state->pdev->dev);
> +		if (ret < 0)
>  			return ret;
> -		}
> +
>  		ret = v4l2_subdev_call(state->src_sd, core, s_power, 1);
>  		if (ret < 0 && ret != -ENOIOCTLCMD)
>  			goto done;
> -- 
> 2.30.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
