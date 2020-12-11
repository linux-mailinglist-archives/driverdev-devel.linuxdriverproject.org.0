Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A899A2D6E59
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 04:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEDA686D10;
	Fri, 11 Dec 2020 03:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9Fzuh-Rzt0B; Fri, 11 Dec 2020 03:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E3CA86CFD;
	Fri, 11 Dec 2020 03:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59C3D1BF9CD
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4EAF722CB0
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nuwDVTKsYGuK for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 03:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by silver.osuosl.org (Postfix) with ESMTPS id AEBB922BCC
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 03:12:10 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id j8so1812958oon.3
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 19:12:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=20FUrkWgYAPacYXxuWXY+xSuM7UzPwHMJmdN/diicTY=;
 b=dkdcXiwK4i7AM9wq4YjuVfszs7CcZOGxsZrp0BwqVbqSfCaQtdiaAGNUELxCze1lDS
 UshNk/371wmgx1PkXMk97sKy3TLdW8CKactb73Ubk5SZhpxL/+Ueh/sL9DRiKYvWoG7L
 I1rtVOHE0/s/Hl9vFFVKufPOx52KJZ8Lj3GTWdaagCdJAxhqupjTY0dRHR0f36tusdxN
 nhnx5VnBUvQOaP40bHGQWF9/k0iZG9iTJP7+K+g8BFLc+Lwu7QVfhR1lVghelUJc6s9j
 3T/Xzl90oal84bmfnf2Aio85FdFe31Gvq1nVXXY9S8Yw9NhI3vxQxg6cqW/1aogYQqZw
 pJCw==
X-Gm-Message-State: AOAM532A8Mq+IrGMRLFah9FW4OPzEuacbyICLtyl8uov1EJoFnQ0m5Wp
 O1NRB8ZGeUsMGAvpIUpkWg==
X-Google-Smtp-Source: ABdhPJwohjal/Q+JcqCNbtBwiT+Ur1QE8QEtsOSmxZ6JD0zWUlTAcOoTlEyI60ZGWGKBfLTL5wWqQA==
X-Received: by 2002:a4a:bc8d:: with SMTP id m13mr8457514oop.63.1607656329889; 
 Thu, 10 Dec 2020 19:12:09 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o63sm1500679ooa.10.2020.12.10.19.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 19:12:08 -0800 (PST)
Received: (nullmailer pid 3555218 invoked by uid 1000);
 Fri, 11 Dec 2020 03:12:07 -0000
Date: Thu, 10 Dec 2020 21:12:07 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 16/19] dt-bindings: media: Add A83T MIPI CSI-2
 bindings documentation
Message-ID: <20201211031207.GA3555125@robh.at.kernel.org>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-17-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201128142839.517949-17-paul.kocialkowski@bootlin.com>
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

On Sat, 28 Nov 2020 15:28:36 +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A83T MIPI CSI-2
> controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 147 ++++++++++++++++++
>  1 file changed, 147 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
