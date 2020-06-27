Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF41020C28D
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 16:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C736187F60;
	Sat, 27 Jun 2020 14:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nveCxCUrrIua; Sat, 27 Jun 2020 14:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D281E87828;
	Sat, 27 Jun 2020 14:59:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7511BF20D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 791E186CF1
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lv7LkVTpm74d for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 14:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F70C86CB2
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 14:59:22 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 207so5772557pfu.3
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0qR0RG0BShcuybjPoqzOObs/AZ3mMbOHHFDCi+AG9hU=;
 b=JIzl1bFGzPXLZs/LfcvL+9bnAWcEJm+rlpqcyraoV4oZuOgYbmMWro3O3lMmArgFqy
 t4x83r7ekeWaxcuyUPR1TnxXeHzSOeJcHuwI4COnVSy+58knhcSm/RUpLPSi2jX9BFd8
 ivb0NT/RY9Wk7zyOH+tWVw0sP7c6AdeEFeb3J5QNQCi1pZ5cbcSWzcwp5a214XVKMzIX
 OHLZZPBP2m2FT55adr0de8Wkn0eswymbQrfilLdqtoAxyM3oPyceg8P6LLteu49kd+UW
 xFqJKOUqHQQDG2I3d/QeYL/YyJ2EDkfs2YUigUTLQMOmr+VxbwKoflEkYKv80cHJY5ar
 nkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0qR0RG0BShcuybjPoqzOObs/AZ3mMbOHHFDCi+AG9hU=;
 b=rjGjZDk1yK677m0Poby3OEhlJgDV4FL0zhSczlALLiR9qV+/7ufLPc27KyQLKGecft
 Z2q+E4lqpCG4EBUOFPl/GQcXnGa1Mnz2ulpz7bUtkNdm09073gS6CZe8RbmyJdhN/xMg
 kq5l91WfDJNgpGBBO7FlGs+Q/JEwkqgBg1VdkjYNT+wBFyvJnUw1se+WmN8rkrIIWCOb
 5rGcX+WKRgoxYCDQ0TKNgMur6QLW2hMXwyMHaEkqZAt0z2RPuDWQ33y++a9Qk4ZzTHrl
 QYLjJsjlz5VGtkBojl6FQMKCh3K58XOBnoAG/Vn/23nunXu9+XqxIIRMLthv3rMTddYi
 /Jtw==
X-Gm-Message-State: AOAM53258cMFuBCLBw7CM0DqzbmAmF6IcFCIz+J3kUgd6JF06LNy0nKM
 U520FuaQ97B0gZyF3XSSNH0tnue7D8b65ArP
X-Google-Smtp-Source: ABdhPJwu6164TH5jDahppCWddCLzUTPUirpFQvFstRNJw+fyVWy0V9edHEGdGfr2Ei70TcW5iPz+ZQ==
X-Received: by 2002:a62:382:: with SMTP id 124mr7410521pfd.190.1593269962023; 
 Sat, 27 Jun 2020 07:59:22 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id nk22sm3053187pjb.51.2020.06.27.07.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 07:59:21 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 3/4] staging: qlge: fix ql_sem_unlock
Date: Sat, 27 Jun 2020 22:58:56 +0800
Message-Id: <20200627145857.15926-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627145857.15926-1-coiby.xu@gmail.com>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
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
Cc: "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some functions return without releasing the lock. Replace return with
break.

Suggested-by Dan Carpenter <dan.carpenter@oracle.com>.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 87433510a224..63e965966ced 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1390,7 +1390,7 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 		if (ql_get_mac_addr_reg(qdev, MAC_ADDR_TYPE_CAM_MAC, i, value)) {
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value[0])
 			pr_err("%s: CAM index %d CAM Lookup Lower = 0x%.08x:%.08x, Output = 0x%.08x\n",
@@ -1402,7 +1402,7 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 		    (qdev, MAC_ADDR_TYPE_MULTI_MAC, i, value)) {
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value[0])
 			pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
@@ -1424,7 +1424,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 		if (ql_get_routing_reg(qdev, i, &value)) {
 			pr_err("%s: Failed read of routing index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value)
 			pr_err("%s: Routing Mask %d = 0x%.08x\n",
--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
