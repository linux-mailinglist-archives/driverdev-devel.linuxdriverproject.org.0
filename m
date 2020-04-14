Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F5E1A88A4
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 20:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 45802220A2;
	Tue, 14 Apr 2020 18:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVekRK-HveE7; Tue, 14 Apr 2020 18:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB32621FF6;
	Tue, 14 Apr 2020 18:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70ADD1BF599
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CE2581499
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5zfNntVJxrq for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 18:09:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8198D846EE
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 18:09:00 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id w12so545648otm.13
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 11:09:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=prDWIrMyWVL9le+9ZcGHN+BwfXt6qR13g2kfPV4NuLU=;
 b=UWkRNRzil0CNKM13mc/rMegPebh+iGTsHjzEituY2X5cSPWlWqgy88Vjdg+Dg0wojm
 mp6TtYP29/pTzF+liHw/k3i/26Vnqf13f0Rel/j+IStvacqk72FNyUDwifLvL3yqfM+F
 TNKfzpJNLZQgwfnd1soNTWKXQCGjyECZrc3ZbAENYXz3l5zdKqa+l0nbqJ1aFUT8yQ9k
 NcgbhS+x+wpzdAW9sLX9U4kLwFkPCOuT91HsV0RWLL/6VnotJCetG3CadVraVqw1eNi6
 nf59r/ZQ1hH5yp6v01VzRhKxXUF4SuRS9N7/KbtLw/V/yDfB7psG1elhySPCQYQ6E+1H
 itEA==
X-Gm-Message-State: AGi0PuYKSyW3RmMIlJaoJ1Yhb3jh+nw9RhC7ypoZcpGC0jO87a7t66zr
 tSnIUnQ1vitfLoM0N2ui+w==
X-Google-Smtp-Source: APiQypIh/leoxjlevMbuXjSNGpeuUA+hc90vGxRi1bhdKnjP1LzJUetWbjZ5GD/fYFx5Zd1kLiU9jw==
X-Received: by 2002:a9d:5b4:: with SMTP id 49mr18758120otd.210.1586887739227; 
 Tue, 14 Apr 2020 11:08:59 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g12sm1060392otk.71.2020.04.14.11.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:08:58 -0700 (PDT)
Received: (nullmailer pid 829 invoked by uid 1000);
 Tue, 14 Apr 2020 18:08:57 -0000
Date: Tue, 14 Apr 2020 13:08:57 -0500
From: Rob Herring <robh@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
Message-ID: <20200414180857.GA742@bogus>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 ezequiel@collabora.com, jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri,  3 Apr 2020 13:15:35 -0300, Helen Koike wrote:
> Move rkisp1 bindings to Documentation/devicetree/bindings/media
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
