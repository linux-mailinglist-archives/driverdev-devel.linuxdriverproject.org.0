Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8283315FC
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 19:27:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D4B24A5F6;
	Mon,  8 Mar 2021 18:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LY7r_JnaVPhw; Mon,  8 Mar 2021 18:27:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D3DF49CA1;
	Mon,  8 Mar 2021 18:27:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E93171BF364
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5EDB40102
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 00cTDCc4sCBP for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F6F940101
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
Received: by mail-io1-f48.google.com with SMTP id o9so11007817iow.6
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 10:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=97Qo41nmcqQCSePForLjj7qoU92V44P+OYA/wPDxOHs=;
 b=ov90WRuK93SiaSuNLzdsI9VpPYLG4jPqYpv5KIZS01dyB2dDZ3EHr0iye02MP/NvMQ
 K45ZAUm0Z2LJWR46ZzJHCJP8k8coFAWBUETQLJuX21dJSNtXgcm2BfLKj2TFpmP1dHQg
 7uvHP3HsP9hMVvEMUjwsUDyQ6slrdc/SF8eKHLI8FzlKCUzq0M+wyTzE0r0wJ2PHiL9n
 6CgfORF/X/+ocLlNRr3kPkV9JiUmRDNsw63wstPKxDno1WTkcqflxA6BAClaARcDFwr8
 N+dEkXiCCJ3adNrgKWWlI5QdEpl+AfNJor5z4kse4lkavTTIU98LUxY7oJHeUe9GeQUe
 U9YQ==
X-Gm-Message-State: AOAM533z66jBrMgP6GfZKXW2cm8Fna2r7dRj3/yRq8BCD05+Tv427n2C
 LKb5e1aI1SZFocXppmKIdg==
X-Google-Smtp-Source: ABdhPJz/2LyQxTwCb3KhHlojVzK95l7nGBwrQMjXL50voTRYFspz2SZAuyeE6UmKqRKqZ/5U8DGFZw==
X-Received: by 2002:a05:6638:1653:: with SMTP id
 a19mr24584428jat.113.1615228033721; 
 Mon, 08 Mar 2021 10:27:13 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id f11sm5221050ilr.5.2021.03.08.10.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:27:12 -0800 (PST)
Received: (nullmailer pid 2745467 invoked by uid 1000);
 Mon, 08 Mar 2021 18:27:10 -0000
Date: Mon, 8 Mar 2021 11:27:10 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: media: IMX8MQ VPU: document reset
 usage
Message-ID: <20210308182710.GA2745438@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301151754.104749-3-benjamin.gaignard@collabora.com>
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
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, kernel@collabora.com, ezequiel@collabora.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 01 Mar 2021 16:17:51 +0100, Benjamin Gaignard wrote:
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
> version 3:
> - Fix error in VPU example node
> 
>  .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml  | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
