Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F345FCF55A
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 10:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEB9387686;
	Tue,  8 Oct 2019 08:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQhXrJ2jATEw; Tue,  8 Oct 2019 08:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 760B687632;
	Tue,  8 Oct 2019 08:54:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00A3E1BF255
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 08:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EDFC7221CC
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 08:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0ODpO26G-Kr for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 08:54:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 44436221B5
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 08:54:31 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f22so2230807wmc.2
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 01:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=jPjc7kEf9F+Pv9xjqePtdYZ594Xw4pebrrSpcO4H5N4=;
 b=VXbQXbEiRyeIqlW0AZpSfsqRElc3PukoxYh/xW9e2HGTceQ5yawq4mum9YQutGvzhI
 0RLQSx6WZ33d1ebeiZyKWg2KdYU/hzjwfAl++HsNPCDFIQqrqlqOsSoazQWcJlJL01tZ
 38ZpAVJ1R0scyy+S3wEqiI4JfYYMuasN8lYUUevJ4vsryturfwddfvGSXJzd07fbiyan
 7tOI/H0Ghup0R9vvIp6Fg0bYBmAbF4+7ZfZ+Z+wLJBwr0dnnvfeVNXxhGu/uNm6c7ShG
 N01T7YXz96jpOGivMBq7UDtFKrLnuzCJc1p78wOZXdkkJnsUNR4RoJvNiZh0w37P0yiw
 wGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=jPjc7kEf9F+Pv9xjqePtdYZ594Xw4pebrrSpcO4H5N4=;
 b=WkK2A1b9tADb5TZP3bNvkwiUAlyPgkmsE1cubVsO/OKtk7QZE8ygTZx1xNMoXHLBFi
 pElJUh1BYxcNue24a0BicTf5FuuCE/nfBItIsu39v2U1bWZw7iJp8/novBTSxf14ZuTp
 0WHLHim6m+gMfGajdcrAOafod+tPNNnxhIcFwzGBOs65zG+ntwRmwPNL7X9/jP02l79b
 XuYBXqOTFFCDNh9e1P0QXFixPdJViBL06TRgQM/N/5/kjxuoyUt0T3YAY1yJTTP7OYcE
 MULpY1vRur1JbnR7QHdOYe3rcamTuArgsem/PsVK7Nr/IxSTcW33FIOwaFNazw+INc7r
 Fzug==
X-Gm-Message-State: APjAAAXFULZryGShO11xqj1bREo5GVge27OYuN6DeDPOcy2GHPR2JtF0
 GpAnEVAzZ1y++ShCgk8c798=
X-Google-Smtp-Source: APXvYqy/HvGfAU/ArSF6LuxodfAOeqkQ5yg5iRJ5pMsJAj0kWWuPbGswQqfOhH3/3PSGAbUKm97rGA==
X-Received: by 2002:a05:600c:305:: with SMTP id
 q5mr2772331wmd.67.1570524869566; 
 Tue, 08 Oct 2019 01:54:29 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id g185sm1948555wme.10.2019.10.08.01.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 01:54:28 -0700 (PDT)
References: <1570515459-25609-1-git-send-email-hariprasad.kelam@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: media: imx: make use
 devm_platform_ioremap_resource
In-reply-to: <1570515459-25609-1-git-send-email-hariprasad.kelam@gmail.com>
Date: Tue, 08 Oct 2019 09:54:26 +0100
Message-ID: <m3lftv62il.fsf@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hariprasad,
Thanks for the patch
On Tue 08 Oct 2019 at 07:17, nobody wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>

Something went wrong formating the patch email, no To: nor From:

>
> fix below issue reported by coccicheck
> drivers/staging//media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use
> devm_platform_ioremap_resource for state -> regs
>

Sorry, but someone else, Jeeeun, already sent a patch for this
[0]. Thanks anyway.

---
Cheers,
	Rui


[0]: https://lore.kernel.org/linux-media/m3wodvgec4.fsf@gmail.com/

>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354..bf21db3 100644
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
