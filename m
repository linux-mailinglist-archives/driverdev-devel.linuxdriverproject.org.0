Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A138F36C35F
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3615E405C7;
	Tue, 27 Apr 2021 10:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BefxvoPcwVA7; Tue, 27 Apr 2021 10:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EA6E405BB;
	Tue, 27 Apr 2021 10:28:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36FEA1C116E
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2039240468
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTgC9eKMtYGv for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1802940466
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:27:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 44151613E9;
 Tue, 27 Apr 2021 10:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619519237;
 bh=sd0Tbm1JxAgHyOCM9be9oK37HHGPfkEz0uZUh62wOz4=;
 h=From:To:Cc:Subject:Date:From;
 b=BW+yDfoy6ULtFHWCkPpcBmsgZKAxhRNeSjc04ns/q6wZKtvGb/pTf5NxUByJaE/Zm
 sD431CxPKJ8E11WbY3JHC+2iDI7pXRLcY76CHHDoLfBkIwMC1i7G0qNKWrAJgzwouL
 79gyNUJZdTffSdCdN+6IxsLpv92Ffn7e3p3KYGNrwe8EVPQQacrqm/yfCR0Nn8KpeA
 cbfCQxQLqSiYDKBvZPWwE2fXATg0OpDQyPHdm0FoVwhIjRP+N6Yx0C1Q/ZMjQ097Yg
 YLfq1SAMq2JANmK3eNLWLcwCxBisQd1pLw8VPBHdsxHPertDSFDsuHkF8oK55bKtoV
 rULpkjPBGx0Gg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKvu-000nzE-Pa; Tue, 27 Apr 2021 12:27:10 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v3 00/79] Address some issues with PM runtime at media
 subsystem
Date: Tue, 27 Apr 2021 12:25:50 +0200
Message-Id: <cover.1619519080.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
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
Cc: Shawn Tu <shawnx.tu@intel.com>, Ricardo Ribalda <ribalda@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linuxarm@huawei.com,
 Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Dmitry Osipenko <digetx@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Leon Luo <leonl@leopardimaging.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Matt Ranostay <matt.ranostay@konsulko.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, linux-tegra@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Wenyou Yang <wenyou.yang@microchip.com>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, linux-media@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Benoit Parrot <bparrot@ti.com>, Helen Koike <helen.koike@collabora.com>,
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, mauro.chehab@huawei.com,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Chiranjeevi Rapolu <chiranjeevi.rapolu@intel.com>,
 linux-arm-kernel@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Hyungwoo Yang <hyungwoo.yang@intel.com>, linux-kernel@vger.kernel.org,
 Robert Foss <robert.foss@linaro.org>, Dan Scally <djrscally@gmail.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Yong Zhi <yong.zhi@intel.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

During the review of the patches from unm.edu, one of the patterns
I noticed is the amount of patches trying to fix pm_runtime_get_sync()
calls.

After analyzing the feedback from version 1 of this series, I noticed
a few other weird behaviors at the PM runtime resume code. So, this
series start addressing some bugs and issues at the current code.
Then, it gets rid of pm_runtime_get_sync() at the media subsystem
(with 2 exceptions).

It should be noticed that
Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added a new method to does a pm_runtime get, which increments
the usage count only on success.

The rationale of getting rid of pm_runtime_get_sync() is:

1. despite its name, this is actually a PM runtime resume call,
   but some developers didn't seem to realize that, as I got this
   pattern on some drivers:

        pm_runtime_get_sync(&client->dev);
        pm_runtime_disable(&client->dev);
        pm_runtime_set_suspended(&client->dev);
        pm_runtime_put_noidle(&client->dev);

   It makes no sense to resume PM just to suspend it again ;-)

2. Usual *_get() methods only increment their use count on success,
   but pm_runtime_get_sync() increments it unconditionally. Due to
   that, several drivers were mistakenly not calling
   pm_runtime_put_noidle() when it fails;

3. The name of the new variant is a lot clearer:
	pm_runtime_resume_and_get()
    As its same clearly says that this is a PM runtime resume function,
    that also increments the usage counter on success;

4. Consistency: we did similar changes subsystem wide with
   for instance strlcpy() and strcpy() that got replaced by
   strscpy(). Having all drivers using the same known-to-be-safe
   methods is a good thing;

5. Prevent newer drivers to copy-and-paste a code that it would
   be easier to break if they don't truly understand what's behind
   the scenes.

This series replace places  pm_runtime_get_sync(), by calling
pm_runtime_resume_and_get() instead.

This should help to avoid future mistakes like that, as people
tend to use the existing drivers as examples for newer ones.

compile-tested only.

Patches 1 to 7 fix some issues that already exists at the current
PM runtime code;

patches 8 to 20 fix some usage_count problems that still exists
at the media subsystem;

patches 21 to 78 repaces pm_runtime_get_sync() by 
pm_runtime_resume_and_get();

Patch 79 (and a hunk on patch 78) documents the two exceptions
where pm_runtime_get_sync() will still be used for now.

---

v3: - fix a compilation error;
v2: - addressed pointed issues and fixed a few other PM issues.

Mauro Carvalho Chehab (79):
  media: venus: fix PM runtime logic at venus_sys_error_handler()
  media: i2c: ccs-core: return the right error code at suspend
  media: i2c: mt9m001: don't resume at remove time
  media: i2c: ov7740: don't resume at remove time
  media: i2c: video-i2c: don't resume at remove time
  media: exynos-gsc: don't resume at remove time
  media: atmel: properly get pm_runtime
  media: marvel-ccic: fix some issues when getting pm_runtime
  media: mdk-mdp: fix pm_runtime_get_sync() usage count
  media: rcar_fdp1: fix pm_runtime_get_sync() usage count
  media: rga-buf: use pm_runtime_resume_and_get()
  media: renesas-ceu: Properly check for PM errors
  media: s5p: fix pm_runtime_get_sync() usage count
  media: am437x: fix pm_runtime_get_sync() usage count
  media: sh_vou: fix pm_runtime_get_sync() usage count
  media: mtk-vcodec: fix pm_runtime_get_sync() usage count
  media: s5p-jpeg: fix pm_runtime_get_sync() usage count
  media: delta-v4l2: fix pm_runtime_get_sync() usage count
  media: sun8i_rotate: fix pm_runtime_get_sync() usage count
  staging: media: rkvdec: fix pm_runtime_get_sync() usage count
  staging: media: atomisp_fops: use pm_runtime_resume_and_get()
  staging: media: imx7-mipi-csis: use pm_runtime_resume_and_get()
  staging: media: ipu3: use pm_runtime_resume_and_get()
  staging: media: cedrus_video: use pm_runtime_resume_and_get()
  staging: media: vde: use pm_runtime_resume_and_get()
  staging: media: csi: use pm_runtime_resume_and_get()
  staging: media: vi: use pm_runtime_resume_and_get()
  media: i2c: ak7375: use pm_runtime_resume_and_get()
  media: i2c: ccs-core: use pm_runtime_resume_and_get()
  media: i2c: dw9714: use pm_runtime_resume_and_get()
  media: i2c: dw9768: use pm_runtime_resume_and_get()
  media: i2c: dw9807-vcm: use pm_runtime_resume_and_get()
  media: i2c: hi556: use pm_runtime_resume_and_get()
  media: i2c: imx214: use pm_runtime_resume_and_get()
  media: i2c: imx219: use pm_runtime_resume_and_get()
  media: i2c: imx258: use pm_runtime_resume_and_get()
  media: i2c: imx274: use pm_runtime_resume_and_get()
  media: i2c: imx290: use pm_runtime_resume_and_get()
  media: i2c: imx319: use pm_runtime_resume_and_get()
  media: i2c: imx334: use pm_runtime_resume_and_get()
  media: i2c: imx355: use pm_runtime_resume_and_get()
  media: i2c: mt9m001: use pm_runtime_resume_and_get()
  media: i2c: ov02a10: use pm_runtime_resume_and_get()
  media: i2c: ov13858: use pm_runtime_resume_and_get()
  media: i2c: ov2659: use pm_runtime_resume_and_get()
  media: i2c: ov2685: use pm_runtime_resume_and_get()
  media: i2c: ov2740: use pm_runtime_resume_and_get()
  media: i2c: ov5647: use pm_runtime_resume_and_get()
  media: i2c: ov5648: use pm_runtime_resume_and_get()
  media: i2c: ov5670: use pm_runtime_resume_and_get()
  media: i2c: ov5675: use pm_runtime_resume_and_get()
  media: i2c: ov5695: use pm_runtime_resume_and_get()
  media: i2c: ov7740: use pm_runtime_resume_and_get()
  media: i2c: ov8856: use pm_runtime_resume_and_get()
  media: i2c: ov8865: use pm_runtime_resume_and_get()
  media: i2c: ov9734: use pm_runtime_resume_and_get()
  media: i2c: tvp5150: use pm_runtime_resume_and_get()
  media: i2c: video-i2c: use pm_runtime_resume_and_get()
  media: sti/hva: use pm_runtime_resume_and_get()
  media: ipu3: use pm_runtime_resume_and_get()
  media: coda: use pm_runtime_resume_and_get()
  media: exynos4-is: use pm_runtime_resume_and_get()
  media: exynos-gsc: use pm_runtime_resume_and_get()
  media: mtk-jpeg: use pm_runtime_resume_and_get()
  media: camss: use pm_runtime_resume_and_get()
  media: venus: use pm_runtime_resume_and_get()
  media: venus: vdec: use pm_runtime_resume_and_get()
  media: venus: venc: use pm_runtime_resume_and_get()
  media: rcar-fcp: use pm_runtime_resume_and_get()
  media: rkisp1: use pm_runtime_resume_and_get()
  media: s3c-camif: use pm_runtime_resume_and_get()
  media: s5p-mfc: use pm_runtime_resume_and_get()
  media: bdisp-v4l2: use pm_runtime_resume_and_get()
  media: stm32: use pm_runtime_resume_and_get()
  media: sunxi: use pm_runtime_resume_and_get()
  media: ti-vpe: use pm_runtime_resume_and_get()
  media: vsp1: use pm_runtime_resume_and_get()
  media: rcar-vin: use pm_runtime_resume_and_get()
  media: hantro: document the usage of pm_runtime_get_sync()

 drivers/media/cec/platform/s5p/s5p_cec.c      |  5 +++-
 drivers/media/i2c/ak7375.c                    | 10 +------
 drivers/media/i2c/ccs/ccs-core.c              | 18 +++++-------
 drivers/media/i2c/dw9714.c                    | 10 +------
 drivers/media/i2c/dw9768.c                    | 10 +------
 drivers/media/i2c/dw9807-vcm.c                | 10 +------
 drivers/media/i2c/hi556.c                     |  3 +-
 drivers/media/i2c/imx214.c                    |  6 ++--
 drivers/media/i2c/imx219.c                    |  6 ++--
 drivers/media/i2c/imx258.c                    |  6 ++--
 drivers/media/i2c/imx274.c                    |  3 +-
 drivers/media/i2c/imx290.c                    |  6 ++--
 drivers/media/i2c/imx319.c                    |  6 ++--
 drivers/media/i2c/imx334.c                    |  5 ++--
 drivers/media/i2c/imx355.c                    |  6 ++--
 drivers/media/i2c/mt9m001.c                   |  8 ++----
 drivers/media/i2c/ov02a10.c                   |  6 ++--
 drivers/media/i2c/ov13858.c                   |  6 ++--
 drivers/media/i2c/ov2659.c                    |  6 ++--
 drivers/media/i2c/ov2685.c                    |  7 ++---
 drivers/media/i2c/ov2740.c                    |  6 ++--
 drivers/media/i2c/ov5647.c                    |  9 +++---
 drivers/media/i2c/ov5648.c                    |  6 ++--
 drivers/media/i2c/ov5670.c                    |  6 ++--
 drivers/media/i2c/ov5675.c                    |  3 +-
 drivers/media/i2c/ov5695.c                    |  6 ++--
 drivers/media/i2c/ov7740.c                    |  8 ++----
 drivers/media/i2c/ov8856.c                    |  3 +-
 drivers/media/i2c/ov8865.c                    |  6 ++--
 drivers/media/i2c/ov9734.c                    |  3 +-
 drivers/media/i2c/tvp5150.c                   | 16 ++---------
 drivers/media/i2c/video-i2c.c                 | 14 +++-------
 drivers/media/pci/intel/ipu3/ipu3-cio2-main.c |  3 +-
 drivers/media/platform/am437x/am437x-vpfe.c   | 22 +++++++++++----
 drivers/media/platform/atmel/atmel-isc-base.c | 27 +++++++++++++-----
 drivers/media/platform/atmel/atmel-isi.c      | 19 ++++++++++---
 drivers/media/platform/coda/coda-common.c     |  5 ++--
 drivers/media/platform/exynos-gsc/gsc-core.c  |  3 --
 drivers/media/platform/exynos-gsc/gsc-m2m.c   |  2 +-
 .../media/platform/exynos4-is/fimc-capture.c  |  6 ++--
 drivers/media/platform/exynos4-is/fimc-is.c   |  4 +--
 .../platform/exynos4-is/fimc-isp-video.c      |  3 +-
 drivers/media/platform/exynos4-is/fimc-isp.c  |  7 ++---
 drivers/media/platform/exynos4-is/fimc-lite.c |  5 ++--
 drivers/media/platform/exynos4-is/fimc-m2m.c  |  2 +-
 drivers/media/platform/exynos4-is/media-dev.c |  8 ++----
 drivers/media/platform/exynos4-is/mipi-csis.c |  8 ++----
 .../media/platform/marvell-ccic/mcam-core.c   |  9 ++++--
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   |  4 +--
 drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c  |  6 ++--
 .../platform/mtk-vcodec/mtk_vcodec_dec_pm.c   |  4 +--
 .../media/platform/qcom/camss/camss-csid.c    |  6 ++--
 .../media/platform/qcom/camss/camss-csiphy.c  |  6 ++--
 .../media/platform/qcom/camss/camss-ispif.c   |  6 ++--
 drivers/media/platform/qcom/camss/camss-vfe.c |  5 ++--
 drivers/media/platform/qcom/venus/core.c      | 28 +++++++++++--------
 .../media/platform/qcom/venus/pm_helpers.c    | 10 +++----
 drivers/media/platform/qcom/venus/vdec.c      |  4 +--
 drivers/media/platform/qcom/venus/venc.c      |  5 ++--
 drivers/media/platform/rcar-fcp.c             |  6 ++--
 drivers/media/platform/rcar-vin/rcar-csi2.c   |  6 ++++
 drivers/media/platform/rcar-vin/rcar-dma.c    |  6 ++--
 drivers/media/platform/rcar-vin/rcar-v4l2.c   |  6 ++--
 drivers/media/platform/rcar_fdp1.c            | 12 ++++++--
 drivers/media/platform/renesas-ceu.c          |  4 +--
 drivers/media/platform/rockchip/rga/rga-buf.c |  3 +-
 drivers/media/platform/rockchip/rga/rga.c     |  4 ++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  3 +-
 .../media/platform/s3c-camif/camif-capture.c  |  2 +-
 drivers/media/platform/s3c-camif/camif-core.c |  5 ++--
 drivers/media/platform/s5p-jpeg/jpeg-core.c   |  2 +-
 drivers/media/platform/s5p-mfc/s5p_mfc_pm.c   |  6 ++--
 drivers/media/platform/sh_vou.c               |  6 +++-
 drivers/media/platform/sti/bdisp/bdisp-v4l2.c |  7 +++--
 drivers/media/platform/sti/delta/delta-v4l2.c |  4 +--
 drivers/media/platform/sti/hva/hva-hw.c       | 17 +++++------
 drivers/media/platform/stm32/stm32-dcmi.c     |  5 ++--
 .../platform/sunxi/sun4i-csi/sun4i_v4l2.c     |  6 ++--
 .../sunxi/sun8i-rotate/sun8i_rotate.c         |  2 +-
 drivers/media/platform/ti-vpe/cal-video.c     |  4 ++-
 drivers/media/platform/ti-vpe/cal.c           |  8 ++++--
 drivers/media/platform/ti-vpe/vpe.c           |  4 +--
 drivers/media/platform/vsp1/vsp1_drv.c        |  6 ++--
 .../staging/media/atomisp/pci/atomisp_fops.c  |  6 ++--
 drivers/staging/media/hantro/hantro_drv.c     |  7 +++++
 drivers/staging/media/imx/imx7-mipi-csis.c    |  7 ++---
 drivers/staging/media/ipu3/ipu3.c             |  3 +-
 drivers/staging/media/rkvdec/rkvdec.c         |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  6 ++--
 drivers/staging/media/tegra-vde/vde.c         | 16 +++++++----
 drivers/staging/media/tegra-video/csi.c       |  3 +-
 drivers/staging/media/tegra-video/vi.c        |  3 +-
 92 files changed, 298 insertions(+), 335 deletions(-)

-- 
2.30.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
