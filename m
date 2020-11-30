Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9332C8979
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 17:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0A6486A79;
	Mon, 30 Nov 2020 16:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHMBzzhfNeZo; Mon, 30 Nov 2020 16:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76E168690C;
	Mon, 30 Nov 2020 16:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D49E1BF302
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 16:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89D3E85F71
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 16:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUx6OWSUuSjf for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 16:28:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7ED585F6C
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 16:28:55 +0000 (UTC)
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjm2R-0003Mu-Bk; Mon, 30 Nov 2020 17:28:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-media@vger.kernel.org,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: (subset) [PATCH v6 0/9] move Rockchip ISP bindings out of staging
 / add ISP DT nodes for RK3399
Date: Mon, 30 Nov 2020 17:28:29 +0100
Message-Id: <160675369960.1150759.2276623622378204083.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201020193850.1460644-1-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 devel@driverdev.osuosl.org, dafna.hirschfeld@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, robin.murphy@arm.com,
 karthik.poduval@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com,
 zhengsq@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 20 Oct 2020 16:38:41 -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from Scarlet Chromebook
> 
> [...]

Applied, thanks!

[8/9] arm64: dts: rockchip: add isp0 node for rk3399
      commit: 97a0115cd96a173369ef30eee2290184921b3f24
[9/9] arm64: dts: rockchip: add isp and sensors for Scarlet
      commit: ef098edc9c245dd1c150001e22c78e6a3ffd7ff8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
