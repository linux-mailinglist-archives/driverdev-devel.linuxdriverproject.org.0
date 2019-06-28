Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCE2598E1
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3602C8761A;
	Fri, 28 Jun 2019 10:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VuauAGT38nhc; Fri, 28 Jun 2019 10:58:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C10A86A0B;
	Fri, 28 Jun 2019 10:58:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7931BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7DC08226CF
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9MullDOWlPf for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:58:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id E735720457
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:58:51 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t16so2785323pfe.11
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PO05b6jAaCg1PqMdO0nfvN/Ez25zKJ3vSOTzpBs6OqY=;
 b=GKAhYaLltqEOeotdvd7UigqL9GDF1qUSOS+mhvmoESP3KkxJy5ZVZ5cMR/H7LbgZet
 YWs3eq5Qsqx+7YGsjBoe2Jth4YshOHhD+qlSVKvtX3zZVxUK+20lho/o9vGXV+TQvPcY
 AtpyaFrxQDqOAiQoGz0KkjSoUPJUEQ/Cl8fiUwZ2PqHwl1qltzMIKsnarJhcazDFgKSV
 Dp2jgv9YXJWvguNUvTzFMBbqhD3U9aCWtr60CykFD5vopv1qwGz2oQ3bp0brrrB8NaqQ
 8YqkjfuFSgiJmHD1iH1bcjUEJumZkxulNuHjnUeBvffFyK/r9dBnTIuQJjxN1Hw+56jY
 ZLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PO05b6jAaCg1PqMdO0nfvN/Ez25zKJ3vSOTzpBs6OqY=;
 b=CBRqt3jWE0Dw3sleFo/A27l0KyFSGkAKDP8HcSQo73hO66gKcWDuDlmjT0zqlboQJt
 jm0YBYd7UxnoBLb5YTdhGn2M10bDKe5kOOF8TirVfk+snDpeCScLRu9GrFnZezop9HST
 QPRwUbwdxag1WzXYcwapkWgwd5HPc1fVo8RAGR8A3YWuW1jDvIZg6f4nf4uK911MithU
 db7o9qcjia5anGOZZ22Awpn5gIh37nHvy80UYBKhwV6yrSttDLgrpFGnojviLKuYTOme
 g6M/N8vC92dCwCHLuk4sEvVUuavlzCk0cV3yILv3Ga59tgEBV2FaFy6rT5aUEja1/vQR
 Z3SA==
X-Gm-Message-State: APjAAAVtSlCwuMLHAh3zmmZLTxoAEfTWUK9RL2JkmmNdEgcZo4rV9ML6
 MPlyWXr89KB3pI9FEdcdxgY=
X-Google-Smtp-Source: APXvYqyj5DEqR3d8pkaohm1BSkDpBtvk8u/5FOzxW8uIg33huSZCkaMsS626MEsW9+Ygn3fQx9M32Q==
X-Received: by 2002:a63:d205:: with SMTP id a5mr8338390pgg.279.1561719531587; 
 Fri, 28 Jun 2019 03:58:51 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:58:51 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8723bs: hal: Replace function
 rtl8723b_set_rssi_cmd()
Date: Fri, 28 Jun 2019 16:28:26 +0530
Message-Id: <20190628105835.6931-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function rtl8723b_set_rssi_cmd as all it does is call
rtl8723b_set_FwRssiSetting_cmd.
Rename rtl8723b_set_FwRssiSetting_cmd to rtl8723b_set_rssi_cmd and
change its type from static to non-static to maintain compatibility
with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 48efbfd6ade6..9ecdeda09cbf 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -991,7 +991,7 @@ void rtl8723b_set_FwMacIdConfig_cmd(struct adapter *padapter, u8 mac_id, u8 raid
 	FillH2CCmd8723B(padapter, H2C_8723B_MACID_CFG, H2C_MACID_CFG_LEN, u1H2CMacIdConfigParm);
 }
 
-static void rtl8723b_set_FwRssiSetting_cmd(struct adapter *padapter, u8 *param)
+void rtl8723b_set_rssi_cmd(struct adapter *padapter, u8 *param)
 {
 	u8 u1H2CRssiSettingParm[H2C_RSSI_SETTING_LEN] = {0};
 	u8 mac_id = *param;
@@ -2030,11 +2030,6 @@ void rtl8723b_download_rsvd_page(struct adapter *padapter, u8 mstatus)
 	}
 }
 
-void rtl8723b_set_rssi_cmd(struct adapter *padapter, u8 *param)
-{
-	rtl8723b_set_FwRssiSetting_cmd(padapter, param);
-}
-
 void rtl8723b_set_FwJoinBssRpt_cmd(struct adapter *padapter, u8 mstatus)
 {
 	if (mstatus == 1)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
