Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E0261AC0
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jul 2019 08:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DC9887368;
	Mon,  8 Jul 2019 06:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtZlMc8sbIeh; Mon,  8 Jul 2019 06:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8D3A86A07;
	Mon,  8 Jul 2019 06:42:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA1971BF577
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B151087152
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnQPWo3e6Hzn for <devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 06:42:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21FEF86A07
 for <devel@driverdev.osuosl.org>; Mon,  8 Jul 2019 06:42:00 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id i2so7728726plt.1
 for <devel@driverdev.osuosl.org>; Sun, 07 Jul 2019 23:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fBqarLjlOOZ6KgVxckei/g8H70zvX+idfrwHlqD2hLs=;
 b=bbbavrWkx43Fqu8S0aFnu8XFmkQTYp21eO7Bw9S4NlvtS93cmQDJ26MIqBn+UaLC70
 H3Bz6CqYa2iBAhxbyYZgcEtBs9/0SqNHBnDuKJXmQpFbBrq0jEpC7D84/HM/HTIagrs9
 1GwrxFzLLg6xf8dMcKU6yPT1HWEq2q4GpIaJjUv81817lcjyIlJIQHYwSTuqyRwXTDRI
 JtRCJaieB1BI8MfDXtYxYOkcX9hYtj8NSSIfTadT0syckRlQmfEQlnCgWcDpw0rETex8
 yXsmZv3lyohYoVe3S9QulFd9m80oKJWHlL2a4VgLx8HE56KKpYMJhcBuUe02i+1bapJR
 VVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fBqarLjlOOZ6KgVxckei/g8H70zvX+idfrwHlqD2hLs=;
 b=JJYnLOQKFMoMuvamy3BcJVthn3/77Kyh8GwePx7WGCwKeGeNWGJsCsFDhF2zi+sfdn
 hXGgOZeoWvPqHVuo7WD0wif0Qnlb0Ii8327DG7+VKPvyBJmjOg6iMBHfZkjgVVxWLUks
 fN6zWApXrgl7f2FLgYVOaxI6zlawRbA03mzE9YVOzbyRuvqo89CsVRFXUsXrgd5VOD3B
 B4/t4J3PPSIkICciASZxAm/+YoO5xg6XJ50drbOVVpUYMgZQ/jEIremWhzASGZ0T+2yT
 h6T5nMbooFsKwzLQFC2Ih2dqYQxqSCmYJQNy6GX3WKH5KJGfC5ndojuXOIZeUwZu/y/5
 b0vA==
X-Gm-Message-State: APjAAAUY90Z3SA1CW0kYtIe5rbA3Y3EMzfIcGMGfTpExIFG0KtsDegGe
 GEsfNyDm17Thj70eggr15y8=
X-Google-Smtp-Source: APXvYqwF7RsKY1By+VVycaqCt36spFuhFdn1/Fl3uWKJQ6wmyWafWHYNupTb8AXO7hcenWjVYT+oog==
X-Received: by 2002:a17:902:204:: with SMTP id
 4mr22053330plc.178.1562568119830; 
 Sun, 07 Jul 2019 23:41:59 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b11sm18729817pfd.18.2019.07.07.23.41.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 23:41:59 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/3] staging: most: dim2: Replace function
 dim_norm_ctrl_async_buffer_size()
Date: Mon,  8 Jul 2019 12:11:43 +0530
Message-Id: <20190708064145.3250-1-nishkadg.linux@gmail.com>
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

Remove function dim_norm_ctrl_async_buffer_size as it does nothing
except call norm_ctrl_async_buffer_size.
Rename norm_ctrl_async_buffer_size to dim_norm_ctrl_async_buffer_size to
maintain compatibility with call sites of the latter.
Change type of new dim_norm_ctrl_async_buffer_size from static inline to
non-static to match the old version.
Modify only remaining call site of norm_ctrl_async_buffer_size to call
dim_norm_ctrl_async_buffer_size instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/most/dim2/hal.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/most/dim2/hal.c b/drivers/staging/most/dim2/hal.c
index 699e02f83bd4..d4d532e76147 100644
--- a/drivers/staging/most/dim2/hal.c
+++ b/drivers/staging/most/dim2/hal.c
@@ -471,7 +471,7 @@ static inline bool check_bytes_per_frame(u32 bytes_per_frame)
 	return true;
 }
 
-static inline u16 norm_ctrl_async_buffer_size(u16 buf_size)
+u16 dim_norm_ctrl_async_buffer_size(u16 buf_size)
 {
 	u16 const max_size = (u16)ADT1_CTRL_ASYNC_BD_MASK + 1u;
 
@@ -652,7 +652,7 @@ static bool channel_start(struct dim_channel *ch, u32 buf_addr, u16 buf_size)
 		return dim_on_error(DIM_ERR_BAD_BUFFER_SIZE, "Bad buffer size");
 
 	if (ch->packet_length == 0 && ch->bytes_per_frame == 0 &&
-	    buf_size != norm_ctrl_async_buffer_size(buf_size))
+	    buf_size != dim_norm_ctrl_async_buffer_size(buf_size))
 		return dim_on_error(DIM_ERR_BAD_BUFFER_SIZE,
 				    "Bad control/async buffer size");
 
@@ -780,11 +780,6 @@ void dim_service_mlb_int_irq(void)
 	dimcb_io_write(&g.dim2->MS1, 0);
 }
 
-u16 dim_norm_ctrl_async_buffer_size(u16 buf_size)
-{
-	return norm_ctrl_async_buffer_size(buf_size);
-}
-
 /**
  * Retrieves maximal possible correct buffer size for isochronous data type
  * conform to given packet length and not bigger than given buffer size.
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
