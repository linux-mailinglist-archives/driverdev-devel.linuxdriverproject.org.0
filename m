Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1384022AA1D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 09:56:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D846389AB9;
	Thu, 23 Jul 2020 07:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKwP-FmK9kNZ; Thu, 23 Jul 2020 07:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C5E889AA4;
	Thu, 23 Jul 2020 07:55:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11FED1BF350
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 07:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0EEFD894AD
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 07:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQ8r7OP91UzG for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 07:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CCBF8948B
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 07:55:44 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id j18so4075415wmi.3
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 00:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZIxE2/K8ZT8HGa0OyUuojdUU2wTlacbpD6Rw4Iaq9po=;
 b=LLsIwxjQFPweu4C+1Liism3ur+kVdwoYN5/m9JW/jjEI+EE+6PRdKn5ZVrNnQ2ZiP3
 YhhKbOW/C7DIANwxetGu5TDUCfUwu3Rc42B3J0Vx4qKIOPhGH+YLizKMh3Oti/Yl46tP
 htJUVGiHr9+9ztBkJuk91rriDjsATQSU2QAbuzVkPO6Z/EDme9vKMuyEG4pGCNjV05ij
 cKLpLK3TpXEIFO+0wIi3ujer4XWcUOAeqpUgqMkR9WCzDh2yPwVMHuc+g6OWU35Ca8EX
 7baQ3LuoxDfHMs2zK9hPUAA0IEK0bntUYEA4y8zSqpSr+a8y0FYmhxT/n1JiMjUL8ddh
 Cq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZIxE2/K8ZT8HGa0OyUuojdUU2wTlacbpD6Rw4Iaq9po=;
 b=PpZkeFjbdrZ/vBLJTPoUSH2qLo7wbdmm66wvPy4Ctu6Nk2JIPJ02ERuvJRvym64xWr
 r/FkW7/rj6aWOyIGzvEW6Ofvq1k8O85ggigvm3SBgLhRa98WVg9IxcYwC1TPbc/MlGBB
 hJbcRvCapSDgDJHfvdILOHU2EOykfRStch+k0KyH3h3LfjH5gumMGUSDLdW57xgTjXQ1
 XVWpFrkN8TRNkmAtsuYZCbtYAtD6+sNoN66uC+h3OuwaBBvNeA+2WX7KV6amMcpJ9bNU
 BZxPUZDBHCzq/OP3QPoXAVeEBegZm/TOdzybZEEBciNYx1EbaLFT+F74hPAEQw317ZK+
 fWJQ==
X-Gm-Message-State: AOAM533sAiU5hXwCY1g7IYuqT+TFddbzeo30DQEnIRTA+kNH17P1H5xZ
 QCjAR/qlpLKkTQF+qez7vy4=
X-Google-Smtp-Source: ABdhPJywE0fIoufrsRrMh5WwcaTne+r3tuHXkQlkocKdDiL9LpfuA5qc/eYGtzaJW/ND8eCbGKruvQ==
X-Received: by 2002:a1c:1d04:: with SMTP id d4mr3226537wmd.156.1595490942690; 
 Thu, 23 Jul 2020 00:55:42 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-164.178.006.pools.vodafone-ip.de. [178.6.252.164])
 by smtp.gmail.com with ESMTPSA id j75sm2816691wrj.22.2020.07.23.00.55.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 00:55:42 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: clear alignment style issues
Date: Thu, 23 Jul 2020 09:52:42 +0200
Message-Id: <20200723075243.21924-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clear checkpatch alignment style issues in rtl8188eu_recv.c.
CHECK: Alignment should match open parenthesis

The file is now checkpatch clean.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
index 1cf8cff9a2a4..ab8313cf5bf0 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c
@@ -33,7 +33,7 @@ int	rtw_hal_init_recv_priv(struct adapter *padapter)
 	if (!precvpriv->precv_buf) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-				("alloc recv_buf fail!\n"));
+			 ("alloc recv_buf fail!\n"));
 		goto exit;
 	}
 	precvbuf = precvpriv->precv_buf;
@@ -54,11 +54,11 @@ int	rtw_hal_init_recv_priv(struct adapter *padapter)
 
 		for (i = 0; i < NR_PREALLOC_RECV_SKB; i++) {
 			pskb = __netdev_alloc_skb(padapter->pnetdev,
-					MAX_RECVBUF_SZ, GFP_KERNEL);
+						  MAX_RECVBUF_SZ, GFP_KERNEL);
 			if (pskb) {
 				kmemleak_not_leak(pskb);
 				skb_queue_tail(&precvpriv->free_recv_skb_queue,
-						pskb);
+					       pskb);
 			}
 			pskb = NULL;
 		}
@@ -88,7 +88,7 @@ void rtw_hal_free_recv_priv(struct adapter *padapter)
 
 	if (skb_queue_len(&precvpriv->free_recv_skb_queue))
 		DBG_88E(KERN_WARNING "free_recv_skb_queue not empty, %d\n",
-				skb_queue_len(&precvpriv->free_recv_skb_queue));
+			skb_queue_len(&precvpriv->free_recv_skb_queue));
 
 	skb_queue_purge(&precvpriv->free_recv_skb_queue);
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
