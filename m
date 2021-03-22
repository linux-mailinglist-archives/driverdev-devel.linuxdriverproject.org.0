Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7FD344743
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9E566079D;
	Mon, 22 Mar 2021 14:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnYPFj6_KfsW; Mon, 22 Mar 2021 14:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9077260796;
	Mon, 22 Mar 2021 14:33:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4289F1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3242C60659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNV1xh-JqaYW for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D243605C6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:24 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id u5so21648587ejn.8
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vl2FsywndoDnCnLH3CW1FLc/KJ2b1bAQO/tsFwQMyPo=;
 b=axF+ER92RNJmNtZBC+An9lXZbIXMIiHZhz8Ro6Ngm8Gi8OpYxlN8UJMiR2WAdF5PoT
 JGZxpwrywx02tEwbFabSoFLWUORZ04uiqhWCjX//HVc84sp2XlRjsOAteY724etntnlJ
 THu8JQ9k4dTIZ65ruxylB0+fZ7dJYnBc+ASjmts81p7ii6YdogQE+EPo75YBtEwllFky
 uTXd6pHyrHJeUIjH2OjfRtxV8w6IYXsu5rPa15FKBo7PkOTvS4+0UkHxlh42oOi6RQ5C
 cpRNRgU008Q0VPm6o5vZ2rRH37B57bgx0L7OOYjBLPod1MuglebwCD+bylaoKXDzGG49
 620A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vl2FsywndoDnCnLH3CW1FLc/KJ2b1bAQO/tsFwQMyPo=;
 b=OIXOqZdU1QZmbrRCZ6Cwmo2avgAt0rtNBct/LW+r9tKcG+SNXqfmt1lntfrjdYZ/u8
 S23S+YKOtjITgpq4Dw+QE+QbXCzYak0KsBFeJ4M6PT/rBCEM2B6T93JGmc+2w3vJoCK9
 CeXtqTFGZRyPnBVRX2qYuhhXf3FUMcbc7K6jbNO7PHDzBFOTzv8xlV29EkeWNJbbVSW/
 BTo/Frk88yyMBcKcQVTOgx+gnTpzgEMQOHzXwu96cYlvsWZ0JC0IJXbL5VXLjPMasTJ1
 wcQaouI9JnE9urQOcqMnVY2C8tp+H18jUd4lPOm52KLLJdhMaYjkxejdr3sE1cke/fpr
 PQHw==
X-Gm-Message-State: AOAM532YU96mvI+VlN5cb1dsZHcfl0ZLTfiKfzqsFUV89Dcc1Xa4Ogrr
 /O/0g5LB2IBDZ6fuN38Hmi4=
X-Google-Smtp-Source: ABdhPJwyeFrrYH9ApBmKlRX9XQb2UiUm/ygyF8KOcpWcfpUiKs7yEjBDIIVE444K70c5UctR/J7Syg==
X-Received: by 2002:a17:906:8447:: with SMTP id
 e7mr20017497ejy.523.1616423542801; 
 Mon, 22 Mar 2021 07:32:22 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id l18sm9793114ejk.86.2021.03.22.07.32.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:22 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/11] staging: rtl8723bs: remove argument in
 recv_indicatepkts_pkt_loss_cnt
Date: Mon, 22 Mar 2021 15:31:43 +0100
Message-Id: <fb3d6e0ae858738e3213b60d87e70c2f1697f051.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove debug_priv argument so function prototype can be
easily moved away

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 9ef2408ded57..e2a6afed723c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1983,13 +1983,13 @@ int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union rec
 
 }
 
-void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq);
-void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq)
+u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq);
+u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq)
 {
 	if (current_seq < prev_seq)
-		pdbgpriv->dbg_rx_ampdu_loss_count += (4096 + current_seq - prev_seq);
+		return 4096 + current_seq - prev_seq;
 	else
-		pdbgpriv->dbg_rx_ampdu_loss_count += (current_seq - prev_seq);
+		return current_seq - prev_seq;
 
 }
 
@@ -2029,7 +2029,8 @@ int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctr
 		DBG_871X("DBG_RX_SEQ %s:%d IndicateSeq: %d, NewSeq: %d\n", __func__, __LINE__,
 			preorder_ctrl->indicate_seq, pattrib->seq_num);
 		#endif
-		recv_indicatepkts_pkt_loss_cnt(pdbgpriv, preorder_ctrl->indicate_seq, pattrib->seq_num);
+		pdbgpriv->dbg_rx_ampdu_loss_count += recv_indicatepkts_pkt_loss_cnt(
+				preorder_ctrl->indicate_seq, pattrib->seq_num);
 		preorder_ctrl->indicate_seq = pattrib->seq_num;
 
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
