Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0132CAC7F
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Dec 2020 20:38:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EDAF86BA7;
	Tue,  1 Dec 2020 19:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9EMx2lNjvpA; Tue,  1 Dec 2020 19:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CC0586BA0;
	Tue,  1 Dec 2020 19:38:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A78201BF5E9
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 19:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92AC52E14A
 for <devel@linuxdriverproject.org>; Tue,  1 Dec 2020 19:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dj62LW9tXhoj for <devel@linuxdriverproject.org>;
 Tue,  1 Dec 2020 19:38:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2AE1C2E187
 for <devel@driverdev.osuosl.org>; Tue,  1 Dec 2020 19:38:25 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id d8so2823772ioc.13
 for <devel@driverdev.osuosl.org>; Tue, 01 Dec 2020 11:38:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XYryzA4/mFCMKCIdF4yV/ZR2i0tUMBhkZeyfOMT4X4g=;
 b=n7II8qtf2jZqaNJvQLFeUzMi+Q4sdpwOHkQQv3NQdklLn8YofVi52kyXnbwF4NDCR0
 epn+gPDgbxxYfSNapOxZg4HaQbsnLS4T/AV1fbdHBSVRYz/Y1464Z8veF66MYJY9fP+6
 D4ldcInknruNKdYuUe5vSKpom6Tfdc5nYwrKClgHyC+8Gp6FgA4gZ3ImUPkUUz8JSC+U
 HwjVRgvXO2Y3WoYKdvMuLBHMFbSOeE9wDjYVpWu92ZlhJiW0kKywp1bJp9lNHZKjnETz
 rnY2qDNmmBhitOQ6shsTLmn2w3fLOMIKdHiVo5qW6GQDF7pUV9gRByxnXCC3V1cBkA/1
 JxxA==
X-Gm-Message-State: AOAM5336ijshQd7O6Q4qFKWvy3cGijYkeKZUTfntO/DX14KwYL+rBQ0V
 nWyYZMRCcBvqUpzn0MRQlQ==
X-Google-Smtp-Source: ABdhPJz6y0nwODn3fi22qW0p1MoAqQH5CE857hDxXdkRZT/O3+x/q/eHKcGoz/oIUzGrKCRWBlG6Ow==
X-Received: by 2002:a02:7124:: with SMTP id n36mr4080721jac.59.1606851504458; 
 Tue, 01 Dec 2020 11:38:24 -0800 (PST)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k28sm293101ilg.40.2020.12.01.11.38.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 11:38:23 -0800 (PST)
Received: (nullmailer pid 929500 invoked by uid 1000);
 Tue, 01 Dec 2020 19:38:20 -0000
Date: Tue, 1 Dec 2020 12:38:20 -0700
From: Rob Herring <robh@kernel.org>
To: Martin Cerveny <m.cerveny@computer.org>
Subject: Re: [PATCH v3 5/6] dt-bindings: media: cedrus: Add V3s compatible
Message-ID: <20201201193820.GA929471@robh.at.kernel.org>
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-6-m.cerveny@computer.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116125617.7597-6-m.cerveny@computer.org>
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-media@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 16 Nov 2020 13:56:16 +0100, Martin Cerveny wrote:
> Allwinner V3s SoC contains video engine. Add compatible for it.
> 
> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> ---
>  .../bindings/media/allwinner,sun4i-a10-video-engine.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
