Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F155F2E0B95
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Dec 2020 15:18:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3CAC727E5E;
	Tue, 22 Dec 2020 14:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTqlyoTm3d1K; Tue, 22 Dec 2020 14:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FDC9274B0;
	Tue, 22 Dec 2020 14:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32D8A1BF584
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 14:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2CAC086A8A
 for <devel@linuxdriverproject.org>; Tue, 22 Dec 2020 14:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BbmfKBPFR5P5 for <devel@linuxdriverproject.org>;
 Tue, 22 Dec 2020 14:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F99E869B6
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 14:17:42 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id 91so14689533wrj.7
 for <devel@driverdev.osuosl.org>; Tue, 22 Dec 2020 06:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+wHA7WXGOL2zkCUojHptt6INoc65BByl7E6rlCw2sxA=;
 b=giumZz5lWfQ6wDWtD+QCrYmrw+MG7A5NmanW/wuHomvTLKCY5aRw36EL4yNmcrQSQh
 R9LnV3xvALyoi802pQJwaDJddUR464t9UJgcWGdKIKBjtpdaUEGNMx7VSjL2GfZFxQ6E
 PY8OySYW1sMc8tC9gnujIxNFVz9Iawyzt8/Vx+Dgy8Q7O4jomR2E76bH/DJoWzIsDvS3
 6RK7nLICLqxZdbx/YaSiPaz3Izd/MBIoFHG2p1Z2c8qQo9hTy8nvyjqCzTxhCKkAZB38
 fcX5NDsYwEs306jyDh9m0ILgTWoB+bJ9j6HFJE63rLjH7WlieNPdNzOGmrOGN+STjmc4
 R5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+wHA7WXGOL2zkCUojHptt6INoc65BByl7E6rlCw2sxA=;
 b=bpAd5UEi7K4i419e101Iz+lBLSZr/6zX6Cvn2KdFNN514gRA5krd1V67N0u8nAYcXv
 RHu7tqSYiAcuAO9tanTnnG/jYTLOS5XPdFujLKtHEel5Oe+o2ObrJA3Ok10uWqU5yu+W
 yAhEMTdaC/CcTU9Q0hjkMPSn52lPZMJUkjHgk1QPwvQCO2B6Eufl670VlDRnXxKfEDv6
 KuYL53P6CPRFsu1ipGahE63woBgE5jNTFiupZH1Rwm45rJ4l+Ko3a7er3yhce7LwnNpe
 A4pYa+vBb23k9PVPYASkPKr0lvSKWb33FmvdSPs+eX0hwbwBlkY9OjPFfu8/weHoR2/k
 2T5Q==
X-Gm-Message-State: AOAM532W0D92Bme/cDzKXWk/A1itAK1mZWRGxPu5e0rlTsU6XIHmybUV
 INaBbNbk2UvKEv5BP1djRq0=
X-Google-Smtp-Source: ABdhPJzTIHuJ7tMEv2l3nlo7ir99sq6qaFsEI3BElB3lbgqYzQ30tA5GzaOCa9Ysqq4m5ZVaU08DgQ==
X-Received: by 2002:a5d:4b4c:: with SMTP id w12mr24136139wrs.402.1608646660863; 
 Tue, 22 Dec 2020 06:17:40 -0800 (PST)
Received: from tumbleweed.fritz.box
 (dslb-002-204-143-153.002.204.pools.vodafone-ip.de. [2.204.143.153])
 by smtp.gmail.com with ESMTPSA id l20sm35597178wrh.82.2020.12.22.06.17.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Dec 2020 06:17:40 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: clean up brace coding style issues
Date: Tue, 22 Dec 2020 15:17:07 +0100
Message-Id: <20201222141707.31972-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing braces around else arm of if else statement to clear
style issues reported by checkpatch.

CHECK: braces {} should be used on all arms of this statement
CHECK: Unbalanced braces around else statement

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_efuse.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
index 32ca10f01413..a6c43bc4f62a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
+++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
@@ -245,8 +245,9 @@ u16 	Address)
 				break;
 		}
 		return rtw_read8(Adapter, EFUSE_CTRL);
-	} else
+	} else {
 		return 0xFF;
+	}
 
 } /* EFUSE_Read1Byte */
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
