Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33ACE18E536
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 23:29:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 782F5889A6;
	Sat, 21 Mar 2020 22:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZkikRpHh6InH; Sat, 21 Mar 2020 22:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC4998863D;
	Sat, 21 Mar 2020 22:29:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D15881BF5A6
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC32186640
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 22:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKzKlJfk_PlE for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 22:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DB4C8638E
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 22:29:22 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id o12so430079pjs.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 15:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SuELOfyOz/CEz/99d3bI8dTWcwrsJmXIVlGN6B64z0M=;
 b=aEYHyGmQpxeFZqEXPnIVSbEYZqdPTYPzvm6I7qtE9TfIpAIOdzBlTi5iQpxQZlcjY+
 v46ovDZ4QD5bsOL8QD/SOypuvp3yLfF3VTvNJr8wwkG50UhaKBXUbcMJfrF2xzgMRf9b
 TuA1ghjjfDsIAX/O/QH57ctYs/8ODWVLDBjBfKtrLTWrJxnfrx7ER/1Scv2dOykwUnpy
 B3xUNHZs4YUtnsoX8WUneCtV8CnMNOdOlmFtV0LsdZVdcgX/ftj3A92R386vsk9bMo+G
 +I9nrPrWutswAjFF1ubcdoadzbzhZqYvqHVYOYDjomtorqarhDIb6c80fhG/3AiUKyKe
 voxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SuELOfyOz/CEz/99d3bI8dTWcwrsJmXIVlGN6B64z0M=;
 b=M6tZCATTB05HR82+1pw2zTRIXAtCpIjRaYEnFyFzaTAS/kP/C5FJWl8yPZ262AeJeb
 Go07DjYDWUW/0dpEYQ/7sbl7+FzEK5Lx1PTGjGVBHlIDo4Kb2OmIcfKFaCsPDRdIboyB
 0V2EOfH04mu5JiVQufHhbH7pNm2HRXCkqz/K8pWHneFXegXOgH/izQnj2Uxfg4/8XlmT
 07Qh4I7OwYrTI3VqdW/b/Ykp7R/fmXpkKrjMpjYfCgFN3MY+E0oQzeA8jfOlnXj2WBIx
 0xOv+fPtsZvOr/2BbrhucuLNXbU/jkmkoqrl9dp2TUMAzh8OiY1IUhpkDG5xCn7PT2HS
 6SJQ==
X-Gm-Message-State: ANhLgQ07Tc7PhhifgkBaBxzj+SJXOfEyBy3S2OtB7tNYVnPj2SG8LFdg
 Jsg9SnlavKuRB7JSdOM1fWc=
X-Google-Smtp-Source: ADFU+vvEnDB1dz6+ndUAeivdzOPLvm3W9fFG9Yls8/RDTvznA0NNoNF6MWOmJVwaAVKvbjHjsGGndw==
X-Received: by 2002:a17:90b:3c3:: with SMTP id
 go3mr17475019pjb.10.1584829761900; 
 Sat, 21 Mar 2020 15:29:21 -0700 (PDT)
Received: from localhost.localdomain ([113.193.33.115])
 by smtp.gmail.com with ESMTPSA id e38sm8416270pgb.32.2020.03.21.15.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 15:29:21 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel] [PATCH 10/11] Staging: rtl8188eu: rtl8188e_rxdesc:
 Add space around operators
Date: Sun, 22 Mar 2020 03:59:15 +0530
Message-Id: <8d558ee0228cee22a2b0e058dba0c505b14ee1b6.1584826154.git.shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584826154.git.shreeya.patel23498@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add space around operators for improving the code
readability.
Reported by checkpatch.pl

git diff -w shows no difference.
diff of the .o files before and after the changes shows no difference.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

shreeya@Shreeya-Patel:~git/kernels/staging$ git diff -w drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
shreeya@Shreeya-Patel:~git/kernels/staging$

shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$ diff rtl8188e_rxdesc_old.o rtl8188e_rxdesc.o
shreeya@Shreeya-Patel:~git/kernels/staging/drivers/staging/rtl8188eu/hal$

 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 0a900827c4fc..7d0135fde795 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -182,7 +182,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 			rtl8188e_process_phy_info(padapter, precvframe);
 		}
 	} else if (pkt_info.bPacketToSelf || pkt_info.bPacketBeacon) {
-		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE)) {
+		if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {
 			if (psta)
 				precvframe->psta = psta;
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
