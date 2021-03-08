Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB513315F9
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 19:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E9B6F5E0;
	Mon,  8 Mar 2021 18:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIx7nekdWcDL; Mon,  8 Mar 2021 18:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C567C6F5C6;
	Mon,  8 Mar 2021 18:27:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 143BC1BF364
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2C9D400FF
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p5-ceB1EEHGt for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 18:26:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66A08400D5
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 18:26:56 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id p16so11030972ioj.4
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 10:26:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QuSkewPTpe0085TNG2W2Oa8CDkZlQPGzs8cqLJpUUBA=;
 b=lxM5L7X6FfRJbX/P5BCZjuFCZgXFOZ8AOhDLt9KaXLsrfPk91FLDEzI5FxPwth4l/R
 rrtC6MlnYeh78BO7aa4NOODoKba212bXkeMeT2UpkoQLzf0cJgQXxn9Q5NkDoXMXOkhV
 hH6/lFVBgQQKZ+kPStA+DfjsVWH5uTWcSxmi4TraCa7SQh7yjTKY3FCYCjrRMnapKiVa
 lvXQpz2a9mfeKMtAGYmclRnc49Jt2c+Dmy53lrj74lY/BLvtpOqIsKfOYU6gjp8Z/r30
 NyiDa9Gi5UEBV8YuQyGtb/HY4Wj9aNQinvhKa0whbQQ5p1Ckf4IdNXpYHZMy8Eqn1H3Y
 U6zA==
X-Gm-Message-State: AOAM530ADDjotH1bTLDW88ukshK50m3NWHuLjQUzSpva9PXR1eiKQ12S
 5fsB5LpyaZd0fkFYW9ZQEw==
X-Google-Smtp-Source: ABdhPJzjTtDhSDB3XWXDb5ygvtpGkDlzRkFu6tzU5LP8yUrH3ZVysbAhFaWWZoDnzHDhQvS2pjs7Gw==
X-Received: by 2002:a02:cad9:: with SMTP id f25mr24409763jap.26.1615228015582; 
 Mon, 08 Mar 2021 10:26:55 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id h193sm6546637iof.9.2021.03.08.10.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:26:55 -0800 (PST)
Received: (nullmailer pid 2744943 invoked by uid 1000);
 Mon, 08 Mar 2021 18:26:51 -0000
Date: Mon, 8 Mar 2021 11:26:51 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
Message-ID: <20210308182651.GA2741282@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210308182217.GA2735443@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308182217.GA2735443@robh.at.kernel.org>
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

On Mon, Mar 08, 2021 at 11:22:17AM -0700, Rob Herring wrote:
> On Mon, Mar 01, 2021 at 04:17:49PM +0100, Benjamin Gaignard wrote:
> > The two VPUs inside IMX8MQ share the same control block which can be see
> > as a reset hardware block.
> > In order to be able to add the second VPU (for HECV decoding) it will be
> > more handy if the both VPU drivers instance don't have to share the
> > control block registers. This lead to implement it as an independ reset 
> > driver and to change the VPU driver to use it.
> > 
> > Please note that this series break the compatibility between the DTB and
> > kernel. This break is limited to IMX8MQ SoC and is done when the driver
> > is still in staging directory.
> 
> As this information will be lost, please put in the binding and dts 
> patch.

Actually, the adding the VPU reset binding doesn't break compatibility, 
so just the dts file changes needs it.

> 
> > 
> > version 3:
> > - Fix error in VPU example node
> > 
> > version 2:
> > - Document the change in VPU bindings
> >  
> > Benjamin Gaignard (5):
> >   dt-bindings: reset: IMX8MQ VPU reset
> >   dt-bindings: media: IMX8MQ VPU: document reset usage
> >   reset: Add reset driver for IMX8MQ VPU block
> >   media: hantro: Use reset driver
> >   arm64: dts: imx8mq: Use reset driver for VPU hardware block
> > 
> >  .../bindings/media/nxp,imx8mq-vpu.yaml        |  14 +-
> >  .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  |  54 ++++++
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  31 +++-
> >  drivers/reset/Kconfig                         |   8 +
> >  drivers/reset/Makefile                        |   1 +
> >  drivers/reset/reset-imx8mq-vpu.c              | 169 ++++++++++++++++++
> >  drivers/staging/media/hantro/Kconfig          |   1 +
> >  drivers/staging/media/hantro/imx8m_vpu_hw.c   |  61 ++-----
> >  include/dt-bindings/reset/imx8mq-vpu-reset.h  |  16 ++
> >  9 files changed, 294 insertions(+), 61 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> >  create mode 100644 drivers/reset/reset-imx8mq-vpu.c
> >  create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h
> > 
> > -- 
> > 2.25.1
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
