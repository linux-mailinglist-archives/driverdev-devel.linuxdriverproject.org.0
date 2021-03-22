Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB028344752
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216DA60793;
	Mon, 22 Mar 2021 14:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-stpnDTNb7A; Mon, 22 Mar 2021 14:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3334E60705;
	Mon, 22 Mar 2021 14:33:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF9671BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAB1D402C9
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PcMuxTx28DU for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 050EF402B7
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:26 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id l4so21613904ejc.10
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8GZqqzXcPg3L3CgG7FuoqmOVUMjqsIVs1/BV+o/Qvck=;
 b=AeqP5Yd5RBdhxqWl0EV+LzgwtmZsQu1cz50n6Ypo4QEDEcLVbXdf/QgY4SQPKnOhNQ
 Dv3Aa4Xs0I8+FplXTyBuS/IXJ5ZegXQW3TGQJmslg14yJmDceksggVvRZHN/GszlYjD0
 AR/FQdZeN6ZLcSMgtws3GMVY0qpoUj4CiqfTWqDSLR4ocOjfGdTjKQsyQQ/PRxOv8tca
 RGMmWyBMVNRzyECy3NjDeroJQFlKvJ+ZIQ54s14LCcaDYGHV1yXEXsX76BHWqBwTbjpg
 /H5L8Fvu7rLZYSO3d0tzTuXYXCFXNb2vnf+VataobO9EowaYRt4v5g5zmUVI7OM/nwDe
 aBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8GZqqzXcPg3L3CgG7FuoqmOVUMjqsIVs1/BV+o/Qvck=;
 b=VJrgPSK6OY79QiFvKsf4bl+nOEYmdHoMBGy+jqA1ri1R/RiTFJ8QyQhHl4pGtJUdO0
 zSopTKXvR8MY1Sgs29qTGIXBtQqY8tboO9CogjS1XS0AKBhg/ykuMYY4BdwNZj+SU6xh
 9X8ZJBuBoSLIL3vtc7WzVYMY54Wm5KINBDgmDTOCJ4vMqKAFZSqwiwv4+1Gk3bx5cJgT
 DkMdUth0x/dKnO0KC8XwC1w2ILKHur7TveycmJ/y8f2AMe+oADpp5/OiULGeLsn8tHZM
 miuT7aSdmMqHETE8N3AUP/olgCDwujHdJXtFSSZMtnWEVDhlT4Z8sE15BKkwzSYkn5C4
 d8hw==
X-Gm-Message-State: AOAM530Bso+EaDjOBkp6dGejA9zcwHoe4XfMGwdX9ZhtuQRgEJiN2jPv
 5JJup6K4n7C6wkcApT1kX/M=
X-Google-Smtp-Source: ABdhPJxECZtWl29aG8aEIRw0IcVueeekaMMQB0xv4Xwc9HWGrw1ISHiMb3LUdEB+jF2xpsB2e5UMbg==
X-Received: by 2002:a17:906:7150:: with SMTP id
 z16mr17667ejj.103.1616423545331; 
 Mon, 22 Mar 2021 07:32:25 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id f9sm11534700eds.41.2021.03.22.07.32.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:25 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/11] staging: rtl8723bs: move function prototype out of
 core/rtw_recv.c
Date: Mon, 22 Mar 2021 15:31:44 +0100
Message-Id: <570305618da6d5560b97ce06d585d70f4906b4e2.1616422773.git.fabioaiuto83@gmail.com>
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

move function prototype in include/rtw_recv.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c    | 1 -
 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index e2a6afed723c..99dede774b7a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1983,7 +1983,6 @@ int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union rec
 
 }
 
-u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq);
 u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq)
 {
 	if (current_seq < prev_seq)
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 248e098726fd..1dca18040b98 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -553,6 +553,8 @@ int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
 
 int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe);
 
+u64 recv_indicatepkts_pkt_loss_cnt(u64 prev_seq, u64 current_seq);
+
 int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl,
 			       int bforced);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
