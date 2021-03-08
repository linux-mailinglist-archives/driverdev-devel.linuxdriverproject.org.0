Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B893315D0
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 19:22:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58CE483C7D;
	Mon,  8 Mar 2021 18:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGgHI00bs0O6; Mon,  8 Mar 2021 18:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7710E83A8B;
	Mon,  8 Mar 2021 18:22:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0ED011BF364
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09F3340100
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMSE6bp2xgVz for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 18:22:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D9F2400D5
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 18:22:21 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id o11so11023232iob.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 10:22:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Pq15jcwTEBECLbFVPJ1zaHWvf20RZ6s1s9fGsnrhjPg=;
 b=XNG9mynYkerhtXHFBuRclfCeZVhOG/B2JWQ6gW/E9i2hfBB1gUiqnr+AQary7PUdoU
 IHuURTmpdUqZccuxTuADobMFnCC/8tIa4LNcuoHJWiboMVNtxv24S44qWi6a081C6qrA
 BlfXxYl0JSVsEpc2dKPBqBcvMDa+mVGfpWFHBA0un+72sMAgiHtHYWMl+b7fUn1SwAjD
 C9agJkumPVMDLMuauwD19WItb2z6jMlR901MVeAm1VP+Borphnh+88OV9NzMVp+gZiyG
 NAJfCpwHlHTuZfEO5xErcsu2pkdQccfGG8ic66Luc/ZbqFe96BoGIOExmV8Frd7fn4ri
 t8fg==
X-Gm-Message-State: AOAM530MQdtYm2E+D3xFPhRxnmfMB8rI167eEuDtWpRW/uchkVH6kzUo
 vQzFVYJnZ0U/avZTco8+Lg==
X-Google-Smtp-Source: ABdhPJyUGYEl6elYvRaF78SgykrT1EbiNGGNHSkzsW41shl8b7neRG3JF3Scv/qM1s2j+IT1Cg/MZw==
X-Received: by 2002:a05:6602:2018:: with SMTP id
 y24mr12056432iod.74.1615227740322; 
 Mon, 08 Mar 2021 10:22:20 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id r12sm6521797ile.59.2021.03.08.10.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:22:19 -0800 (PST)
Received: (nullmailer pid 2738951 invoked by uid 1000);
 Mon, 08 Mar 2021 18:22:17 -0000
Date: Mon, 8 Mar 2021 11:22:17 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
Message-ID: <20210308182217.GA2735443@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 kernel@collabora.com, kernel@pengutronix.de, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 shawnguo@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 04:17:49PM +0100, Benjamin Gaignard wrote:
> The two VPUs inside IMX8MQ share the same control block which can be see
> as a reset hardware block.
> In order to be able to add the second VPU (for HECV decoding) it will be
> more handy if the both VPU drivers instance don't have to share the
> control block registers. This lead to implement it as an independ reset 
> driver and to change the VPU driver to use it.
> 
> Please note that this series break the compatibility between the DTB and
> kernel. This break is limited to IMX8MQ SoC and is done when the driver
> is still in staging directory.

As this information will be lost, please put in the binding and dts 
patch.

> 
> version 3:
> - Fix error in VPU example node
> 
> version 2:
> - Document the change in VPU bindings
>  
> Benjamin Gaignard (5):
>   dt-bindings: reset: IMX8MQ VPU reset
>   dt-bindings: media: IMX8MQ VPU: document reset usage
>   reset: Add reset driver for IMX8MQ VPU block
>   media: hantro: Use reset driver
>   arm64: dts: imx8mq: Use reset driver for VPU hardware block
> 
>  .../bindings/media/nxp,imx8mq-vpu.yaml        |  14 +-
>  .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  |  54 ++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  31 +++-
>  drivers/reset/Kconfig                         |   8 +
>  drivers/reset/Makefile                        |   1 +
>  drivers/reset/reset-imx8mq-vpu.c              | 169 ++++++++++++++++++
>  drivers/staging/media/hantro/Kconfig          |   1 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c   |  61 ++-----
>  include/dt-bindings/reset/imx8mq-vpu-reset.h  |  16 ++
>  9 files changed, 294 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
>  create mode 100644 drivers/reset/reset-imx8mq-vpu.c
>  create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h
> 
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
