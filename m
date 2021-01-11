Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E7B2F2292
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 23:20:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B049870E9;
	Mon, 11 Jan 2021 22:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e89sicwxdziz; Mon, 11 Jan 2021 22:20:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D64238596F;
	Mon, 11 Jan 2021 22:20:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 955551BF97F
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 22:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72ADB2285E
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 22:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BvGrkaFRcVV for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 22:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 922AF22654
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 22:20:09 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id d8so411628otq.6
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 14:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VyFCFff7hYJpxW+Rad4By7LUlx7N6qhPoYPEaO1tJps=;
 b=g4saeSWm0vlFtzdYnRuYAVFB+8QWKq/+CfaYL86ao4nBHrRfS+oU7ugX8shG5CVt7b
 vl64kPlyOyUm+yYMPQCKRFbor6gBB6l7TjJO4/bBaAizwlAOKfZjx35XLbEApogJZg9w
 rleQoj3p4wqTygXtmLAJZpaPfzUn50SmS1dAs2afuMQhQzPDCUUvpMJL71EqJWET/jfm
 nSt+sBgxfSqgX0L5TDDeugVd9OddD4P+egzVn2vbGzMhH1K7JqCfHuLvYC816DNy242n
 bpOU2jklnNnIC3InIBVZDSMit3J7FvpJ7AolCjx4FNsKFj/Z0Il9D7Y+hGNLJoTXD4Sq
 qpZg==
X-Gm-Message-State: AOAM530Voo3wGR5GdrPEqty5+cUPl6/ork5f7cLrOHM2N1dRN4mwLhPr
 gwqks2lvuwral2uePzRSzA==
X-Google-Smtp-Source: ABdhPJwU6Becx7jAKNM9/tRzPRBw1eNYiQOnEXAerdi4abgkEPy3hpSEyntlUQKR5I5QMiNGp8R4gg==
X-Received: by 2002:a9d:5f9a:: with SMTP id g26mr843215oti.241.1610403608789; 
 Mon, 11 Jan 2021 14:20:08 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p10sm67054otp.43.2021.01.11.14.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 14:20:07 -0800 (PST)
Received: (nullmailer pid 3160469 invoked by uid 1000);
 Mon, 11 Jan 2021 22:20:05 -0000
Date: Mon, 11 Jan 2021 16:20:05 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 08/15] dt-bindings: media: Add A31 MIPI CSI-2 bindings
 documentation
Message-ID: <20210111222005.GA3160418@robh.at.kernel.org>
References: <20201231142948.3241780-1-paul.kocialkowski@bootlin.com>
 <20201231142948.3241780-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201231142948.3241780-9-paul.kocialkowski@bootlin.com>
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
 devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 31 Dec 2020 15:29:41 +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
