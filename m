Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6E53A4BF
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 12:32:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54F068441C;
	Sun,  9 Jun 2019 10:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r3Zb2IHByEZm; Sun,  9 Jun 2019 10:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB59B8445A;
	Sun,  9 Jun 2019 10:32:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1EC61BF3B8
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A1C684AE7
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:32:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1pjXPc9xWFE for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 10:32:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E4B781B7D
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 10:32:39 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p184so327688pfp.7
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 03:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=mlj+QLkLQQMm63yfV3acS0P0vf43I3zjLjjqMLne79E=;
 b=M4HnVFeFdEmREXCiSKvuqb4gwH4ZDa/2bfpqTi9qWbkjeBhWmUByz3x/SLmAsycOi6
 2XwFQ/sbUzvRQrZDMPME3sxCD5e06j1BPjRLypQo9lGAB7Yf8lEohFFJecJCJyVAI9MF
 y+ZO5/fzDzX09g2WNMGMDVagkn/urdjvWGmXbQngDEfrGJQ47KADnLsFR2+BEAxqh96J
 qLxstL3+T++CX86SzIQ6x9KudbZLxAf6GUSwz6yGf8BKLOyvj/cuzVR5/CEGf2e75BwK
 UmDfmjqmciwj7RLq/IriaYJ0Uxmpsk0rV71vEJSQO18VWH1eXCE9VPA+PpMbLbWJS6uO
 62AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=mlj+QLkLQQMm63yfV3acS0P0vf43I3zjLjjqMLne79E=;
 b=GB+0+8P8KEStEseAMiIrAj4b4XMFY0YCYPa5tZBNMrsknPqQRGgMJVlY9lvJ3xZffi
 mEDK/3/a8xy3WvtFUqLtkA6sTIZv+TtZxde3eqNqPcYivQTC+b+IeSextwVLMT7ucdRL
 g5+Mu+AyqII/FEc1SYgXNjl6Mt6H8Iy01dfQuuxCa1KsHhJdPkc4HvNjEIjiJl05XcKB
 V1faIZKE5Dh7KBZOCQQOEDe3TS7L1+N6EQr4smk63Cznl7wN+Du3SA0QwFXjjblj57bI
 o4qb85gbrmMmVKoeJJYcVfYnkjjgVyyGAATqVqudVLjzFWGe43UhzR49tX9HIvGY1kYI
 hJvw==
X-Gm-Message-State: APjAAAUhgh/KgXCGtR5SCIu2Phhg97q6ja9+jIt1CImPdzVzbimaW4q6
 NZQubpBuA/PGBN00G+8EkBI=
X-Google-Smtp-Source: APXvYqxOnbbvnc223uZ24ysh46YcRve+EKvkSJzIt/e1tMPsoSukOqO1hRasFE3/4vPG6Qf52bybSA==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr15414425pja.106.1560076358523; 
 Sun, 09 Jun 2019 03:32:38 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id d132sm7916294pfd.61.2019.06.09.03.32.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 03:32:37 -0700 (PDT)
Date: Sun, 9 Jun 2019 16:02:32 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: move common code to macro
Message-ID: <20190609103232.GA9769@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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


    As part of halbtc8723b2ant_TdmaDurationAdjust function below
    piece of code is used many times.

    halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, val);
    pCoexDm->psTdmaDuAdjType = val;

    This patch replaces this common code with MACRO
    HAL_BTC8723B2ANT_DMA_DURATION_ADJUST

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 746 ++++++++++--------------
 1 file changed, 293 insertions(+), 453 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index cb62fc0..56d842e 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -7,6 +7,13 @@
 
 #include "Mp_Precomp.h"
 
+/* defines */
+#define HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(val)			      \
+do {									      \
+	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, val);           \
+	pCoexDm->psTdmaDuAdjType = val;                                       \
+} while (0)
+
 /*  Global variables, these are static variables */
 static COEX_DM_8723B_2ANT GLCoexDm8723b2Ant;
 static PCOEX_DM_8723B_2ANT pCoexDm = &GLCoexDm8723b2Ant;
@@ -1599,64 +1606,44 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 		{
 			if (bScoHid) {
 				if (bTxPause) {
-					if (maxInterval == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 13);
-						pCoexDm->psTdmaDuAdjType = 13;
-					} else if (maxInterval == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					}
+					if (maxInterval == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(13);
+					else if (maxInterval == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+					else if (maxInterval == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
 				} else {
-					if (maxInterval == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 9);
-						pCoexDm->psTdmaDuAdjType = 9;
-					} else if (maxInterval == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					}
+					if (maxInterval == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(9);
+					else if (maxInterval == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+					else if (maxInterval == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
 				}
 			} else {
 				if (bTxPause) {
-					if (maxInterval == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
-						pCoexDm->psTdmaDuAdjType = 5;
-					} else if (maxInterval == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					}
+					if (maxInterval == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(5);
+					else if (maxInterval == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (maxInterval == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
 				} else {
-					if (maxInterval == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 1);
-						pCoexDm->psTdmaDuAdjType = 1;
-					} else if (maxInterval == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (maxInterval == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					}
-				}
+					if (maxInterval == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(1);
+					else if (maxInterval == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (maxInterval == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+			      }
 			}
 		}
 		/*  */
@@ -1741,442 +1728,295 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
 			if (bTxPause) {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));
 
-				if (pCoexDm->curPsTdma == 71) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
-					pCoexDm->psTdmaDuAdjType = 5;
-				} else if (pCoexDm->curPsTdma == 1) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
-					pCoexDm->psTdmaDuAdjType = 5;
-				} else if (pCoexDm->curPsTdma == 2) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-					pCoexDm->psTdmaDuAdjType = 6;
-				} else if (pCoexDm->curPsTdma == 3) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-					pCoexDm->psTdmaDuAdjType = 7;
-				} else if (pCoexDm->curPsTdma == 4) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-					pCoexDm->psTdmaDuAdjType = 8;
-				}
-
-				if (pCoexDm->curPsTdma == 9) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 13);
-					pCoexDm->psTdmaDuAdjType = 13;
-				} else if (pCoexDm->curPsTdma == 10) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-					pCoexDm->psTdmaDuAdjType = 14;
-				} else if (pCoexDm->curPsTdma == 11) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-					pCoexDm->psTdmaDuAdjType = 15;
-				} else if (pCoexDm->curPsTdma == 12) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-					pCoexDm->psTdmaDuAdjType = 16;
-				}
+				if (pCoexDm->curPsTdma == 71)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(5);
+				else if (pCoexDm->curPsTdma == 1)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(5);
+				else if (pCoexDm->curPsTdma == 2)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+				else if (pCoexDm->curPsTdma == 3)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+				else if (pCoexDm->curPsTdma == 4)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+
+				if (pCoexDm->curPsTdma == 9)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(13);
+				else if (pCoexDm->curPsTdma == 10)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+				else if (pCoexDm->curPsTdma == 11)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+				else if (pCoexDm->curPsTdma == 12)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 5) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-						pCoexDm->psTdmaDuAdjType = 8;
-					} else if (pCoexDm->curPsTdma == 13) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-						pCoexDm->psTdmaDuAdjType = 16;
-					}
+					if (pCoexDm->curPsTdma == 5)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+					else if (pCoexDm->curPsTdma == 13)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 8) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 5);
-						pCoexDm->psTdmaDuAdjType = 5;
-					} else if (pCoexDm->curPsTdma == 16) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 13);
-						pCoexDm->psTdmaDuAdjType = 13;
-					}
+					if (pCoexDm->curPsTdma == 8)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(5);
+					else if (pCoexDm->curPsTdma == 16)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(13);
 				}
 			} else {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
-				if (pCoexDm->curPsTdma == 5) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 71);
-					pCoexDm->psTdmaDuAdjType = 71;
-				} else if (pCoexDm->curPsTdma == 6) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-					pCoexDm->psTdmaDuAdjType = 2;
-				} else if (pCoexDm->curPsTdma == 7) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-					pCoexDm->psTdmaDuAdjType = 3;
-				} else if (pCoexDm->curPsTdma == 8) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-					pCoexDm->psTdmaDuAdjType = 4;
-				}
-
-				if (pCoexDm->curPsTdma == 13) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 9);
-					pCoexDm->psTdmaDuAdjType = 9;
-				} else if (pCoexDm->curPsTdma == 14) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-					pCoexDm->psTdmaDuAdjType = 10;
-				} else if (pCoexDm->curPsTdma == 15) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-					pCoexDm->psTdmaDuAdjType = 11;
-				} else if (pCoexDm->curPsTdma == 16) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-					pCoexDm->psTdmaDuAdjType = 12;
-				}
+				if (pCoexDm->curPsTdma == 5)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(71);
+				else if (pCoexDm->curPsTdma == 6)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+				else if (pCoexDm->curPsTdma == 7)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+				else if (pCoexDm->curPsTdma == 8)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+
+				if (pCoexDm->curPsTdma == 13)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(9);
+				else if (pCoexDm->curPsTdma == 14)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+				else if (pCoexDm->curPsTdma == 15)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+				else if (pCoexDm->curPsTdma == 16)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 71) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 1);
-						pCoexDm->psTdmaDuAdjType = 1;
-					} else if (pCoexDm->curPsTdma == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-						pCoexDm->psTdmaDuAdjType = 4;
-					} else if (pCoexDm->curPsTdma == 9) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-						pCoexDm->psTdmaDuAdjType = 12;
-					}
+					if (pCoexDm->curPsTdma == 71)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(1);
+					else if (pCoexDm->curPsTdma == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+					else if (pCoexDm->curPsTdma == 9)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 4) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 1);
-						pCoexDm->psTdmaDuAdjType = 1;
-					} else if (pCoexDm->curPsTdma == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 71);
-						pCoexDm->psTdmaDuAdjType = 71;
-					} else if (pCoexDm->curPsTdma == 12) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 9);
-						pCoexDm->psTdmaDuAdjType = 9;
-					}
+					if (pCoexDm->curPsTdma == 4)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(1);
+					else if (pCoexDm->curPsTdma == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(71);
+					else if (pCoexDm->curPsTdma == 12)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(9);
 				}
 			}
 		} else if (maxInterval == 2) {
 			if (bTxPause) {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));
-				if (pCoexDm->curPsTdma == 1) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-					pCoexDm->psTdmaDuAdjType = 6;
-				} else if (pCoexDm->curPsTdma == 2) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-					pCoexDm->psTdmaDuAdjType = 6;
-				} else if (pCoexDm->curPsTdma == 3) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-					pCoexDm->psTdmaDuAdjType = 7;
-				} else if (pCoexDm->curPsTdma == 4) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-					pCoexDm->psTdmaDuAdjType = 8;
-				}
-
-				if (pCoexDm->curPsTdma == 9) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-					pCoexDm->psTdmaDuAdjType = 14;
-				} else if (pCoexDm->curPsTdma == 10) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-					pCoexDm->psTdmaDuAdjType = 14;
-				} else if (pCoexDm->curPsTdma == 11) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-					pCoexDm->psTdmaDuAdjType = 15;
-				} else if (pCoexDm->curPsTdma == 12) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-					pCoexDm->psTdmaDuAdjType = 16;
-				}
+				if (pCoexDm->curPsTdma == 1)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+				else if (pCoexDm->curPsTdma == 2)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+				else if (pCoexDm->curPsTdma == 3)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+				else if (pCoexDm->curPsTdma == 4)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+
+				if (pCoexDm->curPsTdma == 9)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+				else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+				else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+				else if (pCoexDm->curPsTdma == 12)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 5) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-						pCoexDm->psTdmaDuAdjType = 8;
-					} else if (pCoexDm->curPsTdma == 13) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-						pCoexDm->psTdmaDuAdjType = 16;
-					}
+					if (pCoexDm->curPsTdma == 5)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+					else if (pCoexDm->curPsTdma == 13)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 8) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
-						pCoexDm->psTdmaDuAdjType = 6;
-					} else if (pCoexDm->curPsTdma == 16) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
-						pCoexDm->psTdmaDuAdjType = 14;
-					}
-				}
+					if (pCoexDm->curPsTdma == 8)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
+					else if (pCoexDm->curPsTdma == 16)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
+			        }
 			} else {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
-				if (pCoexDm->curPsTdma == 5) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-					pCoexDm->psTdmaDuAdjType = 2;
-				} else if (pCoexDm->curPsTdma == 6) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-					pCoexDm->psTdmaDuAdjType = 2;
-				} else if (pCoexDm->curPsTdma == 7) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-					pCoexDm->psTdmaDuAdjType = 3;
-				} else if (pCoexDm->curPsTdma == 8) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-					pCoexDm->psTdmaDuAdjType = 4;
-				}
-
-				if (pCoexDm->curPsTdma == 13) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-					pCoexDm->psTdmaDuAdjType = 10;
-				} else if (pCoexDm->curPsTdma == 14) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-					pCoexDm->psTdmaDuAdjType = 10;
-				} else if (pCoexDm->curPsTdma == 15) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-					pCoexDm->psTdmaDuAdjType = 11;
-				} else if (pCoexDm->curPsTdma == 16) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-					pCoexDm->psTdmaDuAdjType = 12;
-				}
+				if (pCoexDm->curPsTdma == 5)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+				else if (pCoexDm->curPsTdma == 6)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+				else if (pCoexDm->curPsTdma == 7)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+				else if (pCoexDm->curPsTdma == 8)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+
+				if (pCoexDm->curPsTdma == 13)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+				else if (pCoexDm->curPsTdma == 14)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+				else if (pCoexDm->curPsTdma == 15)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+				else if (pCoexDm->curPsTdma == 16)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-						pCoexDm->psTdmaDuAdjType = 4;
-					} else if (pCoexDm->curPsTdma == 9) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-						pCoexDm->psTdmaDuAdjType = 12;
-					}
+					if (pCoexDm->curPsTdma == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+					else if (pCoexDm->curPsTdma == 9)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 4) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
-						pCoexDm->psTdmaDuAdjType = 2;
-					} else if (pCoexDm->curPsTdma == 12) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
-						pCoexDm->psTdmaDuAdjType = 10;
-					}
+					if (pCoexDm->curPsTdma == 4)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (pCoexDm->curPsTdma == 12)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
 				}
 			}
 		} else if (maxInterval == 3) {
 			if (bTxPause) {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 1\n"));
-				if (pCoexDm->curPsTdma == 1) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-					pCoexDm->psTdmaDuAdjType = 7;
-				} else if (pCoexDm->curPsTdma == 2) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-					pCoexDm->psTdmaDuAdjType = 7;
-				} else if (pCoexDm->curPsTdma == 3) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-					pCoexDm->psTdmaDuAdjType = 7;
-				} else if (pCoexDm->curPsTdma == 4) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-					pCoexDm->psTdmaDuAdjType = 8;
-				}
-
-				if (pCoexDm->curPsTdma == 9) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-					pCoexDm->psTdmaDuAdjType = 15;
-				} else if (pCoexDm->curPsTdma == 10) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-					pCoexDm->psTdmaDuAdjType = 15;
-				} else if (pCoexDm->curPsTdma == 11) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-					pCoexDm->psTdmaDuAdjType = 15;
-				} else if (pCoexDm->curPsTdma == 12) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-					pCoexDm->psTdmaDuAdjType = 16;
-				}
+				if (pCoexDm->curPsTdma == 1)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+				else if (pCoexDm->curPsTdma == 2)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+				else if (pCoexDm->curPsTdma == 3)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+				else if (pCoexDm->curPsTdma == 4)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+
+				if (pCoexDm->curPsTdma == 9)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+				else if (pCoexDm->curPsTdma == 10)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+				else if (pCoexDm->curPsTdma == 11)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+				else if (pCoexDm->curPsTdma == 12)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 5) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 8);
-						pCoexDm->psTdmaDuAdjType = 8;
-					} else if (pCoexDm->curPsTdma == 13) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 16);
-						pCoexDm->psTdmaDuAdjType = 16;
-					}
+					if (pCoexDm->curPsTdma == 5)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(8);
+					else if (pCoexDm->curPsTdma == 13)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(16);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 8) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 7) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 6) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
-						pCoexDm->psTdmaDuAdjType = 7;
-					} else if (pCoexDm->curPsTdma == 16) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 15) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					} else if (pCoexDm->curPsTdma == 14) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
-						pCoexDm->psTdmaDuAdjType = 15;
-					}
+					if (pCoexDm->curPsTdma == 8)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 7)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 6)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
+					else if (pCoexDm->curPsTdma == 16)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 15)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
+					else if (pCoexDm->curPsTdma == 14)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
 				}
 			} else {
 				BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], TxPause = 0\n"));
-				if (pCoexDm->curPsTdma == 5) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-					pCoexDm->psTdmaDuAdjType = 3;
-				} else if (pCoexDm->curPsTdma == 6) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-					pCoexDm->psTdmaDuAdjType = 3;
-				} else if (pCoexDm->curPsTdma == 7) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-					pCoexDm->psTdmaDuAdjType = 3;
-				} else if (pCoexDm->curPsTdma == 8) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-					pCoexDm->psTdmaDuAdjType = 4;
-				}
-
-				if (pCoexDm->curPsTdma == 13) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-					pCoexDm->psTdmaDuAdjType = 11;
-				} else if (pCoexDm->curPsTdma == 14) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-					pCoexDm->psTdmaDuAdjType = 11;
-				} else if (pCoexDm->curPsTdma == 15) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-					pCoexDm->psTdmaDuAdjType = 11;
-				} else if (pCoexDm->curPsTdma == 16) {
-					halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-					pCoexDm->psTdmaDuAdjType = 12;
-				}
+				if (pCoexDm->curPsTdma == 5)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+				else if (pCoexDm->curPsTdma == 6)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+				else if (pCoexDm->curPsTdma == 7)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+				else if (pCoexDm->curPsTdma == 8)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+
+				if (pCoexDm->curPsTdma == 13)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+				else if (pCoexDm->curPsTdma == 14)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+				else if (pCoexDm->curPsTdma == 15)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+				else if (pCoexDm->curPsTdma == 16)
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 
 				if (result == -1) {
-					if (pCoexDm->curPsTdma == 1) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 4);
-						pCoexDm->psTdmaDuAdjType = 4;
-					} else if (pCoexDm->curPsTdma == 9) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 12);
-						pCoexDm->psTdmaDuAdjType = 12;
-					}
+					if (pCoexDm->curPsTdma == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(4);
+					else if (pCoexDm->curPsTdma == 9)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(12);
 				} else if (result == 1) {
-					if (pCoexDm->curPsTdma == 4) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 3) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 2) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
-						pCoexDm->psTdmaDuAdjType = 3;
-					} else if (pCoexDm->curPsTdma == 12) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 11) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					} else if (pCoexDm->curPsTdma == 10) {
-						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
-						pCoexDm->psTdmaDuAdjType = 11;
-					}
+					if (pCoexDm->curPsTdma == 4)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else if (pCoexDm->curPsTdma == 12)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 11)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
+					else if (pCoexDm->curPsTdma == 10)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
 				}
 			}
 		}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

