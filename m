Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48B824A324
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 17:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7B0C86BA1;
	Wed, 19 Aug 2020 15:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZeSovAJD0Xv; Wed, 19 Aug 2020 15:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 731E885EA5;
	Wed, 19 Aug 2020 15:31:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6051BF421
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 15:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 079CB85D00
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 15:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLlVzjJrkFI1 for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 15:31:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D86B85930
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 15:31:17 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D205F29E;
 Wed, 19 Aug 2020 17:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597851063;
 bh=DVs19L0VhTXPW2QTvGxXKfAP7MNmvNDtF8FLDixJwXI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YTWpYxMUFWq/HkzThpPGRLXevQIo6ltyyqaFIjS0BTu/E3WAJAfGMN6nDh16BrBfh
 osiPwb5zNiVh+z/IgnIXMg1tjG9CHVOm1gKRuCZLViqVpxI9GYzsi+9M1jJn/XcsH+
 ceXo7IQkWFgTtIgKrYX5c9MpRw8J0Qazzepv3tJE=
Date: Wed, 19 Aug 2020 18:30:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 00/49] DRM driver for Hikey 970
Message-ID: <20200819153045.GA18469@pendragon.ideasonboard.com>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <20200819152120.GA106437@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819152120.GA106437@ravnborg.org>
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, devel@driverdev.osuosl.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Bogdan Togorean <bogdan.togorean@analog.com>, Jakub Kicinski <kuba@kernel.org>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Liwei Cai <cailiwei@hisilicon.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen Feng <puck.chen@hisilicon.com>,
 Alexei Starovoitov <ast@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, mauro.chehab@huawei.com,
 Rob Clark <robdclark@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Liuyao An <anliuyao@huawei.com>, netdev@vger.kernel.org,
 Rongrong Zou <zourongrong@gmail.com>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 19, 2020 at 05:21:20PM +0200, Sam Ravnborg wrote:
> Hi Mauro.
> 
> On Wed, Aug 19, 2020 at 01:45:28PM +0200, Mauro Carvalho Chehab wrote:
> > This patch series port the out-of-tree driver for Hikey 970 (which
> > should also support Hikey 960) from the official 96boards tree:
> > 
> >    https://github.com/96boards-hikey/linux/tree/hikey970-v4.9
> > 
> > Based on his history, this driver seems to be originally written
> > for Kernel 4.4, and was later ported to Kernel 4.9. The original
> > driver used to depend on ION (from Kernel 4.4) and had its own
> > implementation for FB dev API.
> > 
> > As I need to preserve the original history (with has patches from
> > both HiSilicon and from Linaro),  I'm starting from the original
> > patch applied there. The remaining patches are incremental,
> > and port this driver to work with upstream Kernel.
> > 
> > This driver doesn't depend on any firmware or on any special
> > userspace code. It works as-is with both X11 and Wayland.
> > 
> > Yet, I'm submitting it via staging due to the following reasons:
> > 
> > - It depends on the LDO3 power supply, which is provided by
> >   a regulator driver that it is currently on staging;
> > - Due to legal reasons, I need to preserve the authorship of
> >   each one responsbile for each patch. So, I need to start from
> >   the original patch from Kernel 4.4;
> > - There are still some problems I need to figure out how to solve:
> >    - The adv7535 can't get EDID data. Maybe it is a timing issue,
> >      but it requires more research to be sure about how to solve it;
> >    - The driver only accept resolutions on a defined list, as there's
> >      a known bug that this driver may have troubles with random
> >      resolutions. Probably due to a bug at the pixel clock settings;
> >    - Sometimes (at least with 1080p), it generates LDI underflow
> >      errors, which in turn causes the DRM to stop working. That
> >      happens for example when using gdm on Wayland and
> >      gnome on X11;
> >    - Probably related to the previous issue, when the monitor
> >      suspends due to DPMS, it doesn't return back to life.
> > 
> > So, IMO, the best is to keep it on staging for a while, until those
> > remaining bugs gets solved.
> > 
> > I added this series, together with the regulator driver and
> > a few other patches (including a hack to fix a Kernel 5.8 
> > regression at WiFi ) at:
> > 
> > 	https://gitlab.freedesktop.org/mchehab_kernel/hikey-970/-/commits/master
> > 
> > 
> > Chen Feng (1):
> >   staging: hikey9xx: Add hisilicon DRM driver for hikey960/970
> > 
> > John Stultz (1):
> >   staging: hikey9xx/gpu: port it to work with Kernel v4.9
> > 
> > Liwei Cai (2):
> >   staging: hikey9xx/gpu: solve tearing issue of display
> >   staging: hikey9xx/gpu: resolve the performance issue by interrupt
> >     mechanism
> > 
> > Mauro Carvalho Chehab (38):
> >   staging: hikey9xx/gpu: get rid of adv7535 fork
> Very good - I was in my mind starting a rant why we needed a fork of
> this driver, but I see it gets deleted again.
> 
> I do acknowledge you need to preserve history and all -
> but this patchset is not easy to review.

Why do we need to preserve history ? Adding relevant Signed-off-by and
Co-developed-by should be enough, shouldn't it ? Having a public branch
that contains the history is useful if anyone is interested, but I don't
think it's required in mainline.

> Could you follow-up with a review-able set of patches as a follow-up
> for this?
> I spotted some wrong bridge handling in one patch but I do not know if
> this got changed in a later patch. And I lost the motivation to go
> looking for it.
> 
> >   staging: hikey9xx/gpu: rename the Kirin9xx namespace
> >   staging: hikey9xx/gpu: get rid of kirin9xx_fbdev.c
> >   staging: hikey9xx/gpu: get rid of some ifdefs
> >   staging: hikey9xx/gpu: rename the config option for Kirin970
> >   staging: hikey9xx/gpu: change the includes to reflect upstream
> >   staging: hikey9xx/gpu: port driver to upstream kAPIs
> >   staging: hikey9xx/gpu: add a copy of set_reg() function there
> >   staging: hikey9xx/gpu: get rid of ION headers
> >   staging: hikey9xx/gpu: add support for using a reserved CMA memory
> >   staging: hikey9xx/gpu: cleanup encoder attach logic
> >   staging: hikey9xx/gpu: Change the logic which sets the burst mode
> >   staging: hikey9xx/gpu: fix the DRM setting logic
> >   staging: hikey9xx/gpu: do some code cleanups
> >   staging: hikey9xx/gpu: use default GEM_CMA fops
> >   staging: hikey9xx/gpu: place vblank enable/disable at the right place
> >   staging: hikey9xx/gpu: remove an uneeded hack
> >   staging: hikey9xx/gpu: add a possible implementation for
> >     atomic_disable
> >   staging: hikey9xx/gpu: register connector
> >   staging: hikey9xx/gpu: fix driver name
> >   staging: hikey9xx/gpu: get rid of iommu_format
> >   staging: hikey9xx/gpu: re-work the mode validation code
> >   staging: hikey9xx/gpu: add support for enable/disable ldo3 regulator
> >   staging: hikey9xx/gpu: add SPMI headers
> >   staging: hikey9xx/gpu: solve most coding style issues
> >   staging: hikey9xx/gpu: don't use iommu code
> >   staging: hikey9xx/gpu: add kirin9xx driver to the building system
> >   staging: hikey9xx/gpu: get rid of typedefs
> >   staging: hikey9xx/gpu: get rid of input/output macros
> >   staging: hikey9xx/gpu: get rid of some unused data
> >   staging: hikey9xx/gpu: place common definitions at kirin9xx_dpe.h
> >   staging: hikey9xx/gpu: get rid of DRM_HISI_KIRIN970
> >   dts: hisilicon: hi3670.dtsi: add I2C settings
> >   dts: hikey970-pinctrl.dtsi: add missing pinctrl settings
> >   dt: hisilicon: add support for the PMIC found on Hikey 970
> >   dts: add support for Hikey 970 DRM
> >   staging: hikey9xx/gpu: drop kirin9xx_pwm
> >   dt: display: Add binds for the DPE and DSI controller for Kirin
> >     960/970
> > 
> > Xiubin Zhang (7):
> >   staging: hikey9xx/gpu: add support to hikey970 HDMI and panel
> >   staging: hikey9xx/gpu: Solve SR Cannot Display Problems.
> >   staging: hikey9xx/gpu: Solve HDMI compatibility Problem.
> >   staging: hikey9xx/gpu: Support MIPI DSI 3 lanes for hikey970.
> >   staging: hikey9xx/gpu: Solve SR test reset problem for hikey970.
> >   staging: hikey9xx/gpu: add debug prints for this driver
> >   staging: hikey9xx/gpu: Add support 10.1 inch special HDMI displays.
> > 
> >  .../display/hisilicon,hi3660-dpe.yaml         |   99 +
> >  .../display/hisilicon,hi3660-dsi.yaml         |  102 +
> >  .../boot/dts/hisilicon/hi3670-hikey970.dts    |   56 +-
> >  arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |   77 +
> >  .../boot/dts/hisilicon/hikey970-drm.dtsi      |   93 +
> >  .../boot/dts/hisilicon/hikey970-pinctrl.dtsi  |  548 +++-
> >  .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  197 ++
> >  drivers/staging/hikey9xx/Kconfig              |    3 +
> >  drivers/staging/hikey9xx/Makefile             |    1 +
> >  drivers/staging/hikey9xx/gpu/Kconfig          |   22 +
> >  drivers/staging/hikey9xx/gpu/Makefile         |    9 +
> >  drivers/staging/hikey9xx/gpu/kirin960_defs.c  |  378 +++
> >  .../staging/hikey9xx/gpu/kirin960_dpe_reg.h   |  233 ++
> >  drivers/staging/hikey9xx/gpu/kirin970_defs.c  |  381 +++
> >  .../staging/hikey9xx/gpu/kirin970_dpe_reg.h   | 1188 ++++++++
> >  drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h   | 2437 +++++++++++++++++
> >  .../hikey9xx/gpu/kirin9xx_drm_dpe_utils.c     | 1178 ++++++++
> >  .../hikey9xx/gpu/kirin9xx_drm_dpe_utils.h     |  286 ++
> >  .../staging/hikey9xx/gpu/kirin9xx_drm_drv.c   |  368 +++
> >  .../staging/hikey9xx/gpu/kirin9xx_drm_drv.h   |   57 +
> >  .../staging/hikey9xx/gpu/kirin9xx_drm_dss.c   | 1063 +++++++
> >  .../hikey9xx/gpu/kirin9xx_drm_overlay_utils.c | 1005 +++++++
> >  .../hikey9xx/gpu/kirin9xx_dw_drm_dsi.c        | 2132 ++++++++++++++
> >  .../hikey9xx/gpu/kirin9xx_dw_dsi_reg.h        |  146 +
> >  .../staging/hikey9xx/gpu/kirin9xx_fb_panel.h  |  191 ++
> >  25 files changed, 12229 insertions(+), 21 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/hisilicon,hi3660-dpe.yaml
> >  create mode 100644 Documentation/devicetree/bindings/display/hisilicon,hi3660-dsi.yaml
> 
> Patch that intropduce new bindings must following the submitting patches
> guidelines for bindings. For once the subject is "dt-bindings: bla bla".
> 
> >  create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-drm.dtsi
> >  create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
> >  create mode 100644 drivers/staging/hikey9xx/gpu/Kconfig
> >  create mode 100644 drivers/staging/hikey9xx/gpu/Makefile
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin960_defs.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin970_defs.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_dpe.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_dw_dsi_reg.h
> >  create mode 100644 drivers/staging/hikey9xx/gpu/kirin9xx_fb_panel.h

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
