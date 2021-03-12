Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115333876E
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D41286FACF;
	Fri, 12 Mar 2021 08:33:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yY0AhIL4ZDrf; Fri, 12 Mar 2021 08:33:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA79E6F972;
	Fri, 12 Mar 2021 08:32:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9651C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 287B06F9BC
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQu8hGZn3KRh for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5AA66F972
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:09 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id o14so502305wrm.11
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=QbB0EpXFv8D/pcK23azpDfZ4EPYC3Y2HHRoLIaR0lAA=;
 b=OEFGeAetMXLH8vsU0PW8W1u11sLocnIeEfwOmoXdzZPq750qsAd0h4iKdMQTC0oM/s
 //+DuCu6sSRlGL5kdangDVEz+IzZzaKo+dyWHLElWgasf3A0+dhkfJu/O73pXFvDkUX1
 WVK9iiwsSRQeNC/qmv125FUryXfXWEamYBLGEe/q1ToM7PFKnBXTTwbCzjA9VeXY8gCB
 Jf2qi42K0mbK6klmgL/c8m9Jt6QflmaEknE2WMhgWUei3HbwyHav8PuLB2RYe6/2ATA0
 MTfd8oYXJt4aKEqKBlopp8z5WbmDHe/cpQqOWZXD6HfaUDw8GQMBGIfSWOPEDE3SHqa4
 dePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QbB0EpXFv8D/pcK23azpDfZ4EPYC3Y2HHRoLIaR0lAA=;
 b=nh+Go1cuaOulWb+D87/WAZIvejspPUATa4DFPT5puL2NWRpiqKgGGSNSYh2LWxfddU
 MNiVWcTb3C4tg9UDXBNYd8EHPBvmRzrXLC+oOlOH2BDPKZ1sctkQB3Aw9kVCCXNrYn2G
 UxDwm7FSaDYhjZyMH3U66xnAEMjuUsEzsML6CQc34pZkvsVWEFx6tUCvXTDCxeC31aoB
 tgPWaKE0hecaWHRhTw0ZAaQB9QgJ0cn67yfM3Z71MgC6yxkOogggMtHWv1BNqCeyJCXi
 1MVPe0hWxcIyeNp2t/zzs6Pb7fWNu5jCqx9qZzGSq+dYMtYuvG1o8W77oi14iiHgCVcA
 jt5g==
X-Gm-Message-State: AOAM533u8A2J6V/mrnm+SsFeATKZhkfczQJjogcl8tWai0p8/+GghvTX
 rsISB6JH2f7VvJYVWAUaGtg=
X-Google-Smtp-Source: ABdhPJzH2o+8Kv2mX/KJX2PSG4Xk/91xmKSBJktmmWipmykSoetwyyICAf9YHMYtyLNuw1jziLRqUg==
X-Received: by 2002:a5d:6147:: with SMTP id y7mr12667718wrt.306.1615537628197; 
 Fri, 12 Mar 2021 00:27:08 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:08 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 30/33] staging: rtl8723bs: remove typedefs in hal_btcoex.h
Date: Fri, 12 Mar 2021 09:26:35 +0100
Message-Id: <20210312082638.25512-31-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #14: FILE: include/hal_btcoex.h:14:
    +typedef struct _BT_COEXIST {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 4 ++--
 drivers/staging/rtl8723bs/include/hal_data.h   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index 29318b49c3ff..fb8bc2cf083b 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -11,12 +11,12 @@
 
 /*  Some variables can't get from outsrc BT-Coex, */
 /*  so we need to save here */
-typedef struct _BT_COEXIST {
+struct BT_COEXIST {
 	u8 bBtExist;
 	u8 btTotalAntNum;
 	u8 btChipType;
 	u8 bInitlized;
-} BT_COEXIST, *PBT_COEXIST;
+};
 
 void DBG_BT_INFO(u8 *dbgmsg);
 
diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
index 7fa384dd07ac..8f5de747ae4e 100644
--- a/drivers/staging/rtl8723bs/include/hal_data.h
+++ b/drivers/staging/rtl8723bs/include/hal_data.h
@@ -434,7 +434,7 @@ struct hal_com_data {
 	struct DM_ODM_T		odmpriv;
 
 	/*  For bluetooth co-existance */
-	BT_COEXIST		bt_coexist;
+	struct BT_COEXIST		bt_coexist;
 
 	/*  Interrupt related register information. */
 	u32 		SysIntrStatus;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
