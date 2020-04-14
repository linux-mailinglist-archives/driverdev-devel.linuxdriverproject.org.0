Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69EB1A889F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 20:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCD5D87994;
	Tue, 14 Apr 2020 18:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qKkyv622MErQ; Tue, 14 Apr 2020 18:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ECA20877E9;
	Tue, 14 Apr 2020 18:08:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CB361BF599
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88AD487941
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 18:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GjW+hBkIz1M for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 18:08:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5594B877E9
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 18:08:25 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id j26so390462ots.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 11:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aH6/bJSeqki/Vi5JpbdIfubPaLu43WdUQzhVPta/M28=;
 b=R9ap+qhM7ZiqTk/wBoHgUbyoHCUUS3F0SAQSbPKje1r+DcQHnOm13v67RMQmDUlt1o
 MrWgFPdqbyq0VzFOM1Htul2XTMaXw0pgw9+p6fMAwKwzHEFJkp0neFL/hYFKyaDMHbiT
 hrhY5m6uMDiTi+1o1jkESiWEUDNX1XQ5G6f+l7N30Mv6sG9otegiA1eH9vUAozob7eYf
 h6SlO86+KKPBszRLrzjM+KPqVBHaV5TFv0bwcOKCJqUyNuwc7jz6dDNPWCeqJ05tgZ2s
 YdyAjRDOwmyWbr7Rlf8QGjQ+kiraMuvJYcW/P5QBDa+Z+Y1HLEIc6/t8hkxlEuY+pAWN
 TS6A==
X-Gm-Message-State: AGi0PuZFQZDQibrAAN0b0cKtP2TMZxYXUFV6iaaSFmgVTgQBwaVNpm2B
 skikkFiBbmn4LZbokOzqxA==
X-Google-Smtp-Source: APiQypKhRc4T3Riyr7q0PMZ9dtddK4y6BcSReW/3d5i8PAegHYWIM3ilgiExMX1m/wo3haK89CSjYg==
X-Received: by 2002:a4a:be89:: with SMTP id o9mr13224323oop.20.1586887704452; 
 Tue, 14 Apr 2020 11:08:24 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 62sm5490196oty.73.2020.04.14.11.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:08:23 -0700 (PDT)
Received: (nullmailer pid 31612 invoked by uid 1000);
 Tue, 14 Apr 2020 18:08:22 -0000
Date: Tue, 14 Apr 2020 13:08:22 -0500
From: Rob Herring <robh@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 5/9] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
Message-ID: <20200414180822.GA31542@bogus>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-6-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403161538.1375908-6-helen.koike@collabora.com>
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

On Fri,  3 Apr 2020 13:15:34 -0300, Helen Koike wrote:
> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
