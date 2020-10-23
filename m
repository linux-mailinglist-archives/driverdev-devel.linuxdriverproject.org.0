Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F162976A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 20:13:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2ACD221C6;
	Fri, 23 Oct 2020 18:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vGexCDkT-Ebj; Fri, 23 Oct 2020 18:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 78A072035B;
	Fri, 23 Oct 2020 18:13:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACDE21BF39F
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A2CD2151E
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUC6Q5TZHwga for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 18:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B0C92035B
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 18:13:36 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id c15so3636004ejs.0
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 11:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J4Eh2qaJksTCTY1k45teLXaWXNH/ycvD9ltpm944k0Q=;
 b=lFi+TwD2vaAsrYHdJUzkp6N61fIOnh9+vKHJEudtGhn9CdTxA44JxC28ilTy4/53iD
 ZVNwMOqKf0jPH8k5codeD54T6uVec8mcd9Bk4K5U4bma2IoUpueoyD9uSEy78ml8VzRO
 LNcsCN+TUIF596XouiRcRboHJoyDTnt8yBoYr3qu92wlW8KRgB+TzWYlVReuER3Y9eT2
 jBaT+9DrkKSorVSnG5g4Zfn+XCrfUPJ/o91TjhXX9BrbjUxSp4dT1zTe6EkvYKk2TaPf
 aS6qcZz5zum5mdHIKGuv52mVvYKDP6G+CICO+eYC4YmEc1rzn+QCRmmtN+LFmBJpr+C0
 zX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J4Eh2qaJksTCTY1k45teLXaWXNH/ycvD9ltpm944k0Q=;
 b=p8v8cd2cbxoZIn87U1p8pi+pgdh+WAD+aj+Gdy9GGFc/vFjfoNx64gIXzIzDlKzoZr
 vIkKdbFuAmhIWQ2y+LINFLobiWlj6my0TykB/pG3FvV8KJt9+hDNxnJxcTAUdo+NScC5
 JfEGQnsVFf/sC0zTmH5G/R8Y3xM2+mJRphEWHdRYW8MDtbk0ImvnRQqdP8fdvGTEPrWi
 4n5piZ3xUrj63l5vsoQIIDJzG34gKaYEY9D5o9TXFF2O2aRqnB5Te332Q2dRRymruHcp
 56GJ8regpSfybTWgvS8yTn/E8pRJRV96nCpLAn9GGi3IcS4hGk5HMGzVDVkBBUe6mQlg
 uSvQ==
X-Gm-Message-State: AOAM532QBgouH0IWY2jefiCE7fM+DGRuGSw+BgkKLsq7FSXoCC0bS4dI
 9Eqb6s3R3z5W+jyAphk7Kpc=
X-Google-Smtp-Source: ABdhPJw4MiBcK6lhwt3Mpbwm8hf16I6Hw1+0s7bS8R/2YorDzTQE48+QOyklgXhBBgNG0ZQGdqDUyg==
X-Received: by 2002:a17:906:12cf:: with SMTP id
 l15mr3434340ejb.540.1603476814307; 
 Fri, 23 Oct 2020 11:13:34 -0700 (PDT)
Received: from kista.localnet (cpe1-5-97.cable.triera.net. [213.161.5.97])
 by smtp.gmail.com with ESMTPSA id k23sm1231498ejk.0.2020.10.23.11.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:13:32 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH 01/14] phy: Distinguish between Rx and Tx
 for MIPI D-PHY with submodes
Date: Fri, 23 Oct 2020 20:18:58 +0200
Message-ID: <7673189.jqQXtdQLJ6@kista>
In-Reply-To: <20201023174546.504028-2-paul.kocialkowski@bootlin.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-2-paul.kocialkowski@bootlin.com>
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 paul.kocialkowski@bootlin.com, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

Dne petek, 23. oktober 2020 ob 19:45:33 CEST je Paul Kocialkowski napisal(a):
> As some D-PHY controllers support both Rx and Tx mode, we need a way for
> users to explicitly request one or the other. For instance, Rx mode can
> be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.
> 
> Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
> The default (zero value) is kept to Tx so only the rkisp1 driver, which
> uses D-PHY in Rx mode, needs to be adapted.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c |  3 ++-
>  include/linux/phy/phy-mipi-dphy.h         | 13 +++++++++++++

I think some changes are missing in this patch. For example, 
phy_set_mode_ext() must be modified to take another argument, otherwise change 
of rkisp1-isp driver doesn't make much sense.

Best regards,
Jernej

>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/
media/rkisp1/rkisp1-isp.c
> index 6ec1e9816e9f..0afbce00121e 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -902,7 +902,8 @@ static int rkisp1_mipi_csi2_start(struct rkisp1_isp 
*isp,
>  
>  	phy_mipi_dphy_get_default_config(pixel_clock, isp->sink_fmt-
>bus_width,
>  					 sensor->lanes, cfg);
> -	phy_set_mode(sensor->dphy, PHY_MODE_MIPI_DPHY);
> +	phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
> +			 PHY_MIPI_DPHY_SUBMODE_RX);
>  	phy_configure(sensor->dphy, &opts);
>  	phy_power_on(sensor->dphy);
>  
> diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-
dphy.h
> index a877ffee845d..0f57ef46a8b5 100644
> --- a/include/linux/phy/phy-mipi-dphy.h
> +++ b/include/linux/phy/phy-mipi-dphy.h
> @@ -6,6 +6,19 @@
>  #ifndef __PHY_MIPI_DPHY_H_
>  #define __PHY_MIPI_DPHY_H_
>  
> +/**
> + * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
> + *
> + * A MIPI D-PHY can be used to transmit or receive data.
> + * Since some controllers can support both, the direction to enable is 
specified
> + * with the PHY sub-mode. Transmit is assumed by default with phy_set_mode.
> + */
> +
> +enum phy_mipi_dphy_submode {
> +	PHY_MIPI_DPHY_SUBMODE_TX = 0,
> +	PHY_MIPI_DPHY_SUBMODE_RX,
> +};
> +
>  /**
>   * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
>   *
> -- 
> 2.28.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
"linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/
linux-sunxi/20201023174546.504028-2-paul.kocialkowski%40bootlin.com.
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
