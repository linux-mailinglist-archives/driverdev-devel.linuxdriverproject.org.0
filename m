Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F9D25B45C
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 21:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 706A1872FE;
	Wed,  2 Sep 2020 19:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULdWbIT5o4Jd; Wed,  2 Sep 2020 19:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F18028724C;
	Wed,  2 Sep 2020 19:22:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B44E41BF23F
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 19:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AAD6286AF4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 19:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tQwzJd_CU3V4 for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 19:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2EAC186AF2
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 19:22:07 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id u126so76502iod.12
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 12:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WsMM23fn71eKtIwvzR7uEW5lI14ipQ/sjn3Hdadfad4=;
 b=VD8sSYZPzVO/xnzOqXO3FKH5QMNwpBZiVzmbCrT/mim/hq8cMZykVXvmdMacMiEaUw
 Hf5H7SfbmuuF1CCSJuyV2HnRObJhimWfEgFu3Z2MREZPZ9ucZ8OZ1f5OFFsnUw2vSbph
 QkkiJ0t/iqodrOqggN4mIcp3Zl2aEwb65mjAh+zf9mXjMP6Z0q0+Y8OMJ0rbWs2/oox+
 /f+ddVkNCb2b7PvId+NO0CPFaK3BbX7IB1T6uBQEy5NpMPdAGDL3dfwDV9vfZJo8WNEr
 tjVIqOVcAe7eYGqxuqgJEP8Mx+VR9pH4cGFrVWwarA0pWULSi4hXuQ9O2ZAqe4V7ortw
 268Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WsMM23fn71eKtIwvzR7uEW5lI14ipQ/sjn3Hdadfad4=;
 b=DDxvY41BaQyuwtRHnVfFYSVbLHnIT6M7rKKKJCqSAbtSm7ymHtMYFMQcbeLRPXJao+
 M/YrbCYGun4ExYbwfEYKlZrhLEQgGAhz3pHBMWnIuv+z/0/iRER1SgP+Pyq0i6fXK2uD
 UaIxGqiSIZRAzJvXGrTWYbCE8nGBcPTzw89/YxSVeobsbA1HDBrbBR7xdRBTrn+baPUt
 QopykI8d+lkUtyyPsEd73jRx/7AUZ+B3FxMZyExYyN/MNZKnljp1+Xhmay6aw3hKZuF1
 DJTnBWY41Tsr2yjQdI738kEXvzzF/sZbnT/MT6ZPQHiy0J9Wxif/LljPwf4Wdanottrk
 da5Q==
X-Gm-Message-State: AOAM533xwUg1BRUiAoOca/EQZIsWtpeskN4oJ361ZgtxkgBl3zkS3PVz
 DKdaW2L3psp95582/iE48Cw=
X-Google-Smtp-Source: ABdhPJy/EjZvYbeVgZmH1VKO9FUSqIczM0zF9aIIuGasrMVS6Dg30Icb6MlD2djkEtJU/rS1rUv4dw==
X-Received: by 2002:a02:7055:: with SMTP id f82mr4757922jac.54.1599074526537; 
 Wed, 02 Sep 2020 12:22:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id z1sm243838ilk.5.2020.09.02.12.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 12:22:06 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: os_dep: added blank line to fix coding
 style issue
Date: Wed,  2 Sep 2020 14:20:44 -0500
Message-Id: <20200902192044.19143-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by adding a blank line after declarations in
sdio_intf.c to fix a checkpatch warning.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index f1e2829a19a7..79b55ec827a4 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -131,6 +131,7 @@ static irqreturn_t gpio_hostwakeup_irq_thread(int irq, void *data)
 static u8 gpio_hostwakeup_alloc_irq(struct adapter *padapter)
 {
 	int err;
+
 	if (oob_irq == 0) {
 		DBG_871X("oob_irq ZERO!\n");
 		return _FAIL;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
