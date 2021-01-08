Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F3A2EEE84
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 09:23:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3DE33204F2;
	Fri,  8 Jan 2021 08:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgXYBU+FdXD0; Fri,  8 Jan 2021 08:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D47AC20417;
	Fri,  8 Jan 2021 08:23:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A13861BF9C8
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 08:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9CFE086EE2
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 08:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0CLskIlEd+Q4 for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 08:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94D2D86E26
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 08:23:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 907DB2343B;
 Fri,  8 Jan 2021 08:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610094222;
 bh=Kb16w298kZTAlEWpzqllvq2hovbvuFFho6Aectf+P2Q=;
 h=From:To:Cc:Subject:Date:From;
 b=WamJreZb+aHOCvWYMI4fEqI0PlJQZ8fbipCb3x7HG2ff1xkqKyTazUHc63vjUQFC2
 TieFRi213IHgRdBymssxUlqO2qHmocTOqOigzhktw+QqeKraljxk4UbgVS3Zs2yWwQ
 BV5j9DaKfC7N3GINFqM9Kfxc6QHIWG4OcoqoaEEtSesJmV164OAIgR/t02AnNREbcx
 LEu4aT6jYoXEQbvusL6PRBD3eT+UFx361idz170TYzlR1JnGkK3gAiqg26vdxZmRRQ
 a9wXynGOPx9+JRob6sYUj2jnT3YigRcR4H4WlkIUAtmW9a4xRQLdn4W59OvzpXmtBe
 qBtvpyc30e2oA==
From: Arnd Bergmann <arnd@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: atomisp: fix Wvisiblity warning
Date: Fri,  8 Jan 2021 09:23:28 +0100
Message-Id: <20210108082337.2305938-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

Some randconfig builds include ia_css_firmware.h without first
including linux/device.h:

In file included from atomisp/pci/mmu/sh_mmu_mrfld.c:23:
In file included from atomisp/pci/atomisp_compat.h:22:
In file included from atomisp/pci/atomisp_compat_css20.h:24:
In file included from atomisp/pci/ia_css.h:28:
In file included from atomisp/pci/ia_css_control.h:25:
drivers/staging/media/atomisp//pci/ia_css_firmware.h:52:29: error: declaration of 'struct device' will not be visible outside of this function [-Werror,-Wvisibility]

Add a forward declaration to avoid the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/ia_css_firmware.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/ia_css_firmware.h b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
index edab72256494..38f0408947d1 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
@@ -30,6 +30,8 @@ struct ia_css_fw {
 	unsigned int bytes; /** length in bytes of firmware data */
 };
 
+struct device;
+
 /* @brief Loads the firmware
  * @param[in]	env		Environment, provides functions to access the
  *				environment in which the CSS code runs. This is
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
