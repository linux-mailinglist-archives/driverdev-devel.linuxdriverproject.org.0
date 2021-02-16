Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A68A31C79F
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 09:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 881A28575B;
	Tue, 16 Feb 2021 08:53:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LS3gu4jt_Oha; Tue, 16 Feb 2021 08:53:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ABE5844B7;
	Tue, 16 Feb 2021 08:53:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 877F71BF306
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 08:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80D2E8531D
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 08:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UCT7L8c9Je7 for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 08:53:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0381E844B7
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 08:53:32 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id fa16so5286833pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 00:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jL3Fm59Frnboz02UpkPj4GnEzKkAjnqtoiCL6DPXY9Y=;
 b=S5c4W5nEWPY5YyBxNKaEoTdJCTpvwtbtQUYXlssH5LIxQivAN6rUL6U3XjdJAFsSIG
 L4tJVE+NxWrHjmlETpI0Mm4adiKpc+AzhPJAfGU7i5ch/CdbK1W77qUrlOe8n+7E8Dt9
 rYKNy/1Me9tzzK/6AZFNbVE+3b9d7osnyadHFXViiZxLHBymoImYO7wn/J+q1fz+B2gp
 QIV0JiDtvwFGFfGpKc3SVMjWCwMU4tam4CPiBNvnwsb5IT7oubr+x17UfyLtKhWNec+B
 Rbkzxtjxg0abe8WIPuaYlIm0b6Gy0S4dBBzMEH6l6zI7qjtLconKdDrPbxXAugwjhcr4
 +SMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jL3Fm59Frnboz02UpkPj4GnEzKkAjnqtoiCL6DPXY9Y=;
 b=NeyXbw+nfULaZZjpn1ZthstmDwC9x5Lp9KNHNu82xqsF4OITLcV4C7es/H0Ef7M+wS
 Msz1CpaDEmrsBzUyDWgBwFyrQ679JeTVboWuQR7vOftGVEiCKvk9ROWbaRBg/lN4tvqn
 wiPaQFzgBPoG9PXe0WSuluYKAk5qev/oXa3DDluh5C5fo9+s4jXpdfXYBqEN9YCCRiEW
 K0Gk+Wv7rx4RKzHzoDLnna3OcTv55VghuYMvgue5+wiSGQf0cSscra/j3h62/opOg4zg
 qoHBP24+qxw2D0VTLABirrmag09ufTCXiXYKybNC9Bwhb8ROaBe41wI0/gYvpg6JfQbN
 hX5g==
X-Gm-Message-State: AOAM5300Sw/wKFF5kNmI3C5MSaLqjuKUm1L9qw9iKh2cy7XelnlmUkZ6
 1KTJ3pm5bvFal5iNQTLYZ0A=
X-Google-Smtp-Source: ABdhPJzfBx15FyaMe1ky/fF5UyDGuRzlZO+HqRLnABFYeGo24qDOshKtA7oNtNpprorR2v0z5QnlTw==
X-Received: by 2002:a17:90a:aa07:: with SMTP id k7mr3261078pjq.3.1613465611542; 
 Tue, 16 Feb 2021 00:53:31 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id hi15sm2053510pjb.19.2021.02.16.00.53.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 00:53:31 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Manish Chopra <manishc@marvell.com>
Subject: [PATCH v3] staging: fix coding style in
 driver/staging/qlge/qlge_main.c
Date: Tue, 16 Feb 2021 16:53:26 +0800
Message-Id: <20210216085326.178912-1-ducheng2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Du Cheng <ducheng2@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

align * in block comments on each line

changes v3:
- add SUBSYSTEM in subject line
- add explanation to past version of this patch

changes v2:
- move closing of comment to the same line

changes v1:
- align * in block comments

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 5516be3af898..2682a0e474bd 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3815,8 +3815,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
 
 	qlge_tx_ring_clean(qdev);
 
-	/* Call netif_napi_del() from common point.
-	*/
+	/* Call netif_napi_del() from common point. */
 	for (i = 0; i < qdev->rss_ring_count; i++)
 		netif_napi_del(&qdev->rx_ring[i].napi);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
