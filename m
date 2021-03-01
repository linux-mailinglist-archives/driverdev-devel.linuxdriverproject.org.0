Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF300328124
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 15:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3481430AA;
	Mon,  1 Mar 2021 14:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkaUuQCbKXiY; Mon,  1 Mar 2021 14:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C3174308F;
	Mon,  1 Mar 2021 14:44:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFB631BF361
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB6364308F
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 14:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0EnnShGCVziw for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 14:44:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0661543084
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 14:44:28 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id w69so18269494oif.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 06:44:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=J2ZIXJIHgZRZeDGR4OI2DHoLCDtP7CHTCmJZimg406g=;
 b=n7mHJiuTqM7n+NJVhEq9lIf/ks7vCOhP0UlgDH+zTlzCR59hXyuYxGUhMOTQNu651D
 eX61+rHegMJ0TbdXVAAApS9M8JIyZMHCiKagRIHayZh9Dsi8io0omKRbiIeTI+eweUvH
 ITMBzp1YhC5hmqCISMYhI9TTyz57ZR1MDGXavuX5+nH1+c3kxcWLGPgckbMjo+qGnj4N
 ht0CAJaX4D/t2h42lVXnqf2w3F5nHMw1HbIgXl6begWyojlNB2Ap7nZhtbKoo7lF3ZHS
 vHiC7AZBVdg0oRCZF/roCK8KOHmnRVR8gVzXFf8jcRhgpDtLYFyktVh0n3VNMAmQBjQp
 rhJw==
X-Gm-Message-State: AOAM530M0GXCo0j3hlpoZ2TaEsqMsGXwhIVCPAFzAd6Xj771QNnV++B/
 FmnSVWpqvdH9RRFpJhcmhw==
X-Google-Smtp-Source: ABdhPJwdfoSh104CVJJRArrFpm/81kQs1A+e8U2RsvVCJfYlkMgYgzy/vlQGFHJIYsxPcGk+LpsC5w==
X-Received: by 2002:aca:5fd4:: with SMTP id
 t203mr11622994oib.121.1614609868060; 
 Mon, 01 Mar 2021 06:44:28 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n20sm1167413otj.3.2021.03.01.06.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:44:26 -0800 (PST)
Received: (nullmailer pid 37862 invoked by uid 1000);
 Mon, 01 Mar 2021 14:44:21 -0000
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20210226091128.14379-3-benjamin.gaignard@collabora.com>
References: <20210226091128.14379-1-benjamin.gaignard@collabora.com>
 <20210226091128.14379-3-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: media: IMX8MQ VPU: document reset
 usage
Date: Mon, 01 Mar 2021 08:44:21 -0600
Message-Id: <1614609861.076244.37861.nullmailer@robh.at.kernel.org>
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
 kernel@collabora.com, p.zabel@pengutronix.de, ezequiel@collabora.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, gregkh@linuxfoundation.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 26 Feb 2021 10:11:25 +0100, Benjamin Gaignard wrote:
> Document IMX8MQ VPU bindings to add the phandle to the reset driver.
> 
> Provide an independent reset driver allow to the both VPUs to share
> their control/reset hardware block. The reset driver replace what
> was previously done be using the 'ctrl' registers inside the driver.
> 
> This breaks the compatibility between DTB and kernel but the driver
> is still in staging directory and limited to IMX8MQ SoC.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml     | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dt.yaml: video-codec@38300000: reg: [[942669824, 65536], [942735360, 65536], [942800896, 65536]] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml

See https://patchwork.ozlabs.org/patch/1444845

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
