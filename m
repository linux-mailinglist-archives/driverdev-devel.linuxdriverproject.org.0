Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7D331274B
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 20:49:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AD798587E;
	Sun,  7 Feb 2021 19:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btAikcwwnAin; Sun,  7 Feb 2021 19:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FA478567A;
	Sun,  7 Feb 2021 19:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8F521BF409
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 19:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4CB084EE4
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 19:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-MwaD5PNhMP for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 19:49:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E013284DFF
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 19:49:49 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id 190so10883795wmz.0
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 11:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oqPLnymGHD3zFj+2wjzUexDZkU2xeBl6heZW7yAkQ8o=;
 b=fWygfAtyMKutmMhmSS17F+sgLI9PWZpZqy7xhnMlRbW0Dxa3B+g3RrMURKfB7DYN01
 UMB1A61lOihn/8HdIZNO0j+hi56db6qNV6u2tLItxVl/llw/FdNlE4rXdRPvzrCZEZuG
 BnkzCcEm//V/sV0VFM4GtLq5A5TO7PzGUhkBuHEEpTjUz+l2vG8IJhCclsgYhOgVpg3V
 QdK+84OIaY0qZOOlwRZDSA0of3+R7hO6NLiSl3fIbd8lZVtMEju5bYIXvvKn0oZ5suxr
 LB67GOM2GzNseFIe56euts9DpqJUWMjvOTUx8FpjsGAK3vhx77osv/JqHjUu09y71Y3U
 tJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oqPLnymGHD3zFj+2wjzUexDZkU2xeBl6heZW7yAkQ8o=;
 b=Ot443K3t4xzsbne5gZAmQs2Pm1rJCArZvE60/s0e4L7KDvPRA9t9dC8vPuyKcoC/j0
 dMvQxj+S4dMGuVF9tkL1SSDqQN7WC8KuggkBwZMd/PSMBPpmo8JUI9/BSI22aMsknSc1
 m2JWHjAysw4dMUqNJOv2xP8BDlzZqMrzcqDu+/FR6CesQWZ2WqaTJH6FLoch0OY0Oc+J
 njMsq/R0AwEmSz6P/vO9YrkkkfaGHIxKuex+sR20WJBCaCkwWdfrWqSLwp9sWNbNiTQU
 PsFllgRku3yBgGLKt5qWUDreIp4pScgvcHWScAF5DzM2dEYeIQ5hTskTpT3GAh+GEuwM
 XU0w==
X-Gm-Message-State: AOAM531fgLzg2yYSfRy9HMH2QiQ+ZLiHrTjOMX5KlFpbbZ9a6PtCR7T7
 SvyO7Inqw8Va+YjhIDlvDEXHMAUtFzwqsHDJ
X-Google-Smtp-Source: ABdhPJwYIjzv4Rotx6lxOP7IkAcGqPVDuPAFFXDALp7dqR3KI/VsBAsHhw3Bhaw7bASAXvVJC3SZmQ==
X-Received: by 2002:a05:600c:3549:: with SMTP id
 i9mr12251988wmq.47.1612727388512; 
 Sun, 07 Feb 2021 11:49:48 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id e12sm25598826wrs.67.2021.02.07.11.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 11:49:47 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192e: replace spaces with tab for a closing if
 brace
Date: Sun,  7 Feb 2021 19:49:44 +0000
Message-Id: <20210207194944.113613-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove spaces preceding closing brace of one of the nested if statement
blocks inside the rtl92e_leisure_ps_leave function, and replace with a
tab, to align it properly with the start of the block. Fixes a
checkpatch warning.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
index 9475f8c6edf7..c5e89eb40342 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_ps.c
@@ -290,7 +290,7 @@ void rtl92e_leisure_ps_leave(struct net_device *dev)
 				if (priv->rtllib->SetFwCmdHandler)
 					priv->rtllib->SetFwCmdHandler(dev,
 							 FW_CMD_LPS_LEAVE);
-		    }
+			}
 		}
 	}
 }
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
