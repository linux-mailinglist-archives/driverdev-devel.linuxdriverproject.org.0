Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CED95346D3F
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 23:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3411A608BE;
	Tue, 23 Mar 2021 22:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMneP9OULdFQ; Tue, 23 Mar 2021 22:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 814E7608A4;
	Tue, 23 Mar 2021 22:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53FE51BF2BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 434EE847F8
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 22:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BOXvdSjpMuqH for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 22:35:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
 [209.85.166.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABEFA847F6
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 22:35:24 +0000 (UTC)
Received: by mail-io1-f45.google.com with SMTP id v26so19482712iox.11
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 15:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4F+lOADfr1heBBT3R6eeIF8gc1ZCUohYhREHfhhKIaM=;
 b=caAcw0Is7mjkugucGZJ0YGWakOD8sSMCqPM3NvM8fKDj4fobKu2AydHbuCWszlKuzQ
 3PLtj9uxE1Q2edJv6dkHrvEtju8xemLp5Cpvbi07sunosAipKKj4XJGvSRgQqitWMQ6G
 KSbERbBjxo++FfhR6ofMpJZgAIUWWBvlBSOJD2vD6QFTVDHXJ6fUsiLrKwvSnbT04Ezv
 JWKwkBwlfeTEWKNnWVhz4UtVW3o1lXSUnzQ1H2amTN/W6VZpJmONnYm9bwy+nyU6TeA8
 ni8C0pHTAkrY2AG7nEYMnWvoSyMGkVLNsCUSQQNieHgeY9z3hYw7ERYSUst1U/6JzGSw
 npAQ==
X-Gm-Message-State: AOAM531bdQ30a/I0avmz6cmi+AkxtBE7lrpntFuIp7e03m3Ucm3QhvxO
 /DFXKTstNj0RW6Ce+ITi3w==
X-Google-Smtp-Source: ABdhPJwblVg/v3ollbI0VK93RilPemu4LaeZa6xI4qEOVejZrRMxABDv4sARTyakc2IayFK+/ohQkA==
X-Received: by 2002:a02:4c8:: with SMTP id 191mr223485jab.27.1616538923860;
 Tue, 23 Mar 2021 15:35:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id y13sm121459ilq.20.2021.03.23.15.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:35:23 -0700 (PDT)
Received: (nullmailer pid 1470854 invoked by uid 1000);
 Tue, 23 Mar 2021 22:35:21 -0000
Date: Tue, 23 Mar 2021 16:35:21 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp, imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <20210323223521.GA1470799@robh.at.kernel.org>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-3-benjamin.gaignard@collabora.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 18 Mar 2021 09:20:35 +0100, Benjamin Gaignard wrote:
> Introducing G2 hevc video decoder lead to modify the bindings to allow
> to get one node per VPUs.
> VPUs share one hardware control block which is provided as a phandle on
> an syscon.
> Each node got now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> 
> To be compatible with older DT the driver is still capable to use 'ctrl'
> reg-name even if it is deprecated now.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
> - This version doesn't break the backward compatibilty between kernel
>   and DT.
> 
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
>  1 file changed, 34 insertions(+), 19 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
