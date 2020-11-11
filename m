Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE0D2AF3F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 15:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B46E2E0DB;
	Wed, 11 Nov 2020 14:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTDEKYjYTiTF; Wed, 11 Nov 2020 14:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0FDE92037E;
	Wed, 11 Nov 2020 14:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9565F1BF3FF
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 14:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9186D86382
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 14:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9D4lXNRcRN21 for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 14:43:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 857CD8601E
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 14:43:14 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id crKtkC4mY1R0xcrKwkdPLD; Wed, 11 Nov 2020 15:43:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1605105792; bh=0NVL4vfED5OvbJq2XB5B3W6lWJSu6NdYA6DvnKQvUps=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=lpOJprwSCLpQWyU/LOYFDa1qo25qI1AHQ6cNttM1JVDb0fdI8O2BsGJD3OfjPi33g
 1fMY7QuJIYSftMTb7+73cOLPRK2jiKodtTEjbSti7jl6nI7Qkj2DKdFMGhUwhxlNLY
 TyAnwlUzTgSXN3Z9RZFveL2iA6dlp8RsN3c1jjnZuExh18Ls8ZtsDSghRxToh1/syH
 SEwYapLZaI3ytIOZSiZ6l97eLKjEvPOCFyNahaPA1ChnhY6eAr48x4ZcdL3g2KiP3m
 rvWcApFblu/V8e4+65hlwsafiQXr1OZ2OTCN+B4UsaiR9tXVLijNrpUMYwe9zsfqVc
 Bkf4WA78JDoxg==
Subject: Re: [PATCH 0/7] sunxi: Remove the calls to dma_direct_set_offset
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter
 <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Christoph Hellwig <hch@lst.de>
References: <20201106151411.321743-1-maxime@cerno.tech>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <33ed44c6-e54d-3769-2a59-ab6c50b49053@xs4all.nl>
Date: Wed, 11 Nov 2020 15:42:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201106151411.321743-1-maxime@cerno.tech>
Content-Language: en-US
X-CMAE-Envelope: MS4xfGWKT/xz8lGQdJjgDVMSGoVA8Hwp4UdhceAu0LGX+mTjEfjeMRkngyPZ4+U5ztVBAFtyPA8cLTXLWbBeHzTSRcAAUaQ3FoSMQBCXKPm7WjqaxMbZt51e
 MVaAZIlGQU0+PqOe4wzBEt+aisx7jLWq+BMkCG/pk4d36IRWMFJuaauCGo7sYK/sd3u+/KgFopMsaX8nsiFGsQ7ZZjAkS7UtFib5I/ie5e+f7FEYzgeSrQ0N
 URxBJtS+soe40GR6t3kCWqBXPrRQv9kF7OcEqe46oKowd4RnF/X1McYk3ewDxLdlaBbajLUrnSwM6BRf85XN5Iq+CN4p2OImjzjACm0zy6I2WM0n4BZMjlTu
 QWIyf5100NQ+/OpW/rbZdKY7XhH0shcHS+18/n0jsDeOV0x7P/YjMBvucz0UPeJ8JXzF4wvQvlYBslWMjMGIzOf5OlgCnlP4YMv2+/mqa5QuEW15yTF/a3EB
 If4MQbKKcouCJ5chqk8j30lZ/9/1z25rXRYQYDUG84Gjz/NyUfv+3N3fEHb6S7jBMIPt5KWSCf3QyNxs/OSv1+VOsCRQPl27gm+A3Ew2IT5E7CCq/gFsEY1z
 52xhREXnWU29JEyG8insmmcwsQtXQVHbpO6ZYDAHKnBfWA5mSrwfuCS+/hmBzT7ZxpzY6N4tgwXfZpoQFcVh/HtgLupKlp58k4yAb/PNxVJlBqvizDjn4Jdz
 iZJm8zcJs9ALpgb89W4KW/zywpoyW6DOSdZkLfTc6rd73k58gEOCaA==
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 06/11/2020 16:14, Maxime Ripard wrote:
> Hi,
> 
> Here's an attempt to removing the dma_direct_set_offset calls we have in
> numerous drivers and move all those quirks into a global notifier as suggested
> by Robin.

For patches 4-7:

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

It's fine by me if this series is merged via the drm subsystem.

Regards,

	Hans

> 
> Let me know what you think,
> Maxime
> 
> Maxime Ripard (7):
>   drm/sun4i: backend: Fix probe failure with multiple backends
>   soc: sunxi: Deal with the MBUS DMA offsets in a central place
>   drm/sun4i: backend: Remove the MBUS quirks
>   media: sun4i: Remove the MBUS quirks
>   media: sun6i: Remove the MBUS quirks
>   media: cedrus: Remove the MBUS quirks
>   media: sun8i-di: Remove the call to of_dma_configure
> 
>  drivers/gpu/drm/sun4i/sun4i_backend.c         |  13 --
>  .../platform/sunxi/sun4i-csi/sun4i_csi.c      |  27 ----
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      |  17 ---
>  .../media/platform/sunxi/sun8i-di/sun8i-di.c  |   4 -
>  drivers/soc/sunxi/Kconfig                     |   8 ++
>  drivers/soc/sunxi/Makefile                    |   1 +
>  drivers/soc/sunxi/sunxi_mbus.c                | 132 ++++++++++++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   1 -
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |   3 -
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  18 ---
>  10 files changed, 141 insertions(+), 83 deletions(-)
>  create mode 100644 drivers/soc/sunxi/sunxi_mbus.c
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
