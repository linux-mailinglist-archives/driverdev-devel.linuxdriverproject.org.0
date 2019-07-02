Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B3C5C9B6
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2748685D9B;
	Tue,  2 Jul 2019 07:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DaZOo2MtJxBX; Tue,  2 Jul 2019 07:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73C7E85E07;
	Tue,  2 Jul 2019 07:01:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9051BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7B65A87985
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bunqfPCZVSCt for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E92FA8757D
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:53 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m4so7220691pgk.0
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yu1eRlJt5Ul5fLRft3Gmox29hThcrxiwtB3U56phLKA=;
 b=af6evKWDDEvZzHqe3eZGMhgvCDYe+iw4uJMMGS1Qq02kyLpbWofAxFP+9EzR5QDFVL
 /e4Z0nkbFlnst/dO791eCJrv8vdePx8toL0nStcKNo8fDMJ7BpI6WnrnN+FgUFezXbxd
 q2lzi/TqF5NcIq7hZQE/xcVP96nh49qB4H1xa0qYk1TWebjehmvdhLLukUaq8NopW5zj
 zbD2tiwVViPuojj2SAYNC2lA4FIGPVoKUtMee86BquXyHEkpW+twcMzdtLHZTGmtdLFG
 tYWLFXsZSTb16zOcsvJrCTfMwfyPb8KGsFPLyiEuiuLAxRn35fBp/tgxNO5WhrDAVCW3
 yngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yu1eRlJt5Ul5fLRft3Gmox29hThcrxiwtB3U56phLKA=;
 b=bk95/DO/bGXepGLVN9pV0yQBP0bGXODN4S8fJult+36PgO6MGCSjF7kfYhGF8SABeE
 DaworxMnr4cnqV7F0CGWnGGkemQ3jLcHzNSxSruJk4cgks0ctsD/dPmkSvDfeYPsz7/3
 0/0M4kteoNgjqXlbbHYOCawvnkF6LJxSVyVnCxM83+R8ze3Q8JnQ/3fJ557Hzcq8diJl
 AwzO5IeW4hcc1LpGAs4zKLoUISLN0PPq/jR3A75md9rKc/jMltNmA5oJP5EZcCLkAvXQ
 nJ3zTqoBGhzF8LgpiOYMym0QAHuco69dEjwWfGqVpuJzihJpvkunYAJxLej2hC4PLlqi
 X4FQ==
X-Gm-Message-State: APjAAAWyBqelTSqIi3yM9CmWIzuQPHeRov2u92td5t8arx/iNioMRTWi
 JlQYdnPTPD9UrNuG31qm5GrMilMn
X-Google-Smtp-Source: APXvYqx2R6CfNND3+EbakAlKwGJRJ3wE3oQ4DfMDK5VbgYkmbLj/CvQOZX6QUaHfV9R828+YZqLV1A==
X-Received: by 2002:a63:3d09:: with SMTP id k9mr28620263pga.321.1562050913473; 
 Tue, 02 Jul 2019 00:01:53 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:53 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: rtl8723bs: Remove rtw_btcoex_BtInfoNotify()
Date: Tue,  2 Jul 2019 12:31:27 +0530
Message-Id: <20190702070132.6997-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_BtInfoNotify as it does nothing except call
hal_btcoex_BtInfoNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/core/rtw_cmd.c          | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 4 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index cedc60401b3f..d9bae9fa78d6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -19,11 +19,6 @@ void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
 	hal_btcoex_MediaStatusNotify(padapter, mediaStatus);
 }
 
-void rtw_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
-{
-	hal_btcoex_BtInfoNotify(padapter, length, tmpBuf);
-}
-
 void rtw_btcoex_HaltNotify(struct adapter *padapter)
 {
 	if (!padapter->bup) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 569a7fabd6cb..addc55706a3c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1829,7 +1829,7 @@ static void rtw_btinfo_hdl(struct adapter *adapter, u8 *buf, u16 buf_len)
 		buf[1] = 0;
 	else if (cmd_idx == BTINFO_BT_AUTO_RPT)
 		buf[1] = 2;
-	rtw_btcoex_BtInfoNotify(adapter, len+1, &buf[1]);
+	hal_btcoex_BtInfoNotify(adapter, len+1, &buf[1]);
 }
 
 u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index d05528908ac7..faeaf24fa833 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3693,7 +3693,7 @@ s32 c2h_handler_8723b(struct adapter *padapter, u8 *buf)
 		break;
 
 	case C2H_8723B_BT_INFO:
-		rtw_btcoex_BtInfoNotify(padapter, pC2hEvent->plen, pC2hEvent->payload);
+		hal_btcoex_BtInfoNotify(padapter, pC2hEvent->plen, pC2hEvent->payload);
 		break;
 
 	default:
@@ -3742,7 +3742,7 @@ static void process_c2h_event(struct adapter *padapter, PC2H_EVT_HDR pC2hEvent,
 		break;
 
 	case C2H_8723B_BT_INFO:
-		rtw_btcoex_BtInfoNotify(padapter, pC2hEvent->CmdLen, c2hBuf);
+		hal_btcoex_BtInfoNotify(padapter, pC2hEvent->CmdLen, c2hBuf);
 		break;
 
 	default:
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 0d118e8f3389..a1cab61fd5f0 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -16,7 +16,6 @@
 #define	PACKET_EAPOL			3
 
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
-void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
