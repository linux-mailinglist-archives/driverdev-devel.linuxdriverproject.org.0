Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB729BF788
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 19:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33EEA86B90;
	Thu, 26 Sep 2019 17:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eg8o5yXOj3A6; Thu, 26 Sep 2019 17:25:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19F4486B11;
	Thu, 26 Sep 2019 17:25:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 433731BF853
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E4B9842A5
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 17:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0_IW2Vhl6UjK for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 17:25:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C88DD835D8
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 17:25:01 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id x10so1921468pgi.5
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 10:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=t8KSaOsUA0A5+mnKTZ8gR5rlbkOnzjQQsfjJ840XQJk=;
 b=A4JJp7qYcNE79wFFw4ug9NrWVG1ouENyKepTkUqyu7bQIMdRc6liLU2w3bG5seaQuT
 LSO+YCCywdnVWigb9qRkIMsvB+XTbIlnWTZxGC8LWCbjCLarTkrN6FqCB9fmu7sJgTGr
 m6T8uV0jsUJbohPR8HsMHw/N2P3nCr3TybgZBckxRuJ1k43A79nn1eDFiVlz7aqMTFjy
 QGHIKO6kxObLdhC8hVgxbKPyTPfnq8mdoId5uyeIYf1HFRRLVgaGdeBqc+i/dLyRwwhI
 YT3HU0j9ZQWpJx2wTuqaBS9qh6rMzAFJXjmyo1MFgHeXpm/gY03qVA7AENSwAefDqTUl
 cujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=t8KSaOsUA0A5+mnKTZ8gR5rlbkOnzjQQsfjJ840XQJk=;
 b=JRpDsKM6tDyn3U4vEWuKywo1VW5KtnUAOUeyMV5cXlzIkUwTNablX929zjSOqpYT0d
 sW/OViDTJFir9rSn9c0PCEucWW4lRyIXuNhf0CyurYe6a98YUlgvN7u+Fbw57eWRVVIi
 xFb9v0izxNqaHgXNKasC1OawuMPJQoJ3VP5fUfoGMr4cn+6jpFbMLkDjoGz+jOIlEnW9
 BdHTvE9/qlQFXisftecnPU5NVOGYykiKQdlAqUv/J08Wfq+yzNsLaeSi3G+9YrAY9xXI
 1Wxko5lPlFVSPU3hinKIEZregKI8QdqVmghRzK0g5MZGtZJ18/VBFHmfONVM7OclPxAW
 0uig==
X-Gm-Message-State: APjAAAX3BurIB7YN32mxos68fM2n2Tc4sacm73ULWS1ZBBCMnIvlijn+
 ORtrfKGMUprp4u6VN7ONKjM=
X-Google-Smtp-Source: APXvYqx4m+E7/H+s5Lc/cis9LXP8X2+1ZKGkWbYibcJmL4EcS/TtoInNtol0fEES4fLZX1bOcPPTKA==
X-Received: by 2002:a17:90a:77ca:: with SMTP id
 e10mr4659549pjs.24.1569518701338; 
 Thu, 26 Sep 2019 10:25:01 -0700 (PDT)
Received: from arch-late ([12.206.46.61])
 by smtp.gmail.com with ESMTPSA id 127sm4941845pfw.6.2019.09.26.10.24.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 10:25:00 -0700 (PDT)
References: <20190926155539.GA20744@sausagefarm>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Jeeeun Evans <jeeeunevans@gmail.com>
Subject: Re: [PATCH] staging: media: imx: Use devm_platform_ioremap_resource().
In-reply-to: <20190926155539.GA20744@sausagefarm>
Date: Thu, 26 Sep 2019 18:24:59 +0100
Message-ID: <m3wodvgec4.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, kernel@pengutronix.de,
 gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, p.zabel@pengutronix.de,
 slongerbeam@gmail.com, mchehab@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jeeeun,
On Thu 26 Sep 2019 at 16:55, Jeeeun Evans wrote:
> This patch fixes a warning by coccicheck:
> drivers/staging/media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use devm_platform_ioremap_resource for state -> regs
>
> Use devm_platform_ioremap_resource helper which wraps platform_get_resource()
> and devm_ioremap_resource() together.
>
> Signed-off-by: Jeeeun Evans <jeeeunevans@gmail.com>
>

Thanks for the patch.
LGTM.

Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

---
Cheers,
	Rui


>  drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..bf21db38441f 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
>  static int mipi_csis_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> -	struct resource *mem_res;
>  	struct csi_state *state;
>  	int ret;
>
> @@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
>  	mipi_csis_phy_init(state);
>  	mipi_csis_phy_reset(state);
>
> -	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	state->regs = devm_ioremap_resource(dev, mem_res);
> +	state->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(state->regs))
>  		return PTR_ERR(state->regs);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
