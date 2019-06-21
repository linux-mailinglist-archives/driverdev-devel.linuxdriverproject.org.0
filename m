Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A18E4E04A
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 842868618F;
	Fri, 21 Jun 2019 06:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2RJ8JBXdwGK; Fri, 21 Jun 2019 06:08:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 924E586160;
	Fri, 21 Jun 2019 06:08:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68BCD1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D00C86151
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 06:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngJ-5ddnCXLX for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:08:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9093386148
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 06:08:45 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a93so2465590pla.7
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 23:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s7MuezSzJOvWXKwVuTCO/qqFfAS+jd+f+YFm2p5YdPM=;
 b=LT3gDmBaorDddvnLzfbV0AxAh7hob8Q2OytFuA2Q2rNgGLB/aLgvPQWaKsDST5AJUx
 ktxqf/ASeVMgAeCkQSNFpicm3RK5F8kUUOuHvy4v3cTQ8S3wxxIcRqa0GZ/sQaU+EbtD
 9FGMQp9yPt3+czQJjM+6tfjQXLOd9NH3uFBzVFuTSvBEf3dWb0x0B4aj+4okFntp1Iv9
 c0kIE3rDqSaH0heCYEOOwOqTIwcBbgAQP9SkcC3Wj5U7ir7fyaRTOhh3jIP6Ly7xhdmd
 Wb9oVRcQeL2X7x0+oxRSVFyW98XlBIbsBU/hBPIaAZoM/ml//PFWE0Yj7myf5+c5cpt8
 0Plw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s7MuezSzJOvWXKwVuTCO/qqFfAS+jd+f+YFm2p5YdPM=;
 b=gWurSPM+MBEyy5H5J1QuGSuo9LDQ04LpI/OE++bLOmi/Ge4RJeJcOD8a1AihwjV6jC
 A0ZJakOeK/K5eso/7buMrVB0+umX/WvwnsdcjKYiw8Fx9ehBJMhxyQ66wuaNUPFYp3tc
 +W3IEea/JHooMyJTwk3gDVI8iZ/6qm+A38ehRUpUXO0qQohu9SD8nVxhRP77Yqymm/Ta
 t3fYUSgms5u9i1n2YXR5ys3x7YHDUfvEgZDv4iBkfnN5cGtwldwlDWlWwxEvYBM8FX11
 niQrtb+C/P1d5svPx+6nTVF3tvps+AXngP9lgz6vc63vedFHyHeoQRcJ2OX28socGhlL
 p0/w==
X-Gm-Message-State: APjAAAUngPRkk/0mM45K74QW1aup8XO7o2FoKApopPUa9BNE0K56nwrl
 keG4gZhWTgu4ZFbbHydme/o=
X-Google-Smtp-Source: APXvYqyG0lKCgVDw0r0WKuJNJAbImHD/MkrWZfbQ5apixOYdYza/c12DCBHWc8hv+9cg+4NF/e7yrw==
X-Received: by 2002:a17:902:7581:: with SMTP id
 j1mr128558067pll.23.1561097325268; 
 Thu, 20 Jun 2019 23:08:45 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id j23sm1479203pgb.63.2019.06.20.23.08.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 23:08:44 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: rtl8712: r8712_enqueue_cmd_ex(): Change return
 type
Date: Fri, 21 Jun 2019 11:38:11 +0530
Message-Id: <20190621060816.2030-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621060816.2030-1-nishkadg.linux@gmail.com>
References: <20190621060816.2030-1-nishkadg.linux@gmail.com>
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

Change return type of function r8712_enqueue_cmd_ex from u8 to void as
its return value is never stored, checked or otherwise used. Modify
return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +++----
 drivers/staging/rtl8712/rtl871x_cmd.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 163eadba789c..66c2f4750497 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -163,21 +163,20 @@ void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 	complete(&pcmdpriv->cmd_queue_comp);
 }
 
-u32 r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
+void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
 {
 	unsigned long irqL;
 	struct  __queue *queue;
 
 	if (!obj)
-		return _SUCCESS;
+		return;
 	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
-		return _FAIL;
+		return;
 	queue = &pcmdpriv->cmd_queue;
 	spin_lock_irqsave(&queue->lock, irqL);
 	list_add_tail(&obj->list, &queue->queue);
 	spin_unlock_irqrestore(&queue->lock, irqL);
 	complete(&pcmdpriv->cmd_queue_comp);
-	return _SUCCESS;
 }
 
 struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue)
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 5d0a8568003f..0817d126254f 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -80,7 +80,7 @@ do {\
 } while (0)
 
 void r8712_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
-u32 r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
+void r8712_enqueue_cmd_ex(struct cmd_priv *pcmdpriv, struct cmd_obj *obj);
 struct cmd_obj *r8712_dequeue_cmd(struct  __queue *queue);
 void r8712_free_cmd_obj(struct cmd_obj *pcmd);
 int r8712_cmd_thread(void *context);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
