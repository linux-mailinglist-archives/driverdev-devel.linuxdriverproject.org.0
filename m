Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DB7326F1A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:03:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A02884052;
	Sat, 27 Feb 2021 22:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fesgPUPr8zzz; Sat, 27 Feb 2021 22:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F268E83CCA;
	Sat, 27 Feb 2021 22:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB7B91BF5F8
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB45743178
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNXyfHYyDQNY for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:02:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65D57431A5
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:02:47 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id p21so8522252pgl.12
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Mkan3JMKfxNYoG4rfnYGH7/Pk2eAhI86Q13ePVKjnns=;
 b=eNqSPEdxIXv9OuBgPovuLgvUXqAWiHNqCy2dXA2hJknCs9ip6Hid0bct5xs6iy1c7A
 qlf965G4LIVWKiwNF6RThNzAXC+fZdbrDT3483nvJUs0qGT9ZaHAA0C8juk666CZ6Tzu
 6Qj0Q38Ndw1KYdYZgq1qzVerq+chh0xwwd2suqGLwM6Fx653hY256+hsz9SL2/DWaUbS
 RDocK+/nO/yOLzc4ZSLinhmH4yA1TZvQeM+nQ6y8SROnfJGt3tZbCVQKyUqPeBT4npZi
 0EL+Zn24dI+HP6wSK1DhMBsSf8axOner+ISIUJP4dl8CBz7wWcuEVcxWTJRjag9qeOmt
 Qc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Mkan3JMKfxNYoG4rfnYGH7/Pk2eAhI86Q13ePVKjnns=;
 b=SJZu3TB7aQPoYhE6ybCKwtSVrfqzkZCDLIJbxVc3kXQZDhKzA8Q8SZqGdk1L3CenKn
 jcWngVHhEDiYbs7H2X/YCLqJTZcczVdzqsw7B3xASMcAgX9HeBBjHXb3ozJsbPL7gvq5
 511MvkHSlidMEEz2lZ1zyEu1MmM8akqrmyDmIygfmVH3NWBYWdBWRDw8gQk2/N2i4RhE
 6rikLYJ5ndA1tEwyCMDzkUdG6n7u0foPAF1dG/m4bMOAJThajiNRQc7V9jAjEFoxXWQv
 NCewK2VDNtoE+FUjTx3fK9iP1PAbM22ChEZ0LDMJw1V7k1NCN6EiD2Ih/vHhetCK4trL
 IAVg==
X-Gm-Message-State: AOAM531/Wv1wMieb+MZeA4Ll+6WhvziJzcaiCsW/n11FwdNllp93aCRQ
 T1K+hoHJu4IJQp6PhFW55MA=
X-Google-Smtp-Source: ABdhPJyxzOdFcXfruhFLvm1j36aKPw2ycDWIEr+Ao1x1so7V6nulUMlQ2PSkvaXT47diGhYo8Eyrpw==
X-Received: by 2002:a63:580d:: with SMTP id m13mr8039461pgb.342.1614463366866; 
 Sat, 27 Feb 2021 14:02:46 -0800 (PST)
Received: from rayare.domain.name ([106.51.141.71])
 by smtp.googlemail.com with ESMTPSA id
 z13sm14293258pfk.178.2021.02.27.14.02.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:02:46 -0800 (PST)
From: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
To: 
Subject: [PATCH] staging: rtl8723bs: Fixed indentation and coding style
Date: Sun, 28 Feb 2021 03:32:30 +0530
Message-Id: <20210227220233.10259-1-chakravarthikulkarni2021@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 chakravarthikulkarni2021@gmail.com, linux-kernel@vger.kernel.org,
 Fox Chen <foxhlchen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This clean up indentaion issue as well as coding style issue.

Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_cmd.h | 30 ++++++++++-----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 56c77bc7ca81..3545a98ef94e 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -678,13 +678,13 @@ struct setratable_parm {
 };
 
 struct getratable_parm {
-                uint rsvd;
+	uint rsvd;
 };
 struct getratable_rsp {
-        u8 ss_ForceUp[NumRates];
-        u8 ss_ULevel[NumRates];
-        u8 ss_DLevel[NumRates];
-        u8 count_judge[NumRates];
+	u8 ss_ForceUp[NumRates];
+	u8 ss_ULevel[NumRates];
+	u8 ss_DLevel[NumRates];
+	u8 count_judge[NumRates];
 };
 
 
@@ -786,7 +786,7 @@ struct TDLSoption_param {
 
 /*H2C Handler index: 64 */
 struct RunInThread_param {
-	void (*func)(void*);
+	void (*func)(void *);
 	void *context;
 };
 
@@ -795,14 +795,14 @@ struct RunInThread_param {
 
 
 /*
-
-Result:
-0x00: success
-0x01: sucess, and check Response.
-0x02: cmd ignored due to duplicated sequcne number
-0x03: cmd dropped due to invalid cmd code
-0x04: reserved.
-
+*
+*Result:
+*0x00: success
+*0x01: sucess, and check Response.
+*0x02: cmd ignored due to duplicated sequcne number
+*0x03: cmd dropped due to invalid cmd code
+*0x04: reserved.
+*
 */
 
 #define H2C_RSP_OFFSET			512
@@ -824,7 +824,7 @@ struct sta_info;
 extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
 extern u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueue);
 
-extern u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network* pnetwork);
+extern u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork);
 u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueue);
 extern u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype, bool enqueue);
 extern u8 rtw_setdatarate_cmd(struct adapter  *padapter, u8 *rateset);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
