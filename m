Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 243F83127FD
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 23:57:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 370CB8587E;
	Sun,  7 Feb 2021 22:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehReU0S-6njG; Sun,  7 Feb 2021 22:57:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B942485143;
	Sun,  7 Feb 2021 22:57:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6F9E1BF3AD
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 22:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C287F20387
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 22:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quThK5sRAT3o for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 22:57:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 93EC020348
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 22:57:08 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id q7so15022047wre.13
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 14:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+6El5WCTppNM0qvL0uiwmEG0rhEopk6FVWHfgdbdVZg=;
 b=MSnejK1IpoKy7pi8SiX9ew6g0MaSPZ05PsczuGT76RvZZtD9b3J6fMr0oB+i7wKPTd
 SzEUFcwwrHMbqWPA4xOvo6Kx3Rjs2++K5XcwAACHkRstFoMFKiCgfO0mCznSeOIz85BS
 jNxOjkVYfJvJalsFyS1o6SvStQ5JRL0iSCayzliNdZp9kX2vty3wlKVJoySCQjfd+uGo
 G4+NL77Uki1Knvcksxvk5ukUAYA8+xOQ87f5qhZP6QDYdHkUaj/JGtejNbvtNGPpjn1A
 61LH8Et6ehduW5I0FbUageFs/xVWW30pITd9bHuyGsOCX4hIOc15N3+6Oi6omM3dSuX7
 1RWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+6El5WCTppNM0qvL0uiwmEG0rhEopk6FVWHfgdbdVZg=;
 b=Ef9T7/XZjag5pokMlnzZBTE849O32RMW+ILdgeOVXW/fPrruGSXlbQnrHysbLf7fNL
 66Znhb8dOKZrEbPZyfUKdCaSmCH5YPtpnVN9TTeaBa/w6Y5HSIMprzggdWlxzXjp9ctF
 XOiPqs+oLnZPw9DDP9n/gOtOhxvwsM2KYXo46tu3xQmbe9fiqgngATDJr+tgKeDiM3O0
 MD5rcT1x+Oq/iI5Cx8bO/cVQp4EKIuCtUOpYqZvY+OCBoFQ44erMggbwVQmfGpEoVT2+
 5CHzjbqbv22QU5Td37B3GwUBNPVYvfJoPg74EVdPz1WXywYQ7fsldg2XRIoWldeaPZzw
 mr4A==
X-Gm-Message-State: AOAM5312WEH1U9gc3/KTPOBOLFtrzmwTdkgQD18/uFJEPmuYwuazhEmp
 pawVRQSUI5SzKJGkskImBi19GQ==
X-Google-Smtp-Source: ABdhPJyBO4nFCEM6p+AEqwVp5rTIdppXsQI9l1SnMf4AEp0H7wCfDusVJhFZ75uXfLDNUb7x6U6NlQ==
X-Received: by 2002:a5d:6712:: with SMTP id o18mr16567930wru.375.1612738627114; 
 Sun, 07 Feb 2021 14:57:07 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id x18sm6339906wmi.8.2021.02.07.14.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 14:57:06 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: remove braces from single-line block
Date: Sun,  7 Feb 2021 22:57:03 +0000
Message-Id: <20210207225703.114229-1-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, romain.perier@gmail.com,
 apais@linux.microsoft.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This removes the braces from the if statement that checks the
wps_ie_len and ieee->wps_ie values in rtllib_association_req of
rtllib_softmac.c as this block contains only one statement.
Fixes a checkpatch warning.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 2c752ba5a802..2d3be91b113d 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1352,9 +1352,8 @@ rtllib_association_req(struct rtllib_network *beacon,
 		rtllib_WMM_Info(ieee, &tag);
 	}
 
-	if (wps_ie_len && ieee->wps_ie) {
+	if (wps_ie_len && ieee->wps_ie)
 		skb_put_data(skb, ieee->wps_ie, wps_ie_len);
-	}
 
 	if (turbo_info_len) {
 		tag = skb_put(skb, turbo_info_len);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
