Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1090132A5
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 19:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E46E86A39;
	Fri,  3 May 2019 17:00:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pm7gdEHzo-j5; Fri,  3 May 2019 17:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4238D869FD;
	Fri,  3 May 2019 17:00:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C94031BF3D1
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B7C1522D55
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0HF0M8Mbf94N for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 17:00:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id BAE7821526
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 17:00:02 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id b8so6750565edm.11
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 10:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a6vJY+AhwqgrhoRy0OW/Eo7CkRwV/mSGUibAYlqkZ+A=;
 b=RsaKlqlKUpyB7O4GF2V/3l97KYu7v72h82kAH4IptCguxeVTXCwhBlqaIZugcWXyY+
 dXXEoIo3C0/WUaK0JvbH12JcVCGrlVoc9539pNW4OUuxiI00xkG1Er+GU6N3HWD3acew
 SAv9qK6Qv/vPFyP8JtEGA0GpbTKhz6LKCAFMUDqDCkhynPsbjPyN2wEvfLIE4BWLUIrN
 dd3EBUzOQgPnCWEAuOA/Y1pApp5WpMgjFi6jiBMEeZJanjQ7Ub8of5sbaXQ4P3feWpeE
 q1dKSlJiJvCn5r5q3zFxOChwFtIzszQTKchBoS0rRuMvnv8H/Vr/cIG2iCTM8rGGdl8Q
 AR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a6vJY+AhwqgrhoRy0OW/Eo7CkRwV/mSGUibAYlqkZ+A=;
 b=XWI5hNxoWc5+plKC0U2HnoME+6gwTP+mtpBLUgrZeWkcPlw63OhvIO+IV8xOg/3ZKj
 ifrdkWGfArgXxcBj/CirV0NIbMr1NLE8HH68Lo7o7NM29TmytGFI/agp/RNGZUiBvGSN
 I7q4h2XMAG9iR45PHNargJK/uTp6SKxaZBX9mxN+PbExDTgrBry0o5TnOirj1axzDx7z
 ZMg9t+2vnJmCn+K27a16xJK3DvISVJUxmS0dSz220E+3ESRVIzBlWJlmodvdPkp8ODad
 lSFe+rR0NjC4hPbwEnZfWbgBnuaSYjOk97ZdVm9KUTyjN4w09/5zteqpHdXHPpGjwSw1
 Rgvw==
X-Gm-Message-State: APjAAAVzmCnqU1485GKyo+AXrMzJfrAB1afGYsIxoYNipHZ1QdJq8mP0
 qN1g2+Zw42qokPPXyK6jStSgIw==
X-Google-Smtp-Source: APXvYqwEkwh/tG36hhpCXh4Wto5Kt7IJFz5ingegOp008Tzt2WHGUNZmVpNSz9irGvTywbQNPQ61Kw==
X-Received: by 2002:a17:906:2583:: with SMTP id
 m3mr7222447ejb.74.1556902426396; 
 Fri, 03 May 2019 09:53:46 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:45 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 1/5] nvmem: imx-ocotp: Elongate OCOTP_CTRL ADDR field to
 eight bits
Date: Fri,  3 May 2019 17:53:38 +0100
Message-Id: <20190503165342.30139-2-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

i.MX6 defines OCOTP_CTRLn:ADDR as seven bit address-field with a one bit
RSVD0 field, i.MX7 defines OCOTP_CTRLn:ADDR as a four bit address-field
with a four bit RSVD0 field.

i.MX8 defines the OCOTP_CTRLn:ADDR bit-field as a full range eight bits.

i.MX6 and i.MX7 should return zero for their respective RSVD0 bits and
ignore a write-back of zero where i.MX8 will make use of the full range.

This patch expands the bit-field definition for all users to eight bits,
which is safe due to RSVD0 being a no-op for the i.MX6 and i.MX7.

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 4cf7b61e4bf5..6600c4ddeb51 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -45,7 +45,7 @@
 #define IMX_OCOTP_ADDR_DATA2		0x0040
 #define IMX_OCOTP_ADDR_DATA3		0x0050
 
-#define IMX_OCOTP_BM_CTRL_ADDR		0x0000007F
+#define IMX_OCOTP_BM_CTRL_ADDR		0x000000FF
 #define IMX_OCOTP_BM_CTRL_BUSY		0x00000100
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
