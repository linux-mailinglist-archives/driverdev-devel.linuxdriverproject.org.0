Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DC6342652
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 20:36:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E2A6430A5;
	Fri, 19 Mar 2021 19:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2HNWeraooq0; Fri, 19 Mar 2021 19:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0940E4015F;
	Fri, 19 Mar 2021 19:36:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7AA61BF3F6
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:36:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6D324015F
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 19:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzZCSztnw35t for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 19:36:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BE954012F
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 19:36:40 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id d10so5621916qve.7
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 12:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfIIG363a9greQETBbL5KuvjZaQwrTTY2HzKwrfTXhQ=;
 b=h6YjDbAdHtnMbaNTzDNBQaJTm49gL8a+aROrZ+/jMyaO3SHT2b5DVS7mAzMlEji7bb
 3LlhxjuzEbGtd98pV1ZeMXUP/lRE7aBBTlmW1XXMEPxteyx830VixF+yMOzQiKbpm9PZ
 eWA/I5gE82PN+6j9gPRwc+MDDEiwvmV2qGyUksJbvFtIVUS1r/QhTOL3Q9SOQegHygxa
 mUChaBClh3mlbhyEojNXw5mZyKyy2npkUfYEaU9RZa6TSHhKhPexwnyOI7KfwkKrBzGK
 M8HMrQHptlr4zJ7NaMkSXb9Pt2SIFqkktbMw4ReNS4N3/eVHy1vxQoJYHmXr5OWDgR2F
 uX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfIIG363a9greQETBbL5KuvjZaQwrTTY2HzKwrfTXhQ=;
 b=RejjEFsFIRK9Y+69ySGusFzMpEEBQB480li11eNOyxgepjVVsiaDGm3lRC1V993+gd
 j5RG/t1+kWfwLw9J78H2h2wQ0qu/ihig92u81A7JB2nNacnVOCavnkkPxZ4AvtSlPb4u
 zqFPyTBpPzesGuMV3/Dax08/+SxdbgpDHcL/4jY/suZd+MKd/H2Tf2YjTtZO4rmogaOo
 oBBzYEVQVOBqDKd2bk1O44m9as74mDmq4Nfm6tcOsa33GzcH1l/TPG9hzY/LTDO9MzSc
 XoJsn7nE4MIvH23ccpt+veZ7KoHklvR+2hhD1LFJ8ErNBylIfSIspQPp8Ut2x8zyjAL+
 WQGg==
X-Gm-Message-State: AOAM531biUGaDGQ9GGMwCx6f3/Pm41vh3yljVlTNbiut5DPECAIyvz3X
 yLi1STgvYrM5f56K18LtFTI=
X-Google-Smtp-Source: ABdhPJwaJEhjQuNSnl5UQ/yu8LAxjDUNoX6fWEQUAA0HaA9ltv4J3bgjIzPYuFsm+J5E48ijbwO/PA==
X-Received: by 2002:a0c:9b88:: with SMTP id o8mr11033766qve.28.1616182599056; 
 Fri, 19 Mar 2021 12:36:39 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.27])
 by smtp.gmail.com with ESMTPSA id j12sm4455999qtn.36.2021.03.19.12.36.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 12:36:38 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, insafonov@gmail.com, dan.carpenter@oracle.com,
 unixbhaskar@gmail.com, yepeilin.cs@gmail.com, dinghao.liu@zju.edu.cn,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] staging: rtl8188eu: Fix couple of typos
Date: Sat, 20 Mar 2021 01:04:14 +0530
Message-Id: <20210319193414.10393-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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


s/pasive/passive/
s/varable/variable/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 Changes from V1:
  Randy's suggestion incorporated.

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index f87dd71934c3..b6ac5b8915b1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -37,7 +37,7 @@ int rtw_init_mlme_priv(struct adapter *padapter)
 	pmlmepriv->pscanned = NULL;
 	pmlmepriv->fw_state = 0;
 	pmlmepriv->cur_network.network.InfrastructureMode = Ndis802_11AutoUnknown;
-	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: pasive. Maybe someday we should rename this varable to "active_mode" (Jeff) */
+	pmlmepriv->scan_mode = SCAN_ACTIVE;/*  1: active, 0: passive. Maybe someday we should rename this variable to "active_mode" (Jeff) */

 	spin_lock_init(&pmlmepriv->lock);
 	_rtw_init_queue(&pmlmepriv->free_bss_pool);
--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
