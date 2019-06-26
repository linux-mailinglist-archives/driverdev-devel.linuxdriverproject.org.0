Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F29562A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 07FA3834D6;
	Wed, 26 Jun 2019 06:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOZyrdBizm3P; Wed, 26 Jun 2019 06:51:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E31D85FA5;
	Wed, 26 Jun 2019 06:51:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D60581BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA99785D30
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8KE_tySB7AG for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 985CF85FA5
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:51:17 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so804685pfp.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q6RrVKtbfArMAyqJEAqT5JmHv57Xb0IySP0Gfjx7Otg=;
 b=d2+o0fK1AhFHmfZcWi3d5nvtn/DMUroVvjkjUlLgcFIe2YTVHVdFMXZwr6vuraHQIU
 L+s4YKHu3OozroOSdn15cuB9VTCPFVNw44i8HW9WcVYISzzD6KYOBxqS0/EpLMLuSmmn
 sevmcD7AzE3D2VdG0glw8W8yuueCfLZ0cg5+nNsvlpbIY9ar/LWyX2sHZmxut6/OsLOm
 wHsbpQDPkWfNurFOCkwPwoga+KAVHLOnTgVoZ8Iiu2RXZkr8i+qAR9aB5aKvPIRFkU4Y
 VuKWPe14O2AL/aYX81ovxpWOCbdWfdPpM/m+Z9JHfx2bCpYd5r0TiqhelnerUGTuyj0t
 varA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q6RrVKtbfArMAyqJEAqT5JmHv57Xb0IySP0Gfjx7Otg=;
 b=Gnlmi6I+ARzI5ItDXsuZuYS8+KIhQ6wb7wUB5v+M0Nd86oV49ZFDqI0mkChqI+Vgd5
 XJyBDfZYIRx2A6UMicf+g0hiPCDrpVoOtE73wklsryo73K//qFy1PebqOm1rymP2+Svb
 tD0s+RCUfjQpIFC38TGe/7V1y1lk6699jH/BNsm4m38AECG2zj+BmnQFTaZEMgw8Z44c
 ep9vCyhjeV0VSV5uGRwBcuLu9pFsJrPATuc2Aq2QkdDwe81lPb1NHOdvUozb8ZyjdoFJ
 Hg1bEQRetKpJS8PZ27iFNMQWKVf30Kal/1WNVC2fadqApPhomifxsd+c1wWWEENVR+vu
 NLow==
X-Gm-Message-State: APjAAAXRjktk6W2138pA+7zZ3d0ihsdgF+wMlqL+6D3QJcKYBSDWeHKr
 EF3Bzsh65sgjwLHemoMJH9U=
X-Google-Smtp-Source: APXvYqw5aCebOaL1lw2rKRmQ2IvYUIPn9h0+p1GQucmhJmYd8wCjSp6lm9tUSjl4R1K+Jssw5FHplQ==
X-Received: by 2002:a65:4342:: with SMTP id k2mr1401840pgq.218.1561531877241; 
 Tue, 25 Jun 2019 23:51:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id y23sm21734625pfo.106.2019.06.25.23.51.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:51:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net
Subject: [PATCH 4/4] staging: rtl8188eu: Remove declarations of unused
 functions
Date: Wed, 26 Jun 2019 12:20:57 +0530
Message-Id: <20190626065057.3252-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626065057.3252-1-nishkadg.linux@gmail.com>
References: <20190626065057.3252-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the declarations of the following unused functions from
rtw_eeprom.h:
- eeprom_write16
- eeprom_read16
- eeprom_read_sz
- read_eeprom_content
- read_eeprom_content_by_attrib.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_eeprom.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_eeprom.h b/drivers/staging/rtl8188eu/include/rtw_eeprom.h
index db25eb580c98..10525493129b 100644
--- a/drivers/staging/rtl8188eu/include/rtw_eeprom.h
+++ b/drivers/staging/rtl8188eu/include/rtw_eeprom.h
@@ -111,10 +111,4 @@ struct eeprom_priv {
 	u8		efuse_eeprom_data[HWSET_MAX_SIZE_512];
 };
 
-void eeprom_write16(struct adapter *padapter, u16 reg, u16 data);
-u16 eeprom_read16(struct adapter *padapter, u16 reg);
-void read_eeprom_content(struct adapter *padapter);
-void eeprom_read_sz(struct adapter *adapt, u16 reg, u8 *data, u32 sz);
-void read_eeprom_content_by_attrib(struct adapter *padapter);
-
 #endif  /* __RTL871X_EEPROM_H__ */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
