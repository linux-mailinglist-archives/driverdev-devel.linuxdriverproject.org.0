Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B52A786
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D305232A7;
	Sun, 26 May 2019 01:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wiQBHpDCi8l7; Sun, 26 May 2019 01:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A9B012322B;
	Sun, 26 May 2019 01:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A325F1BF94D
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9FC8C88271
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DwxejoSljuYP for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A385880CE
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:35 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id 79so5156378uav.6
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2CttEDFzuoOFmumd7c7+k8vupiNFD+Q2bYe9G0CKDuU=;
 b=oW0SsEHygGL0sKM58xiqfbayaqbZjznt9MDUh4lZYFb58UDHS8dxF46H7vxjPptB9K
 JVaVtSu8DhKQjmqlxgYHI73nYcxGYqtyAae+SHOH/gKb+6Te04kv+9zhsmHsMe8lLn0+
 rCyUTaMeSnib+jQjnyYlmMAI99NR/LXUyX8Lwf0znYMuxK5bceAZ8ibSUaponibj0BKq
 ms7P3Yq21plDwdfpClJryb/ySv57CUiiHaRtVLRnM6RlXhMCbV1AlgrNHVmta3kT1HaE
 D2oUSuIAr01aOFxmYsJ4EiUdZ8M8l4vf8N1zxeyMY9rm/iro4lL8SFwvMvQanCMNQ7vd
 9EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2CttEDFzuoOFmumd7c7+k8vupiNFD+Q2bYe9G0CKDuU=;
 b=geT+BshL3wtHuTeHP025H4InNNLgXsDN7//U3hJqlNBzbjZ8P6ZiDBtalz6fP4lPeS
 fclr3PUeYXJdOUZ5WUsd+hzJP0/2K+VcZwGxlsZ88IMP+5VVyJ8we2S3K+jYLUdBBuIZ
 RKMQCFSoGh/eVNRabwu/fAA2sW+i06O0St7riU3c0s7SQu+SppZYKPLBzp3FApO2RVye
 tuw4lE7TSRivZ+y4MZGyg/rLV/dRUdHc78IdyO38MTSvkEkOmJwZSR2iB7sxkqFQxSiy
 dU534kQnbNg4ZoM/8w8d7ClEFJZy4/IX3SGrFXvM/3cgPridyjPnAKd/vHUKKuq7p53n
 9dxA==
X-Gm-Message-State: APjAAAXDq5qoWJp2Ls8yMUhNUciQjTEFWIaV1rbMydjqZNJlpx+gGox5
 mivdlJhKetHpFGCrqaNY8jA=
X-Google-Smtp-Source: APXvYqxzLV1COOV54LKZZseEpXVOSvSlUvrKCJ/XQK6mA2Uf7ZZeBLjOfvDwUvtXLu53OeL2PFMFKA==
X-Received: by 2002:ab0:688b:: with SMTP id t11mr24261965uar.70.1558833574217; 
 Sat, 25 May 2019 18:19:34 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:33 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/8] staging: kpc2000: kpc_i2c: Remove unnecessary consecutive
 newlines
Date: Sun, 26 May 2019 01:18:30 +0000
Message-Id: <3e02066001a8e32632bf2fe287be727944254fef.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc2000_i2c.c file contains instances of unnecessary consecutive
newlines which impact the readability of the file. Remove these
unnecessary newlines.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 1d100bb7c548..1767f351a116 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -115,7 +115,6 @@ struct i2c_device {
 #define PCI_DEVICE_ID_INTEL_LYNXPOINT_SMBUS         0x8c22
 #define PCI_DEVICE_ID_INTEL_LYNXPOINT_LP_SMBUS      0x9c22
 
-
 #define FEATURE_SMBUS_PEC       BIT(0)
 #define FEATURE_BLOCK_BUFFER    BIT(1)
 #define FEATURE_BLOCK_PROC      BIT(2)
@@ -521,8 +520,6 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	return 0;
 }
 
-
-
 static u32 i801_func(struct i2c_adapter *adapter)
 {
 	struct i2c_device *priv = i2c_get_adapdata(adapter);
@@ -571,8 +568,6 @@ static const struct i2c_algorithm smbus_algorithm = {
 	.functionality  = i801_func,
 };
 
-
-
 /********************************
  *** Part 2 - Driver Handlers ***
  ********************************/
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
