Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 107732827BD
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 03:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91EE285424;
	Sun,  4 Oct 2020 01:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0l-plKPRUF9q; Sun,  4 Oct 2020 01:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC9D48545B;
	Sun,  4 Oct 2020 01:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 352171BF954
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31BE986130
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 01:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDzny3zCFhvt for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 01:17:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 600B486094
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 01:17:59 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id g7so5626450iov.13
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 18:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NYqpElu1kFYTJh2MLTbd/IIRjPhEHNaagHMg3GXSek0=;
 b=umRnfVtkmnsvMffpKB8uYpxleLUwqrOcW/Rxy1xXq2AM8QvfgckOM8Ukw0PD1/LEh+
 EgZPFOTCC0+6Ck3D8X6dMEOfDVv+x81sBPU7F6sIGNFmnJRjbsGVOnaM2dsvokK0OeoS
 os09i2rkRH4NK50Xouvolw2cMd679evS/JxNOW8DuyFKyj1P8rVNtxMuaA37RGPee6sO
 ZitAAdN80Vy8AXyjzYVElJSjgYQhJU3gSueUK0gTjki+4Jppi8BwDo6ColZpLNDwYZZi
 Be8xNMbpm5+sJE2Z14FO70gm4zFdy1u9JMEOPaQGLJwlaxPU6b9gC3jD3ZI7lskoXcUK
 Q/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NYqpElu1kFYTJh2MLTbd/IIRjPhEHNaagHMg3GXSek0=;
 b=LPf6LMd7s4KDQahXPUKWvs7IbwZb9yRtdi/n1Ami+aOefA2/Izxj1gazWqOQWUnCZ6
 afMVG/rRljjiSSb8JIJGsFpH0u7FgGdBVoutFuBLRBAqc3udBkZeNt23P26DVWXUVPhw
 o5tX/4T7Kv/aHMG+wSBRBT6TJhGAQd3U0XCtgQxaTv9r/gDEFdmjSrIPoGObbnCIyYvR
 juFPGjV7tNypoDp77LhwtNbL4nxdWrgwUli4xGN9iJiE0Rsol5iB48pNrrGBjNi0zLHV
 2rY7xi6fxwcifUlMp0N+HxW2iq3r5LLG8h9xliK1G5qHIe8iIOJGqxGBE6/+UtgUocBR
 285g==
X-Gm-Message-State: AOAM530nMJHQosVgClJ79comMsn735QkkpuaqYTu9ON9DynXxzjjk3Ww
 JSzyJmi+a2dDEiIeqviinj0=
X-Google-Smtp-Source: ABdhPJzzZm/fF5UBKvteZiHQOJLZubxL3vEMwbShXgXHXLOfaIqL1jT1oPcUeIBCrD+IM6IR2LXf0A==
X-Received: by 2002:a5e:d716:: with SMTP id v22mr6616296iom.121.1601774278751; 
 Sat, 03 Oct 2020 18:17:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id t64sm3575194ild.10.2020.10.03.18.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 18:17:58 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/8] staging: rtl8723bs: replace _RND8 with round_up()
Date: Sat,  3 Oct 2020 20:17:38 -0500
Message-Id: <20201004011743.10750-3-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201004011743.10750-1-ross.schm.dev@gmail.com>
References: <20201004011743.10750-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use round_up instead of inline _RND8.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c    |  2 +-
 drivers/staging/rtl8723bs/include/osdep_service.h | 11 -----------
 2 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index b9ccaad748ea..1fbf89cb72d0 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -369,7 +369,7 @@ static void rtl8723bs_recv_tasklet(struct tasklet_struct *t)
 				}
 			}
 
-			pkt_offset = _RND8(pkt_offset);
+			pkt_offset = round_up(pkt_offset, 8);
 			precvbuf->pdata += pkt_offset;
 			ptr = precvbuf->pdata;
 			precvframe = NULL;
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index 8f0e5cbf485b..c5e9a4eebd27 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -132,17 +132,6 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 
 #define _RND(sz, r) ((((sz)+((r)-1))/(r))*(r))
 
-static inline u32 _RND8(u32 sz)
-{
-
-	u32 val;
-
-	val = ((sz >> 3) + ((sz & 7) ? 1 : 0)) << 3;
-
-	return val;
-
-}
-
 #ifndef MAC_FMT
 #define MAC_FMT "%pM"
 #endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
