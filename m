Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5D23A5FCB
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Jun 2021 12:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA95740347;
	Mon, 14 Jun 2021 10:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kexxpTy-5ppF; Mon, 14 Jun 2021 10:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A65404013A;
	Mon, 14 Jun 2021 10:13:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 112E01BF331
 for <devel@linuxdriverproject.org>; Mon, 14 Jun 2021 10:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3E6583A64
 for <devel@linuxdriverproject.org>; Mon, 14 Jun 2021 10:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=ideasonboard.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cY5NvxAxWqS4 for <devel@linuxdriverproject.org>;
 Mon, 14 Jun 2021 10:13:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D889D83A60
 for <devel@driverdev.osuosl.org>; Mon, 14 Jun 2021 10:13:21 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 233A9A59;
 Mon, 14 Jun 2021 12:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1623665597;
 bh=8sfjki0UsWmUH2syJae6b5ofFcxpZFRbmNtSRrH89kU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PNkVAar8AcEWUhomLs8XPC17AM9eKFJTZEOgxZHCE0kvPCkzmm82n7djIxw7PXqYp
 TmGn+Jmir/Qm9i9VXot8TMkooEoJorDEWqJjprVphtpeaL4aFEzZtP4BC1cLGNjD8e
 +AYhRE1U6IXYVqAUA4Im3BpwtR5Ueppo8IMSlkxE=
Date: Mon, 14 Jun 2021 13:12:56 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v7 3/4] drm/bridge: anx7625: add MIPI DPI input feature
Message-ID: <YMcrqIpHTa8ghObz@pendragon.ideasonboard.com>
References: <cover.1623402115.git.xji@analogixsemi.com>
 <19c0d381ed2911c04878f83ae40dad4d3a086d74.1623402115.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19c0d381ed2911c04878f83ae40dad4d3a086d74.1623402115.git.xji@analogixsemi.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Bernie Liang <bliang@analogixsemi.com>,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 Zhen Li <zhenli@analogixsemi.com>, linux-kernel@vger.kernel.org,
 Robert Foss <robert.foss@linaro.org>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Sam Ravnborg <sam@ravnborg.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xin,

Thank you for the patch.

On Fri, Jun 11, 2021 at 05:13:33PM +0800, Xin Ji wrote:
> Add MIPI rx DPI input feature support.

Could you expand the commit message to explain what this feature is ?

> Reviewed-by: Robert Foss <robert.foss@linaro.org>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 245 ++++++++++++++++------
>  drivers/gpu/drm/bridge/analogix/anx7625.h |  18 +-
>  2 files changed, 203 insertions(+), 60 deletions(-)

[snip]

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
