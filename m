Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA73A56B
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 14:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99D9885A80;
	Sun,  9 Jun 2019 12:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqvAxHkiRD54; Sun,  9 Jun 2019 12:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4D6785D39;
	Sun,  9 Jun 2019 12:23:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AEC91BF41C
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 669DB877AE
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KgiIRbd3cHVe for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 12:23:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0041287541
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 12:23:45 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a186so3703551pfa.5
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 05:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=USCUf6xiN3l3FOg/rvPKl6KPsZV1B+M6eFE3+EW1pGM=;
 b=bfHXsdSst457BKXFebYJhT6NoJ96Av22LCDGmLJQdCAovBhK159KtkOG44JVhd5JM4
 9uLR+LHwpqiiL9ojnu5HYFtg6Cw8wwcRVGjlI5xq0SwEKF02U7lUcjCUqW9fDnOTkDpH
 iwbHHNAIgCsyTx0H/sI/1wtok/A5d6mOroTUrq8tXI+GqYigKoiwgLnSguctijTHo3sV
 MUzgD4jZ6kzf34sj0zX3nq3AO795/mtEycAn7iaJdUI0JKMXFjZWphux0rdBwiHzUdS+
 9yzZy+yZlsvS18mqZ4EcLGCpmU74W1pRgqtovQUhfT4ZLgEgcCpcwFd67sxH5y4pkA5Y
 5msw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=USCUf6xiN3l3FOg/rvPKl6KPsZV1B+M6eFE3+EW1pGM=;
 b=bVbiSxiCwfPoS8BrZcsRtPXMCtX+xb5bZHOS1e95e1j1xHIn+gPEdSmIegUFwCCCHa
 5L7PW3hFecCd3u1FCp07rX8jsL9CiHorji/prIlurbNHw+04TLOi2EJYZOnIKAKCmrPZ
 wZ0k6BFFxWEinH+4RdvpyDW4uZv5KmdLTqbwS3TtoTeugYALx8AX0jA75pkLOpFqUQuo
 dNuPQj19U2mu6tdm61WwWt7V6wo/+OakIy44ui+tgEf0KkQrmWexAke1WheVJACLTXCo
 vzhyGs6aILhlr+7bDIKtQ85vUeKMPIEcFP4P+Hpd0nsUHQd7fGmNB6ZfaVzfKkpOiFKr
 rSPQ==
X-Gm-Message-State: APjAAAXK2QgJlCqEBAo3YpSqjoPq5z9Bbyjaauh6+D/IoHSrP8faidiu
 WW0dm40MdGQmUv4wKMh2lnw=
X-Google-Smtp-Source: APXvYqyeSvvu2vOb+t8zz0Hp3d4U+cXZqJhyNXahx5Azyh62QwvN47KcoopDFdHdAfQDAYJ7ExZMDA==
X-Received: by 2002:a63:d4c:: with SMTP id 12mr11704073pgn.30.1560083025199;
 Sun, 09 Jun 2019 05:23:45 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id v64sm13734618pfv.172.2019.06.09.05.23.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 05:23:44 -0700 (PDT)
Date: Sun, 9 Jun 2019 17:53:39 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8723bs: hal: move common code to macro
Message-ID: <20190609122339.GA3120@hari-Inspiron-1545>
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

In halbtc8723b2ant_TdmaDurationAdjust function,below piece of code is
repeated many times.

halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, val);
pCoexDm->psTdmaDuAdjType = val;

So replace the same with "HAL_BTC8723B2ANT_DMA_DURATION_ADJUST" MACRO.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
-----
changes in v2: clean the changelog with proper indent
-----
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 742 ++++++++++--------------
 1 file changed, 291 insertions(+), 451 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index cb62fc0..02da0a8 100644
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
@@ -1599,63 +1606,43 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
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
+					if (maxInterval == 1)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(1);
+					else if (maxInterval == 2)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
+					else if (maxInterval == 3)
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
+					else
+						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
 				}
 			}
 		}
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
+					HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
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
 				}
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

