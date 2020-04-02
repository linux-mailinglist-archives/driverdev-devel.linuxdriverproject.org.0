Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 260C019C6E8
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 18:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 64DB026B0A;
	Thu,  2 Apr 2020 16:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYwJCaNcaO7b; Thu,  2 Apr 2020 16:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B95F6203AC;
	Thu,  2 Apr 2020 16:17:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB351BF395
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 492F287249
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHnYjgxdrQ61 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 16:17:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46ED7871FF
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 16:17:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1C581297DC9
Message-ID: <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Kishon
 Vijay Abraham I <kishon@ti.com>
Date: Thu, 02 Apr 2020 13:17:27 -0300
In-Reply-To: <20200402000234.226466-2-helen.koike@collabora.com>
References: <20200402000234.226466-1-helen.koike@collabora.com>
 <20200402000234.226466-2-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

(+Kishon)

Hi Helen,

I was wondering if we couldn't also move the phy driver out of staging.

Thanks,
Ezequiel
 
On Wed, 2020-04-01 at 21:02 -0300, Helen Koike wrote:
> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
> 
> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> similarity index 100%
> rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
