Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F2024F2B8
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 08:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A63587FC3;
	Mon, 24 Aug 2020 06:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iX6zGa+qDmMT; Mon, 24 Aug 2020 06:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A7EA87F52;
	Mon, 24 Aug 2020 06:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42A6A1BF32C
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 06:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DF4387F34
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 06:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NL9Ej-y2eGpY for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 06:49:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5561787EE9
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 06:49:41 +0000 (UTC)
Received: from coco.lan (unknown [95.90.213.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB28A2067C;
 Mon, 24 Aug 2020 06:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598251781;
 bh=MoR5l415tOqXO7qDvbGK3qkYCXTWIk9BbyxnSBH+NOA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=d8Fa9jnF4RxQAHQUfTQiJnd1/Cv3peOrzUsQ+uvrMSfO9dxpXk5FFmL8qQR+62r2d
 /5Z+CzrXnWZx+hAETh664fBPlISrF9QHDL0J3KIvyrE+0W2sam4bZO9CkasBh6uuiy
 Lifm+3q0OlCTMYdbS1UXGwLbhr7/E/XclY5RLP1s=
Date: Mon, 24 Aug 2020 08:49:30 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200824084853.10560ed1@coco.lan>
In-Reply-To: <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
 <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
 <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 mauro.chehab@huawei.com, Rob Clark <robdclark@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liuyao An <anliuyao@huawei.com>,
 Daniel Vetter <daniel@ffwll.ch>, Network Development <netdev@vger.kernel.org>,
 Rongrong Zou <zourongrong@gmail.com>, BPF Mailing List <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi John,

Em Wed, 19 Aug 2020 20:28:44 -0700
John Stultz <john.stultz@linaro.org> escreveu:


> That said even with the patches I've got on top of your series, I
> still see a few issues:
> 1) I'm seeing red-blue swap with your driver.  I need to dig a bit to
> see what the difference is, I know gralloc has a config option for
> this, and maybe the version of the driver I'm carrying has it wrong?

Maybe it is due to this:

	drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c:      hal_fmt = HISI_FB_PIXEL_FORMAT_BGRA_8888;/* dss_get_format(fb->pixel_format); */

It sounds to me that someone added a hack hardcoding BGRA_8888 over
there.

Btw, I removed the hack, with:


diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
index a68db1a27bbf..ba64aae371e4 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
@@ -857,7 +857,7 @@ void hisi_fb_pan_display(struct drm_plane *plane)
        rect.right = src_w - 1;
        rect.top = 0;
        rect.bottom = src_h - 1;
-       hal_fmt = HISI_FB_PIXEL_FORMAT_BGRA_8888;/* dss_get_format(fb->pixel_format); */
+       hal_fmt = dss_get_format(fb->format->format);
 
        DRM_DEBUG_DRIVER("channel%d: src:(%d,%d, %dx%d) crtc:(%d,%d, %dx%d), rect(%d,%d,%d,%d),fb:%dx%d, pixel_format=%d, stride=%d, paddr=0x%x, bpp=%d.\n",
                         chn_idx, src_x, src_y, src_w, src_h,


And now red and blue are swapped on my HDMI screen too.

I'll compare this part with your version, but I guess the bug is
on this logic.


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
