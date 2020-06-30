Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A749B20EB67
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 04:22:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2AAF62206D;
	Tue, 30 Jun 2020 02:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNUt6tgAp3bH; Tue, 30 Jun 2020 02:22:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9BD5020399;
	Tue, 30 Jun 2020 02:22:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0B331BF25B
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 02:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD28987C02
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 02:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWcj1tK5WLJ8 for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 02:22:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1788B87BFF
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 02:22:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d194so5832468pga.13
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 19:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=90iGbWnZQvzyoyYYX1aI3WuUPDwZTHkcVJZ1gtygVfs=;
 b=B8on8zwCEHxEEytA265c1m/uSWXHG5+LH9fkpt16It4D+dnPiQ1JgcNgigITKJuKuY
 rOiEn3BbZ3OAf5yprtQvaeSrqajiNj3juoILKsAi55q6nFZxMVRy5r4iI1AxdNRPQyF+
 0/QgmBsRol2GgmCERGh2mYmKj8JPYYvH1nXtJdkpwWUNMuo8FPUioX89AG0hfFp3/Cne
 Z/dTpIrjfSpS4yeP88KBIjgnU7OVgQgtrTiuDXvnarGUrjwJ4wYcIxiUg5VuNjbbl6Is
 ZZn6U6HMBuzvimnOYufosYBcf18gexZYcmJLH/86b+1kUx7kH2HhZTIBeg4afKoVCZxa
 mffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=90iGbWnZQvzyoyYYX1aI3WuUPDwZTHkcVJZ1gtygVfs=;
 b=RIuGRuPmzcd/mchMc6HkQdceTCPjinhisHp3g2ZTZowzRcYH28Z4H+92tXhrN211N4
 37+KwB26/VNwWIE7irsGgHN9uSCaPAQFEcEZUxcuLtI7u9pzg10kQq3P3399uTh5W9ZV
 5uycNX0N9dBvJ1gl+NW9J5izASx31vfjBwQVQNX4ENQ56GW3R7WaidsUIBgsiUL+NfbP
 AEjTZhin2Z62ijFSdwBoXBkVxx7sKj+21GW1q0VaiZyTTc/qOrK/ZXzwVePh8hE+ZZQD
 EZ3UaGoGnz9gUzITSQDfylttfgcvhIHanqzMdhGZg7VXvZq0iVTrXN67lYVeMCPFsgcB
 FEWw==
X-Gm-Message-State: AOAM533Ad11awdvZanuRqDdqL+ko1oTUM0HndzHlXQIE6Bd+eMscLMT0
 YR64fk/RCe1Mo7G0K534EyU=
X-Google-Smtp-Source: ABdhPJyiBmGpHuEUFMc0bYmUbStDsACPIG/Qk5JupF0XACmd6kClws1TCwfbftRdnqGPXP5PKMVa/Q==
X-Received: by 2002:a63:b18:: with SMTP id 24mr13544182pgl.406.1593483752755; 
 Mon, 29 Jun 2020 19:22:32 -0700 (PDT)
Received: from simon-pc (n11923716050.netvigator.com. [119.237.16.50])
 by smtp.gmail.com with ESMTPSA id n11sm914545pgm.1.2020.06.29.19.22.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jun 2020 19:22:32 -0700 (PDT)
Date: Tue, 30 Jun 2020 10:22:28 +0800
From: Simon Fong <simon.fodin@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH] rtl8188eu: core: Fix WARNING of Block comments
Message-ID: <20200630022228.GA580@simon-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 simon.fodin@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a WARNING of Block comments use * on subsequent lines.

Signed-off-by: Simon Fong <simon.fodin@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 9caf7041ad60..bceae18e4373 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -163,12 +163,12 @@ int rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
 }
 
 /*
-caller : defrag ; recvframe_chk_defrag in recv_thread  (passive)
-pframequeue: defrag_queue : will be accessed in recv_thread  (passive)
-
-using spinlock to protect
-
-*/
+ * caller : defrag ; recvframe_chk_defrag in recv_thread  (passive)
+ * pframequeue: defrag_queue : will be accessed in recv_thread  (passive)
+ *
+ * using spinlock to protect
+ *
+ */
 
 void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfree_recv_queue)
 {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
