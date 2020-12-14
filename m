Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F372DA3F6
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 00:12:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D346B8609D;
	Mon, 14 Dec 2020 23:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vye1DqFTGOVA; Mon, 14 Dec 2020 23:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A64BD85644;
	Mon, 14 Dec 2020 23:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB6CB1BF381
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 23:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF6818511C
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 23:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CpYcYvBWZOE for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 23:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D6CD84DF6
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 23:12:34 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id p126so21187051oif.7
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 15:12:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xEzETSLwFb14jsmrw0FlyX7cWx9XxZAaCfC6Tl6Q1gM=;
 b=mqnBApcoiz1JC0E9iQw9bw7LZnnMY6xcN+RXFhhb6kYCJmXGqq1NGroHxnLHMi2tJs
 2icnjSBB+jh+Yi52MynvA6biU+OTwn+2B2/oAwpYSCHzwoJABJs+qsDli8T9i6Hb5EXO
 QfFntuD7v7HVhB/lJMCPpucoWZ5S4qOr3Gg+ojofhm5kG/IlmknWr5mlFutUIQMbG2io
 PcpiE231P2+dGrg8gWefUD5BH7cun7Bw/KwwDkvMUJNVfTEB38BYRxPszwZW6TsxrTMl
 JmVKSCVAzFRqPJ+t01Dgq2cbha6BtNruVCPxeYeHupsGYZyIH9BULdnVYTn7nRvrFQe+
 YXxg==
X-Gm-Message-State: AOAM533Jt8X8mQYaNCxw7ETbjD6j0U7ZL7cifvAvf/x5mTpHj5SMTcsq
 QbiBNwSlMpv2otgK66Q+2Q==
X-Google-Smtp-Source: ABdhPJzA/b4BevvSdW2BPBsRNI6l4NaGaCBla97jZ3xzwyR9BVSTVxGIWmfwoPP1/8/7Q5HiUv26Hw==
X-Received: by 2002:aca:3554:: with SMTP id c81mr15514729oia.23.1607987553638; 
 Mon, 14 Dec 2020 15:12:33 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i82sm4612225oif.33.2020.12.14.15.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Dec 2020 15:12:32 -0800 (PST)
Received: (nullmailer pid 2557998 invoked by uid 1000);
 Mon, 14 Dec 2020 23:12:31 -0000
Date: Mon, 14 Dec 2020 17:12:31 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 06/15] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <20201214231231.GA2555279@robh.at.kernel.org>
References: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
 <20201211155708.154710-7-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211155708.154710-7-paul.kocialkowski@bootlin.com>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 11 Dec 2020 16:56:59 +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports two distinct input interfaces:
> parallel and an external MIPI CSI-2 bridge. The parallel interface
> is often connected to a set of hardware pins while the MIPI CSI-2
> bridge is an internal FIFO-ish link. As a result, these two inputs
> are distinguished as two different ports.
> 
> Note that only one of the two may be present on a controller instance.
> For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> dedicated to parallel.
> 
> Update the binding with an explicit ports node that holds two distinct
> port nodes: one for parallel input and one for MIPI CSI-2.
> 
> This is backward-compatible with the single-port approach that was
> previously taken for representing the parallel interface port, which
> stays enumerated as fwnode port 0.
> 
> Note that additional ports may be added in the future, especially to
> support feeding the CSI controller's output to the ISP.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        | 88 ++++++++++++++++---
>  1 file changed, 75 insertions(+), 13 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

Though, it may need updating to use video-interfaces and graph 
schemas[1] depending what lands first.

[1] https://lore.kernel.org/linux-devicetree/20201210211625.3070388-4-robh@kernel.org/
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
