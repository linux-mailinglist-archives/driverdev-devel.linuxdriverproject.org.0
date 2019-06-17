Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D56480B3
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 13:30:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBECD20444;
	Mon, 17 Jun 2019 11:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Z3w4Ah3Moqb; Mon, 17 Jun 2019 11:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 55B5E20446;
	Mon, 17 Jun 2019 11:30:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 17B441BF86D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 11:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10A2E856C8
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 11:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N0dmxEeq7zkc for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 11:30:46 +0000 (UTC)
X-Greylist: delayed 00:07:50 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B923E85455
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 11:30:45 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MsHwC-1iVLw61pjW-00th1H; Mon, 17 Jun 2019 13:17:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 1/3] media: meson: include linux/kthread.h
Date: Mon, 17 Jun 2019 13:16:51 +0200
Message-Id: <20190617111718.2277220-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:mSHisb9SBlgUUulWsfD80t6IakUBYWZsI/Spxa2zTsENfcv0/oL
 wXRwf2cAITNDLjhX5OdADkdf0mkzcN1j9sL2qpnkOOHIYc63+Isk5bje/I7TYvBZHfDGJVA
 r7A0t7lhVt8vsJkJcZAlSHPCCkG2B0cUlkxSCtyTkeBDZivJYXHrZfJrcHVhh8U/NkHVn+G
 z8XIUrkJTFpUT9flwto5A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IHNjXrvfuC8=:vj9ww+X/UcT4nkVnLutxRj
 4ZsfF+QLMzQwSyRszmQiZ0PjYynb68Y8fXDPj4VX05a4w1rPFFsVQLYg/fsgANdm5nK7UplJU
 3I0Yg22QAEiqwS1pqyp4XoVPN8yKKP87pP+kAOiYJSz8skAltHpB46KaehfWeBM2liyRED/w+
 Nf+mhLGuM96ZbOQGGbGbrOl2Zu0xfLQhceGhnT7PY4GaNzipSdqhLHj5YwUZUoGs2MoOPgAom
 gkHJuyrAG1wArO4doMLdYHgFXJHagjdoAjG4M8gZNWnB5/afkSQc0D/U+klzDteYqJFMgDQsL
 d/HdtbxuC6HAu4pCbg9/7F5pC7AeuCO7cmpgWU3jLp0RBcqds5caiwyjGuzwnurcoImcZPsGe
 bMFvll2Y/DcPux/h6X+RS433bQxBeHVy1/hHKsnNcE1hi6UonJf/xdyjHglcO6ZU9QenBmmj9
 PJwOo2ClyoB3EV5gifiBNv1uyUhJyLCfmGXKLwFS55kd6vyKh8lo9lzZ+0grsl06WLfPHN0O2
 wAZT5YIQ7EnKa5N3f50ixcUzLVfNIGkNkeWp3meRwFTsQPCI3Z5Ueeh5Pxm4O0Z0LbH3HPYfp
 /QRqQZqcQgqI9O32ia0sith5eplVAOAO4IzmUbwkYzWKXla2qsbinoCot4PwE56Oo2lIyjWou
 OWYell724T0/ysFYkY+VcLWf8nYp9hCCP3yTTXIp1rsRsduj/H3KhhLKrpnjpfIxo9s6DQLLv
 J8gtJMuIhYmdZ6UVfldraPwEClry5P+KYE22JUSLowZG/i90Qeio0oe4m2BJ0K3jtHHn0EU6K
 yDXHmL5sauudWPHJZsGhv3LJ3A5Fic1NcBwtWj82hw8lohJR4qvLN0LqM6e6biChYVxAP5lcD
 8zACCwt6upzvX1yBTe2voHcr4YM4c4E1J7b9CmWynHDzWftvtXOzMQB2tZPJ/R
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@lists.freedesktop.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Without this header, we get a compilation error in some configurations:

drivers/staging/media/meson/vdec/vdec.c: In function 'vdec_recycle_thread':
drivers/staging/media/meson/vdec/vdec.c:59:10: error: implicit declaration of function 'kthread_should_stop' [-Werror=implicit-function-declaration]

Fixes: 3e7f51bd9607 ("media: meson: add v4l2 m2m video decoder driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/meson/vdec/vdec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 0a1a04fd5d13..eb335a0f2bdd 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -8,6 +8,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/kthread.h>
 #include <linux/platform_device.h>
 #include <linux/mfd/syscon.h>
 #include <linux/slab.h>
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
