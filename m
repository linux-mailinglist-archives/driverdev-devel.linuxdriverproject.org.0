Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 596EB6FB1E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 10:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABAB585657;
	Mon, 22 Jul 2019 08:18:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4T-0Cy-qqBE; Mon, 22 Jul 2019 08:18:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAAD6854E0;
	Mon, 22 Jul 2019 08:18:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC511BF34E
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 663768589A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjOlum64Hvhb for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 08:18:28 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9360E854C0
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 08:18:27 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MDy54-1hfXGl0sHk-009wlj; Mon, 22 Jul 2019 10:12:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media/davinci_vpfe: fix pinmux setup compilation
Date: Mon, 22 Jul 2019 10:12:28 +0200
Message-Id: <20190722081243.2084226-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:hlukYgWRgt4/3YVHFCw1Vmew2hCmJnG8RvD4P1hBcKoJOViX8q9
 oFlF/jBcClWveHnPZ2Zee+wn0w15iK9LcURzTVmH9Cv5iFpAZeFRjGTHyIN3TSyIVSlLouW
 cLm9pZxR2RspvgMhpvP9O82HTs6TzdW/he0JmH6O3dTp8m5xwyVrq2hyo05EQWUgMm3OM2a
 qx7SEApLChBFMO2aRGvFg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:y1uvxcCiN/U=:ALOANui/tZfWdm3WIzlZUx
 kTgqthoHPlNQxLGBlXEufzkbqZJLJW0ptkmrvNiX7/cWqqEZu285mEOe7dhc81GUXAIS3EU/+
 sIT5AVt5d8Gqme+YOfZZUDePBRp9mM2HgxU8eZ/YrE1ggQSBtfcXdS1pAthl2ji4OWPv0elQ5
 SWNY6Qanfeuo0Btf/NYVTpvpFqxXq4VMzmpp6clNRjacnWZmpSx/TSJ7Wo6eerYgCefhYmLFi
 sgbMj/WBupNJVP/2sK9cfyGcW6B8V0DxrCsK4u7FdcFrRg9ylQX7Mo8EgkHWCH6b5BTYUr7NO
 EUZnaWopHOOzjKKza29F/iVe2WUjVfolH74N+XW/A3tVquxYetPvqF7TC48RxCdaXAI2s/8Tp
 jkgnW0Kde5cnbAuhuXDQc3SgHO3zo7C4F7CegkkNzbJAd5+tIbIH93k5lV8pZ0SSEeHaAqVRW
 2fdqzvBaJudLBHPy0SOvbcauGYp4skekBr6SUoKwF55EDeKQUrKBHMmVQ17rxIgmXtYpatzR5
 cBWWOkFKqIih/pQCm5ogzL0hv9OkGpfzD48qwYls7kFNlS21wM17VigidSPihGQnqKQI42tO+
 Xy0n2TIwJXMmdyYcLOxXe+tja2NkIVwkBS0kE2XNVMsFbJzeiard9epYVi/3xH9W/Hyow8aMi
 Z5Wu88JImrLeXoi7o7Ls5gmj3hb+kN0eP7+5DqtDJa88tD6lKyZJdgROw8LisuaFNA474blrv
 jZnI5VFENmB082H8RS5WsR9IfQVq4eRYdF8TgA==
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
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
 devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mukesh Ojha <mojha@codeaurora.org>, Sekhar Nori <nsekhar@ti.com>,
 Ioannis Valasakis <code@wizofe.uk>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The dm365_isif staging driver uses an odd method for configuring its
pin muxing by calling directly into low-level davinci platform specific
code, even when being compile-tested for other platforms.

As we want davinci to be part of a multi-platform kernel, this will
cause a build failure when those headers are no longer exported even
for davinci:

drivers/staging/media/davinci_vpfe/dm365_isif.c: In function 'vpfe_isif_init':
drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:2: error: implicit declaration of function 'davinci_cfg_reg'; did you mean 'omap_cfg_reg'? [-Werror=implicit-function-declaration]
  davinci_cfg_reg(DM365_VIN_CAM_WEN);
  ^~~~~~~~~~~~~~~
  omap_cfg_reg
drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:18: error: 'DM365_VIN_CAM_WEN' undeclared (first use in this function); did you mean 'DM365_ISIF_MAX_CLDC'?
  davinci_cfg_reg(DM365_VIN_CAM_WEN);
                  ^~~~~~~~~~~~~~~~~

Digging further, it seems that the platform data structures defined
in drivers/staging/media/davinci_vpfe/vpfe.h are an incompatible
version of the same structures in include/media/davinci/vpfe_capture.h,
which is the version that is used by the platform code, so the
combination that exists in the mainline kernel cannot be used.

The platform code already has an abstraction for the pinmux,
in the form of the dm365_isif_setup_pinmux() helper. If we want
to ever get to use the staging driver again, this needs to be
read from the platform data passed to this driver, or rewritten
to use the pinmux framework.

For the moment, pretend we pass the helper function in the
staging platform driver to get it to build cleanly. I could
not figure out how the staging driver relates to the code
in drivers/media/platform/davinci/, some clarification on that
would be helpful to decide what the long-term plan on this
should be to either remove the staging driver as obsolete or
integrate it with the rest in a way that actually works.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/davinci_vpfe/Makefile     | 5 -----
 drivers/staging/media/davinci_vpfe/dm365_isif.c | 8 +++-----
 drivers/staging/media/davinci_vpfe/dm365_isif.h | 2 --
 drivers/staging/media/davinci_vpfe/vpfe.h       | 2 ++
 4 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/Makefile b/drivers/staging/media/davinci_vpfe/Makefile
index 0ae8c5014f74..3b93e0583940 100644
--- a/drivers/staging/media/davinci_vpfe/Makefile
+++ b/drivers/staging/media/davinci_vpfe/Makefile
@@ -4,8 +4,3 @@ obj-$(CONFIG_VIDEO_DM365_VPFE) += davinci-vfpe.o
 davinci-vfpe-objs := \
 	dm365_isif.o dm365_ipipe_hw.o dm365_ipipe.o \
 	dm365_resizer.o dm365_ipipeif.o vpfe_mc_capture.o vpfe_video.o
-
-# Allow building it with COMPILE_TEST on other archs
-ifndef CONFIG_ARCH_DAVINCI
-ccflags-y += -I $(srctree)/arch/arm/mach-davinci/include/
-endif
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 05a997f7aa5d..5cfd52ea3ba7 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -17,6 +17,7 @@
  */
 
 #include <linux/delay.h>
+#include "vpfe.h"
 #include "dm365_isif.h"
 #include "vpfe_mc_capture.h"
 
@@ -1983,6 +1984,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 	struct v4l2_subdev *sd = &isif->subdev;
 	struct media_pad *pads = &isif->pads[0];
 	struct media_entity *me = &sd->entity;
+	struct vpfe_config *cfg = pdev->dev.platform_data;
 	static resource_size_t res_len;
 	struct resource *res;
 	void __iomem *addr;
@@ -2023,11 +2025,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 		}
 		i++;
 	}
-	davinci_cfg_reg(DM365_VIN_CAM_WEN);
-	davinci_cfg_reg(DM365_VIN_CAM_VD);
-	davinci_cfg_reg(DM365_VIN_CAM_HD);
-	davinci_cfg_reg(DM365_VIN_YIN4_7_EN);
-	davinci_cfg_reg(DM365_VIN_YIN0_3_EN);
+	cfg->isif_setup_pinmux();
 
 	/* queue ops */
 	isif->video_out.ops = &isif_video_ops;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.h b/drivers/staging/media/davinci_vpfe/dm365_isif.h
index 0e1fe472fb2b..82eeba9c24c2 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.h
@@ -21,8 +21,6 @@
 
 #include <linux/platform_device.h>
 
-#include <mach/mux.h>
-
 #include <media/davinci/vpfe_types.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
diff --git a/drivers/staging/media/davinci_vpfe/vpfe.h b/drivers/staging/media/davinci_vpfe/vpfe.h
index 1f8e011fc162..54ef6720ceeb 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe.h
+++ b/drivers/staging/media/davinci_vpfe/vpfe.h
@@ -74,6 +74,8 @@ struct vpfe_config {
 	char *card_name;
 	/* setup function for the input path */
 	int (*setup_input)(enum vpfe_subdev_id id);
+	/* point to dm365_isif_setup_pinmux() */
+	void (*isif_setup_pinmux)(void);
 	/* number of clocks */
 	int num_clocks;
 	/* clocks used for vpfe capture */
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
