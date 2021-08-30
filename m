Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E7D3FBCF7
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Aug 2021 21:34:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 923FA402E6;
	Mon, 30 Aug 2021 19:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgRej5YIo8CP; Mon, 30 Aug 2021 19:34:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E422401D4;
	Mon, 30 Aug 2021 19:34:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4051A1BF40A
 for <devel@linuxdriverproject.org>; Mon, 30 Aug 2021 19:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A7CD80E10
 for <devel@linuxdriverproject.org>; Mon, 30 Aug 2021 19:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=itfac-mrt-ac-lk.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 751dm_0x89QL for <devel@linuxdriverproject.org>;
 Mon, 30 Aug 2021 19:34:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1338B80E0E
 for <devel@driverdev.osuosl.org>; Mon, 30 Aug 2021 19:34:23 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id fs6so10198871pjb.4
 for <devel@driverdev.osuosl.org>; Mon, 30 Aug 2021 12:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itfac-mrt-ac-lk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=38LoY1bNsBhMvANynurPzXetzfwZlkeGRm86uRmPJ4c=;
 b=t4MEIE9WX9a6k97UOj+ET1mjDCCJeWsbCGY8KiXnRCsC6kQqjeatz45N2Jo/WsM0Bt
 MC9WQxrrRjy2B+LzsguXI/QzPWFZ1ugO3SIPCAb0teasHtX6PPKvx1C4K9VsqlFKiUVs
 WSbA/Tr6i214yconXi+Ksmf6oH0sjjprU/wHEbOGbZCo2wNPKVR1R62IwB/AC4KR18Ig
 uXmdfDd29FQ+W3bWFRatsyp8XoTkPzVmfJKnFQctgdRe3GMhPeufPMV9MwMSXRegjlnj
 aZx8zqOdt3vESfFZoucLf9ySN2u42zkbx4kdjP1unFhWXkPG4VJRrXkZwxR1x2lRL7Yc
 os7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=38LoY1bNsBhMvANynurPzXetzfwZlkeGRm86uRmPJ4c=;
 b=t2HYs1Sp2pDltVC4ybuOJ5+P5OlHZiK/+mGOjcxkjcrSlgSOrYFcsreR/uFQqHtaJ8
 pIwrirQhQF2aTfOZrGsL8SPWf5uX9KNDzDnDJ4s1EsFddF3laXxPcdZry1Wq0T4FVwVo
 Q7PGGEMtM8hKYHeADrYksGNvmX11r+0Knw+rTZfIspV41SUQeRGOsLar2oVK2S4lMU58
 QGAipD/8+Qxh2RvL3MOZHx16iNjCNpTqyGIDT8TkbFWBRyCOllJrQuPzsiChQpx97WFm
 Y7UHOrQ2/o1dtazZoBbbLF8sRQVAz491iMZAmMYBr3cYYkkFxiRppfZOneQLXpxqXY2C
 dLRA==
X-Gm-Message-State: AOAM532t1iHvMLfyKHOFNoQkL1QDnHSY0cPSLoCB1JyMgV00MKgZdcTS
 h79BGGmlHgupFDmYObmC4qgD
X-Google-Smtp-Source: ABdhPJzkCDJYUXlLvj44fuDgqsck3vig3BGr9sMKa38tgv/2Q4vr+TIPgf0EuOIIbQQ91iAhh+fE0g==
X-Received: by 2002:a17:902:b193:b029:11a:a179:453a with SMTP id
 s19-20020a170902b193b029011aa179453amr1085200plr.69.1630352063227; 
 Mon, 30 Aug 2021 12:34:23 -0700 (PDT)
Received: from localhost.localdomain ([123.231.122.209])
 by smtp.gmail.com with ESMTPSA id g3sm18016990pgj.66.2021.08.30.12.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 12:34:22 -0700 (PDT)
From: "F.A.Sulaiman" <asha.16@itfac.mrt.ac.lk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: fix memory leak error
Date: Tue, 31 Aug 2021 01:03:55 +0530
Message-Id: <20210830193355.11338-1-asha.16@itfac.mrt.ac.lk>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, "F.A.Sulaiman" <asha.16@itfac.mrt.ac.lk>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Smatch reported memory leak bug in rtl8723b_FirmwareDownload function. 
The problem is pFirmware memory is not released in release_fw1. 
Instead of redirecting to release_fw1 we can turn it into exit 
and free the memory.

Signed-off-by: F.A. SULAIMAN <asha.16@itfac.mrt.ac.lk>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index de8caa6cd418..b59c2aa3a9d8 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -436,7 +436,7 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 	if (pFirmware->fw_length > FW_8723B_SIZE) {
 		rtStatus = _FAIL;
 		DBG_871X_LEVEL(_drv_emerg_, "Firmware size:%u exceed %u\n", pFirmware->fw_length, FW_8723B_SIZE);
-		goto release_fw1;
+		goto exit;
 	}
 
 	pFirmwareBuf = pFirmware->fw_buffer_sz;
@@ -512,7 +512,6 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
 exit:
 	kfree(pFirmware->fw_buffer_sz);
 	kfree(pFirmware);
-release_fw1:
 	kfree(pBTFirmware);
 	DBG_871X(" <=== rtl8723b_FirmwareDownload()\n");
 	return rtStatus;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
