Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FCF210B0F
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 14:31:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FC532FAB4;
	Wed,  1 Jul 2020 12:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uHNoTLu0S6ou; Wed,  1 Jul 2020 12:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9728226977;
	Wed,  1 Jul 2020 12:31:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C24C61BF5E9
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 12:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE5018A9CE
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 12:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KqSFwyyh04W for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 12:31:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5506E8A9CA
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 12:31:17 +0000 (UTC)
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jqbtK-0006Ul-8a; Wed, 01 Jul 2020 14:31:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org
Subject: Re: [PATCH v2 0/9] move Rockchip ISP bindings out of staging / add
 ISP DT nodes for RK3399
Date: Wed,  1 Jul 2020 14:31:04 +0200
Message-Id: <159360661051.89349.4172793847996909407.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200403161538.1375908-1-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
MIME-Version: 1.0
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org,
 dafna.hirschfeld@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, kishon@ti.com, robh+dt@kernel.org,
 karthik.poduval@gmail.com, hverkuil-cisco@xs4all.nl, jbx6244@gmail.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 3 Apr 2020 13:15:29 -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from RockPi 4 board with imx219
> module.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
      commit: e4bfde13e323f9ee5f2f38aa5cac0676dd656f8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
