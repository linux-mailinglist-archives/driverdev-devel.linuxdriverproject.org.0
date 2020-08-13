Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E377E24343A
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Aug 2020 08:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38F59860DB;
	Thu, 13 Aug 2020 06:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7zl1lukucJX; Thu, 13 Aug 2020 06:54:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 238E185B9D;
	Thu, 13 Aug 2020 06:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92D2C1BF86C
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 06:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FA8286463
 for <devel@linuxdriverproject.org>; Thu, 13 Aug 2020 06:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPBpeUmUbx16 for <devel@linuxdriverproject.org>;
 Thu, 13 Aug 2020 06:54:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD38B86144
 for <devel@driverdev.osuosl.org>; Thu, 13 Aug 2020 06:54:12 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id y3so4223405wrl.4
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 23:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KD/rbm7MY6kHb9nm3mJZXOBpnLCJZBDrUMTQS2ogXNo=;
 b=HGTZCgTnh/Xm79AQsi1grOBtUXPhiTGZ5UBuBe/Cr01repvPDz3V5I7evnyPrWH4k+
 4VP2upEEDoQeglntdtBDAOWuU//18as8TfAoXG7upQ9booY5Kdbin2KOdoEBBKHlrgWh
 aoz93cilaXlzMOWezyA+ugdJzCpNEeNmfhGirYOPIfkDWM61nAlPwODPv+SjXSv4g8xb
 43wQKV8NICSKH1tbr2ZnyCNhGSgFr3GpDaFzVNKEOYcBY2KtY2buEs7l/t7AkJ62BQbG
 42U0VZOXCnjjJPyu8sDtptNcNQjVxgoPjEEvQWirI3fUcMYM1Iiwtb938n2TerwTUiT7
 v97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KD/rbm7MY6kHb9nm3mJZXOBpnLCJZBDrUMTQS2ogXNo=;
 b=fqBcGHE5hnr53R92sM+SvDkfeUdo1YJglicXFZyt1drVhrWDKME9uLkQb0dVHFjM/7
 c+LN1AbVaQRI3vyauN49nzSIyZTd+tglO/qoy9+SXDQmQrPh5YBFodqSLpjCKIbTd0cf
 7oI+h6O6FzsGn9myIAcM8QHT4Rb0E8l3BZuoIlKcVpT5maY4K+Xx1SujoBtKhIGVFD8N
 O7TjYLwkWstZGMDZdrECm4loELfjd8LoETRDLVME9mq5VBsQROfBQFcGXsAkIJJI9FCL
 BVt6v35UzYjhuG8zsrGr+p7LXT70Meajy/HaDwazFRCg6vBAYf+c8JLhfnCcu2DWgmvn
 oJUQ==
X-Gm-Message-State: AOAM533Ps1Hk88CXzwmtddAtXRrTq7DrgJzO9cl9Btn3CA3KQXkENLdr
 NzbS4Kei8jRd5T5wQIXLWoI=
X-Google-Smtp-Source: ABdhPJwoKnFqQ8fy0U4Xkg9vWZT6x1KbB6FO+761njEBiFucLEpvGnW4oiq83wPuPf6qVFQRs+jWGQ==
X-Received: by 2002:a5d:6541:: with SMTP id z1mr2414825wrv.320.1597301651052; 
 Wed, 12 Aug 2020 23:54:11 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-140-180.002.204.pools.vodafone-ip.de. [2.204.140.180])
 by smtp.gmail.com with ESMTPSA id b123sm8080511wme.20.2020.08.12.23.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Aug 2020 23:54:10 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove 5 GHz code
Date: Thu, 13 Aug 2020 08:50:53 +0200
Message-Id: <20200813065053.13883-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to the TODO 5 GHz code should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Remove code for channels > 14 from rtw_get_center_ch().

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index a3ea7ce3e12e..a5790a648a5b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -374,20 +374,7 @@ u8 rtw_get_center_ch(u8 channel, u8 chnl_bw, u8 chnl_offset)
 	u8 center_ch = channel;
 
 	if (chnl_bw == CHANNEL_WIDTH_80) {
-		if ((channel == 36) || (channel == 40) || (channel == 44) || (channel == 48))
-			center_ch = 42;
-		if ((channel == 52) || (channel == 56) || (channel == 60) || (channel == 64))
-			center_ch = 58;
-		if ((channel == 100) || (channel == 104) || (channel == 108) || (channel == 112))
-			center_ch = 106;
-		if ((channel == 116) || (channel == 120) || (channel == 124) || (channel == 128))
-			center_ch = 122;
-		if ((channel == 132) || (channel == 136) || (channel == 140) || (channel == 144))
-			center_ch = 138;
-		if ((channel == 149) || (channel == 153) || (channel == 157) || (channel == 161))
-			center_ch = 155;
-		else if (channel <= 14)
-			center_ch = 7;
+		center_ch = 7;
 	} else if (chnl_bw == CHANNEL_WIDTH_40) {
 		if (chnl_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
 			center_ch = channel + 2;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
