Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA1485AED
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21D35881D0;
	Thu,  8 Aug 2019 06:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7KU8KaMS1Wg; Thu,  8 Aug 2019 06:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42ADB8817B;
	Thu,  8 Aug 2019 06:40:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C3B421BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD07F8817B
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uk72Jh-5NHvP for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20F78880C7
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:27 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id b3so43142695plr.4
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vyn9XHJszlx+sDuCxrNK2kdn/BHbly2V+4YFdV/QH3c=;
 b=i0Xite479iGUz4CnV12PTjQZOBN6kjo+Nle/lo3kd9k05UOF1qiKFfV3yNOhFhAhsD
 bkmciFp/1p8IaisUQAJWOKScNG3QTwsjMOpgtzWBHSel5pBMLSBH6GOPE6tvRBow8YRD
 OOtq5/c5pcv0lswRR3NC8lMnzXF7egxI8P7EnlWDZ2tqYwrry3D/2fpGN3Uv41HBDYwp
 pc43Re+NB3h/b/77Vs+sxbjoXFuGXEGzk0A4kx55X8vei4fpTGvAgWLw6clhHL8d7C1p
 xUhiPcjObJGrl1F4k0CK8TxzGo1V1lk44jMYJRkcSN09tPooJinjsFvTcS5iNKpp3UQy
 +AVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vyn9XHJszlx+sDuCxrNK2kdn/BHbly2V+4YFdV/QH3c=;
 b=MEou3g/G0+YH3RT8UKIIwEA6NiM8Wd5JysuxyIzJiY46i/d+/o1e5t90vyLctXvnFS
 jbrQfI86z+fWJayb6k0lJXfFTqZDeLwfzETjpNPy6RBdZXewyG+pKCg2KxLMjBZWf0kR
 iSg6wfDzPAOsGXp9DGJE7KYiDqyHQV4QL/FPziJHBR/ZroxlEOHcuEjqN4gs6N8h0LH0
 /MkEps/lhq2LvL/IQnkUNJBonUetHNyLQOMuU+jqjGtcMwzX8+j6mGXCFG3JMwCMfSYN
 dPQyxpNHRKS/LX95iQGqgdiwB3Blz0sCfA+trzZnCiBmNP17RLABKEmJPUVgu2blHYUz
 owlw==
X-Gm-Message-State: APjAAAXrrrt07z87kGHl7sLhq49Ax3f6AGvsxkLYbCQxElj+Uxqf7RdQ
 ol9I7wolLUJwaUD+0VPqln4=
X-Google-Smtp-Source: APXvYqxoBJNqk2EyiZZyjVAcRLLEOi1pR6NkX+wdyBli6VYOyBPCWau4HA7rBvi9n+dA22Iqz6j0aQ==
X-Received: by 2002:a17:902:306:: with SMTP id 6mr1806046pld.86.1565246426788; 
 Wed, 07 Aug 2019 23:40:26 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 01/10] staging: rtl8712: amsdu_to_msdu(): Change return type
Date: Thu,  8 Aug 2019 12:10:03 +0530
Message-Id: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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

Change return type of amsdu_to_msdu from int to void as it always
returns _SUCCESS. Remove return statement as well.
As this return value was never anything other than _SUCCESS, remove the
if-branch that depends on the return value not being _SUCCESS.
Remove local variable that was only used in the now-removed if-branch
Modify call site to call the function amsdu_to_msdu without expecting
a return value.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index eb9a4a5ed740..42372e7e76ac 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -318,7 +318,7 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 	return prtnframe;
 }
 
-static int amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
+static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 {
 	int	a_len, padding_len;
 	u16	eth_type, nSubframe_Length;
@@ -416,7 +416,6 @@ static int amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
 exit:
 	prframe->u.hdr.len = 0;
 	r8712_free_recvframe(prframe, pfree_recv_queue);
-	return _SUCCESS;
 }
 
 void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
@@ -506,7 +505,6 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 	union recv_frame *prframe;
 	struct rx_pkt_attrib *pattrib;
 	int bPktInBuf = false;
-	struct recv_priv *precvpriv = &padapter->recvpriv;
 	struct  __queue *ppending_recvframe_queue =
 			 &preorder_ctrl->pending_recvframe_queue;
 
@@ -543,10 +541,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
 							       prframe);
 				}
 			} else if (pattrib->amsdu == 1) {
-				if (amsdu_to_msdu(padapter, prframe) !=
-				    _SUCCESS)
-					r8712_free_recvframe(prframe,
-						   &precvpriv->free_recv_queue);
+				amsdu_to_msdu(padapter, prframe);
 			}
 			/* Update local variables. */
 			bPktInBuf = false;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
