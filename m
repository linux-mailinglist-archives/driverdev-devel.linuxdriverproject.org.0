Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345E624AD51
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 05:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B10ED8837C;
	Thu, 20 Aug 2020 03:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdancZYwl7m3; Thu, 20 Aug 2020 03:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 907C388368;
	Thu, 20 Aug 2020 03:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3E81BF38A
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 03:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A0C887A0D
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 03:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsSSRv330tG7 for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 03:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A87A5879E1
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 03:28:57 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id v6so358863ota.13
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 20:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fF+dRt58CyDJkqe2eFqFPurhOlRy+MhyKYgh/jsdn+Q=;
 b=sba2bQKZNNe3zs7DYGbWWnjDeDgJKgdgFl32qpVY2IcZo+5it6qr30pLargiHNS1VF
 9N2ljSuI1xb3X3jUO3hdYU4FwW/zbxBKCLHKGFFsylv7KVY9AwKKe/OCHH7ah7bgWAFP
 0V/R+fYE35vhDbNT1QyHmR93yxMFHFfQuxa+rksura1/kna69BSVHKM97tFjQwmJg6Xu
 1e73cN9AHHnV7VLtkVZmiIYzq2UYw7luIiq9vXs3LcbNgGTzGCdWCnbhSJyxl00LgsnJ
 hcclkwsEGFVhEzVEODFZJQ+fBkc8rglEjeeUhLVeARy2aLUwp5EkeZXVFgo5EOUBJLA9
 mH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fF+dRt58CyDJkqe2eFqFPurhOlRy+MhyKYgh/jsdn+Q=;
 b=N6tQ4y3/9PH93dmaHPB5o4t4M4uvqUG2IifzhVqGyllzNUeNwg5+EKcGhGjHkBXMCm
 KfZy0Y+sDHkz8Y/jd9cJ1ngBwdvgY4iiVA5BXxqbhsezuy1e4vi6+eV9XQEHOdDBEZD8
 oA2qggXLnYYGK8RgYb5smra2Y84XkUbAKgJFXswtFXNNUk6+gbkFQ1dl4ZfTLqWi/hhm
 xIOvIZLillYI5Ob7P/mlPYD4hBMFtsctM7p90h8oP/8m85Zr30Ob3h13xWWFkWuRIU7t
 R+EKAmJFFDNK2YZsaQ4qRL0jjgqGsOrkZbdybfCBwgVcVZLHhjNIm+zrEx43+XgO7drd
 hFIA==
X-Gm-Message-State: AOAM531xlh3CnK5GkA9QkVZsXZZXY8EKT7Rh1s4RtU7WkPnaDpn6A/xa
 Qk89OAus2D2GADJtkl6scUTKGDB6eTwZRONDdZCGhw==
X-Google-Smtp-Source: ABdhPJxZ7nw2s4Dxik9WLGdcKtJi9XiOGz8t6RoivsF5sQizqu4GALCfVQirCeiffIuh9kOf+5CS/1tORO2ndusgNc4=
X-Received: by 2002:a05:6830:237b:: with SMTP id
 r27mr722568oth.352.1597894136679; 
 Wed, 19 Aug 2020 20:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <CALAqxLU3bt6fT4nGHZFSnzyQq4xJo2On=c_Oa9ONED9-jhaFgw@mail.gmail.com>
 <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
In-Reply-To: <CALAqxLW98nVc-=8Q6nx-wRP1z8pzkw1_zNc9M7V3GhnJQqM9rg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Aug 2020 20:28:44 -0700
Message-ID: <CALAqxLULQvW3UikCHpEzSDnpeYnBy8wDSsWZNbSrmivQTW3_Sg@mail.gmail.com>
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
 John Fastabend <john.fastabend@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
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

On Wed, Aug 19, 2020 at 7:01 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Aug 19, 2020 at 2:36 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
> > <mchehab+huawei@kernel.org> wrote:
> > > So, IMO, the best is to keep it on staging for a while, until those
> > > remaining bugs gets solved.
> > >
> > > I added this series, together with the regulator driver and
> > > a few other patches (including a hack to fix a Kernel 5.8
> > > regression at WiFi ) at:
> > >
> > >         https://gitlab.freedesktop.org/mchehab_kernel/hikey-970/-/commits/master
> >
> > Sorry, one more small request: Could you create a branch that only has
> > the DRM driver changes in it?
> >
> > The reason I ask, is that since the HiKey960 isn't affected by the
> > majority of the problems you listed as motivation for going through
> > staging. So if we can validate that your tree works fine on HiKey960,
> > the series can be cleaned up and submitted properly upstream to enable
> > that SoC, and the outstanding 970 issues can be worked out afterwards
> > against mainline.
>
> Just as a heads up, I tried testing your tree with my HiKey960, and
> after fixing the compat string inconsistency, the drivers seem to load
> properly. However the drm_hwcomposer seems to have some trouble with
> the driver:
> 01-01 00:12:41.456   345   345 E hwc-drm-display-compositor: Commit
> test failed for display 0, FIXME
> 01-01 00:12:41.456   345   345 E hwc-drm-two: Failed to apply the
> frame composition ret=-22
> 01-01 00:12:41.456   351   351 E HWComposer:
> presentAndGetReleaseFences: present failed for display 0: BadParameter
> (4)
>
> I'll dig in a bit further as to why, but wanted to give you a heads up.

Ok, I've mostly gotten it sorted out:
  - You're missing a few color formats.
  - And I re-discovered a crash that was already fixed in my tree.

I'll send those patches in a few here.

That said even with the patches I've got on top of your series, I
still see a few issues:
1) I'm seeing red-blue swap with your driver.  I need to dig a bit to
see what the difference is, I know gralloc has a config option for
this, and maybe the version of the driver I'm carrying has it wrong?
2) Performance is noticeably worse. Whereas with my tree, I see close
to 60fps (that clk issue we mentioned earlier is why it's not exactly
60) in most tests, but with yours it mostly hovers around 30some fps,
occasionally speeding up to 40 and then back down.

Obviously with some work I suspect we'll be able to sort these out,
but I also do feel that the set you're starting with for upstreaming
is pretty old. The driver I'm carrying was heavily refactored around
5.0 to share code with the existing kirin driver, in the hopes of
making usptreaming easier, and it seems a shame to throw that out and
focus your efforts on the older tree.

But to be fair, I've not had time to upstream the driver myself, and
it's obviously your choice on how you spend your time.  I am really
excited to see your efforts here, regardless of which driver you end
up pushing.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
