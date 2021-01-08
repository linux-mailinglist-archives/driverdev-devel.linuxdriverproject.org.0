Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9324E2EF002
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF47A86D27;
	Fri,  8 Jan 2021 09:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTq7GnCDFBfK; Fri,  8 Jan 2021 09:48:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5018186D28;
	Fri,  8 Jan 2021 09:48:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A6A91BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 969AE86D24
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id moMtb6yXwYp9 for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:48:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B8D986D23
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:48:35 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 32FB75805D1;
 Fri,  8 Jan 2021 04:48:34 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Fri, 08 Jan 2021 04:48:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm1; bh=T
 ytH3TW5ntRxZ1LpTYSljem0k/W8jkP4F1c3fUJ+HnI=; b=W3F2qLClKz+EIUHj1
 pv70rfj99kjHw5cSQWbB+HijiNCWpzhjGi5yptuS//finB4rRnYVI0LrJ8SvHTr2
 +5MGi5cR+C4GWr5anRTBVMif4V3TfDelToTBfAfeLKMXaF8HHA3VUKHhLbsfwp/c
 xqoOT+jB7EIMAoWSWuHfdQ3G96SOepw8okwkDXI5F+mcPr5yGgJ2jxXDfIZSzurt
 v7RU568SvVs2/kckacscI/Y8816G7pIqGywlrAyxBZIXRKijQ+gXnAed/K/Sfd/M
 UuPeCCL/XXliHSR/mg4Z6UL2Z04aZhG+vKYIN0fvQQXCiahlKovIOZZJYJQtfGkl
 3D1Ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=TytH3TW5ntRxZ1LpTYSljem0k/W8jkP4F1c3fUJ+H
 nI=; b=dvLWvQnc+tGYtY5Ktw5Nv60Z2gEzvnYGdAeKcKrfgM3yB0w1DA2nMjMWb
 87srFgfXi0KPy/XIT2aFkW+L2SNm0UO3lz4BjhcurLhQMwpuD4EUdtEd6iEGgF0X
 aPcwwkj5NoRVDyJglif8E3HUsqDq5EkWSvqqbi8kjF+FaZfGZ/GzlmQMOTB9iuf7
 Iabaou+nUWZ9bVn/a4iXu+A7H+b6l7St8dJJleUVEAWRwqroAegdVyD6ePS4RvuV
 MjReMwNCOdoP+2sDSFGbrQn87RBWVB9fIjnKFcjeL71kds928Rsb33eOagBzUTuC
 XQDT0VVEKD9Rhc1p6UtSWcMQiUOhQ==
X-ME-Sender: <xms:cCr4XwXj0PKIWNmqVR-oTuQrqqORN9LX6e4Hojg1sTDdHlVc8TObMw>
 <xme:cCr4X0lDefX2fYgiqmmwkHM515jroZ62sabD940CHyxLYIW3_QQ82ovwyV5HZmd3r
 Sc3wZcZV17SVBsrhLY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpefgjeettdejgffgffdvteeutdehtdehgeehueetkeefgefhtdetjeekledu
 gedvudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cCr4X0aUwcPPWAHJ5z4rzpXyY02ZK-FVieH81hLxeY748HZ74uu9sw>
 <xmx:cCr4X_VxDu4MnTytDOB-yCRgYACgQDwv7llt5mu0Xyn54_mTIHLrUg>
 <xmx:cCr4X6lnqBbTcRkSwR3kgpGeVMsAJwmEce1NWD34avV_Amz-rXXO3A>
 <xmx:cir4X8XjlFasr4jNuf3X53We_AZ3OUI6qRjSHA9nQ--7odUbviF99A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AF09D108005C;
 Fri,  8 Jan 2021 04:48:31 -0500 (EST)
Date: Fri, 8 Jan 2021 10:48:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 06/15] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <20210108094830.6cmuelnraxjpgmaf@gilmour>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-7-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231142948.3241780-7-paul.kocialkowski@bootlin.com>
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
 devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Kishon Vijay Abraham I <kishon@ti.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 31, 2020 at 03:29:39PM +0100, Paul Kocialkowski wrote:
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
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
