Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 194741A2968
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 21:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAD5784728;
	Wed,  8 Apr 2020 19:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KCmRphClEcf; Wed,  8 Apr 2020 19:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E0D480AD5;
	Wed,  8 Apr 2020 19:38:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B36751BF296
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 19:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A44B0844CD
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 19:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxK6YXQt7D47 for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 19:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C3FB83DC2
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 19:38:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2D46728917A
Message-ID: <58f011c7bd67c886892ac98505b916cc95adf495.camel@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 08 Apr 2020 16:38:30 -0300
In-Reply-To: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
References: <20200408155325.2077345-1-arnd@arndb.de>
 <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
 <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Eddie Cai <eddie.cai.linux@gmail.com>, Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip
 SoC support" <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-04-08 at 21:08 +0200, Arnd Bergmann wrote:
> On Wed, Apr 8, 2020 at 7:56 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> > > When compile-testing with CONFIG_OF disabled, we get a warning
> > > about an unused variable, and about inconsistent Kconfig dependencies:
> > > 
> > > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> > >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
> > >   Selected by [m]:
> > >   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> > > (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> > > 
> > > drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> > > drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
> > >   457 |  struct device_node *node = pdev->dev.of_node;
> > > 
> > > Simply open-coding the pointer dereference in the only place
> > > the variable is used avoids the warning in all configurations,
> > > so we can allow compile-testing as well.
> > > 
> > 
> > Hello Arnd,
> > 
> > Thanks for your patch.
> > 
> > I believe this is already fixed here:
> > 
> > https://patchwork.linuxtv.org/patch/62774/
> > https://patchwork.linuxtv.org/patch/62775/
> 
> Ok, sorry for the duplicate. I only tested on mainline from a few days ago,
> so I must have missed it getting merged in the meantime.
> 

No worries!

Those were was sent very recently, and won't be
merged any time soon :-)

Ezequiel


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
