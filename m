Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AA624A83F
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 23:13:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDD3487913;
	Wed, 19 Aug 2020 21:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hd0pzXVWz+oB; Wed, 19 Aug 2020 21:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 715EF878F7;
	Wed, 19 Aug 2020 21:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085981BF3B9
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 21:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 028CB221DC
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 21:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZeN0YLGK8hDs for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 21:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C862721FAD
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 21:13:16 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id v6so20207882ota.13
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 14:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XGE8dPFSXYEZY67KuvOacTrjS0cJR2sJ8jZigtxvT7c=;
 b=mPWQgnUIx5fMgmgXzJ6jrT9sIN00Yf+GClMAKr4ClWAdjAA4w+lviTX3XWr3wm1Goo
 rQjFG51Cdr4YPxAjK35duJTf30LCb6lQNPlTl84h1Epcxt6XdCsf8986cWbmYtNepgvc
 3xI2HuhFK4CCHgXDgidlZ8WcN6oJg3gLBiQgcpZJxjBCQwneojRxl8lBHm37DZAkSyAY
 g9kxWUPJqF9KeU0bVW5EUFWEw20lL33GC/9G3DsQSorao8D9u4hE2yYGbpjgm3r2RjUY
 gg62Gkv18dQ59EXr8xIM7C8mhKafsKXPDWPqhOLmItPb9PP2bDwfwborj/3f029qfjzf
 aC+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XGE8dPFSXYEZY67KuvOacTrjS0cJR2sJ8jZigtxvT7c=;
 b=bfTGk/zWLWPHaKjhl0qCKCORdyoyLdfryX/fNgTJ9TVe7Kl1iBUeIPKz7vq4pzOVX1
 GB6aKHBs4d8UFz6DVzZMc4yUAONB71F8di7zxZW/Xy4wY69RNcdDq+MKu6l5pcAGzH7w
 Qi0pdw4GNsCQvrHnUXchs3nCu+uMOJQtkOAHveJpURKu5dlv79EGkQyMqzO2dcMtj5mx
 mGWnY44KnzTNbXbTzu6AGsfE9GJ9YOdXHoO3nCVrFkgGf+ZUxgtpMUoNxtJfHTEx4dFz
 roBRhG0gZczkWLm4QPTDS2ByZpAd9a1LtQvRMzi8H7tCsDC7o/869+uUY7qiPP+Zfbdy
 5viw==
X-Gm-Message-State: AOAM533s4VPTA7w7Sl7pF9rcAu7xFc8SlWrq/gVpikX1/HjjpQkyDQ7C
 8ZS14b23iFB4Uf2YxcXDbOLKCkzNNOjnyHy6ui3W7Q==
X-Google-Smtp-Source: ABdhPJxhdrorTIm+ix91I8dYTcsNujAlZfMSdVgeY/HYKUOyGno6SluKmoa8UI5RQOyUlsJyf0LVh3NyFOVKbkbzMl4=
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr18983475otq.221.1597871595940; 
 Wed, 19 Aug 2020 14:13:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Aug 2020 14:13:05 -0700
Message-ID: <CALAqxLVRsPKv-xmxQfBFaBa9XOmSfrFj3w9_zyfzNJk8+Kfjug@mail.gmail.com>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 David Airlie <airlied@linux.ie>, Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-media <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
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

On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> Yet, I'm submitting it via staging due to the following reasons:
>
> - It depends on the LDO3 power supply, which is provided by
>   a regulator driver that it is currently on staging;
> - Due to legal reasons, I need to preserve the authorship of
>   each one responsbile for each patch. So, I need to start from
>   the original patch from Kernel 4.4;
> - There are still some problems I need to figure out how to solve:
>    - The adv7535 can't get EDID data. Maybe it is a timing issue,
>      but it requires more research to be sure about how to solve it;

I've seen this on the HiKey960 as well. There is a patch to the
adv7533 driver I have to add a mdelay that seems to consistently
resolve the timing problem.  At some point I mentioned it to one of
the maintainers who seems open to having it added, but it seemed silly
to submit it until there was a upstream driver that needed such a
change.  So I think that patch can be submitted as a follow on to this
(hopefully cleaned up) series.

>    - The driver only accept resolutions on a defined list, as there's
>      a known bug that this driver may have troubles with random
>      resolutions. Probably due to a bug at the pixel clock settings;

So, yes, the SoC clks can't generate proper signals for HDMI
frequencies (apparently it's not an issue for panels). There is a
fixed set that we can get "close enough" that most monitors will work,
but its always a bit iffy (some monitors are strict in what they
take).

On the kirin driver, we were able to do a calculation to figure out if
the generated frequency would be close enough:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c#n615

I suspect we could do something similar for the hikey960/70, but I've
not really had time to dig in deeply there.

Personally, I don't see the allow-list as a problematic short term
solution, and again, not sure its worth pushing to staging for.

>    - Sometimes (at least with 1080p), it generates LDI underflow
>      errors, which in turn causes the DRM to stop working. That
>      happens for example when using gdm on Wayland and
>      gnome on X11;

Interestingly, I've not seen this on HiKey960 (at least with
Android/Surfaceflinger). The original HiKey board does have the
trouble where at 1080p the screen sometimes comes up horizontally
offset due to the LDI underflow, but the patches to address it have
been worse then the problem, so we reverted those.

>    - Probably related to the previous issue, when the monitor
>      suspends due to DPMS, it doesn't return back to life.
>

I don't believe I see this on HiKey960. But if it's the LDI issue on
the 970 that may explain it.


> So, IMO, the best is to keep it on staging for a while, until those
> remaining bugs gets solved.

I'm not sure I see all of these as compelling for pushing it in via
staging. And I suspect in the process of submitting the patches for
review folks may find the cause of some of the problems you list here.


> I added this series, together with the regulator driver and
> a few other patches (including a hack to fix a Kernel 5.8
> regression at WiFi ) at:
>
>         https://gitlab.freedesktop.org/mchehab_kernel/hikey-970/-/commits/master
>
>
> Chen Feng (1):
>   staging: hikey9xx: Add hisilicon DRM driver for hikey960/970
>
> John Stultz (1):
>   staging: hikey9xx/gpu: port it to work with Kernel v4.9

Nit: This is a display driver and has little to do with the GPU (other
then it will eventually live in drivers/gpu/drm/...), so I might
suggest using more conventional subject prefix,  "drm: hisilicon:"

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
