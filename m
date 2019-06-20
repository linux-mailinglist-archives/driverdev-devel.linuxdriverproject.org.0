Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818DF4CD37
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15E7187E5C;
	Thu, 20 Jun 2019 11:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oS-9nn0XFLbJ; Thu, 20 Jun 2019 11:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9A2787E4A;
	Thu, 20 Jun 2019 11:53:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DB421BF9B2
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AFFD87E09
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4QaU9U5H61I for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C72E87E46
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:38 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d126so1555479pfd.2
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PzLn5fD9L6dZv4B33e/2vVzWrRAMPiaBIbtxyfLAiNY=;
 b=BLdk5BkGDGKJDYwjOHGUuQ9/sEzwCUNeRQan377WLAvKf4MBQQ3Q9Pz79v4tuYUFFd
 doITv7Pq6eu1wTo3WP1OQAhyLY09PpvOjemfYIKm9hfyM9C2e8QFJsP1/hXkqZRpD32m
 GH6Bo3ze/nG+pQ7BBtoQCBrVcSpCPgVPT4Pd3+UVhfzgukH6mdVsh+nM0OUe7RSZjAnG
 5rrejdXTIdbBPqsMQiUadwyn0zS6cI72dzSCP4YmcIhSsh4EVdpuH4f8v7ycMBkQtImL
 +wP+OIRDGHheZ2JRvTlkHMh7zZk3hfXMMWJ2EnqfpScLkYB6gT4IJbn7iybPR5drVsQC
 +cpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PzLn5fD9L6dZv4B33e/2vVzWrRAMPiaBIbtxyfLAiNY=;
 b=tk4m9E0u01dx8FZO6bucT5K9+G8lCgauNJcWgAsBQEdXPNyjROJ0iC5FMz+uB+FF0l
 lW/mWruTP3+/UfTDuoKcx3h+wc5HaH0N8GA9LrVDOni173+279CJe4baeIVDnOgeMeIo
 OWF084jlNyzvZbt+lO8HFvDBrezEnHxnb9XQYL+eZchPAP7kUgNNWoMaACxx6RLNOHwG
 a2fUfSG23kJ3hYYE5V070Dn46AZQM7Lt0SgEYYmT94BCccgPT7iYV1ytL10h5vyX8rd6
 1Re1MPeTAh/bVs4hsxudHBVSNco0aEMB5ccbEQqDW1qApYuuoxgnU9CZUqaVEFghLV1t
 c51w==
X-Gm-Message-State: APjAAAW/zuhEM3bGFDpKp1lT7n91m+3TqWQb4Nn22J7aXIVKUqXnjK0J
 U4/wajK3lSa51sK7g2aGcwM=
X-Google-Smtp-Source: APXvYqyeh4AzZU5G8EaELh6YKFM6Q0XQZ/dwr4GVU4pPq8tXDXFltL7/iXHt5tggEsIjbNO4FIAaPg==
X-Received: by 2002:a65:5c8c:: with SMTP id a12mr2893425pgt.255.1561031617974; 
 Thu, 20 Jun 2019 04:53:37 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: rtl8712: r8712_disassoc_cmd(): Change type to
 void
Date: Thu, 20 Jun 2019 17:23:01 +0530
Message-Id: <20190620115304.3210-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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

Change return type of function r8712_disassoc_cmd from u8 to void as its
return value is never stored, checked or otherwise used. Modify its
return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index a17a35537a3b..c1d032d47608 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -564,7 +564,7 @@ int r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 	return 0;
 }
 
-u8 r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
+void r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
 {
 	struct cmd_obj *pdisconnect_cmd;
 	struct disconnect_parm *pdisconnect;
@@ -572,16 +572,15 @@ u8 r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
 
 	pdisconnect_cmd = kmalloc(sizeof(*pdisconnect_cmd), GFP_ATOMIC);
 	if (!pdisconnect_cmd)
-		return _FAIL;
+		return;
 	pdisconnect = kmalloc(sizeof(*pdisconnect), GFP_ATOMIC);
 	if (!pdisconnect) {
 		kfree(pdisconnect_cmd);
-		return _FAIL;
+		return;
 	}
 	init_h2fwcmd_w_parm_no_rsp(pdisconnect_cmd, pdisconnect,
 				   _DisConnect_CMD_);
 	r8712_enqueue_cmd(pcmdpriv, pdisconnect_cmd);
-	return _SUCCESS;
 }
 
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 44594022ec4b..9ad364f2296d 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -716,7 +716,7 @@ int r8712_createbss_cmd(struct _adapter *padapter);
 u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
 int r8712_joinbss_cmd(struct _adapter *padapter,
 		      struct wlan_network *pnetwork);
-u8 r8712_disassoc_cmd(struct _adapter *padapter);
+void r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
 int r8712_setdatarate_cmd(struct _adapter *padapter, u8 *rateset);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
