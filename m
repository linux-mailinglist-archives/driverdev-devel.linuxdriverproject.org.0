Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D09247BD8
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 03:34:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 265E28619A;
	Tue, 18 Aug 2020 01:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id egoHNFVLHGEP; Tue, 18 Aug 2020 01:34:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA221861A3;
	Tue, 18 Aug 2020 01:34:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDC3A1BF2A0
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 01:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA00084B75
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 01:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmOOQQyo9Xk4 for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 01:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E77784B60
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 01:34:13 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id d4so8493672pjx.5
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 18:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TMGmcTgb/jRvjgnQN8qexpGDxW2SuYmgF1RuQyVqGCs=;
 b=P35sLU7k+abHEdQlo/+/i9gOJwkSObsqCll0KzYD/R3EXxJLjJ95O9LWkziaMloj2I
 IJ7M212m8CYRmZG9XDElB6WSEG0m0Fb0OdThHeEushvoqmErgNx72HLKtdELjyXEVOe4
 KroNan9sYQMzWwqZRaZ//iTCKPpnb0jQJkLxgCVS6hEJtdH7f2F+uQ0pZzmLTPzGvvBr
 SsHa89F3444kPXBWdYYNXLEcm2BSPxayI4q9ALIKoe5SgXcifz8yiGstsM7GnquRWx+1
 BcckOvMqp4ASir1ENjINcfuDpPzlt1AoI33GCxSNVY2fmcwEcIYmqZXrRcwBQn9by7UY
 313A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TMGmcTgb/jRvjgnQN8qexpGDxW2SuYmgF1RuQyVqGCs=;
 b=rpOFqZEyHoIDDgrfMcGR0i7RAGo50kBRVOzKvbViIS1Xm9rPcr+Xh2OMpEwMgba36H
 HtvzelD21YrawFl3tWSjCKRGIWVlPFlqXu0LFRd+foxNLXswY+OpHNyKAqH+9N1GcMOc
 cLBesM++T8vtN5tORPxzaoP6xP1SMc+aynN9ZmXAGghuXCH6myQhWq3vkotxS2xKcaMF
 E3IxxkqCDa7gbfP7KL1r1hbq34CQncBNJ02Ucc4dyqdqmtSZWdCbiR3cU9WBG0dNCYQr
 4ztVsMn1PYfQ6BJVn7NQ5wvBCT3DFTOFq1zBVJtSjz/qiIvfPn8Te01a95+kxtLqbRjB
 4D3A==
X-Gm-Message-State: AOAM531Mrl4W4iXRCUtzcRsnkXaB9UnRD2h7CYD1vysvhGfkQcolWwOr
 4j6YTsFmvDZUrpSY/Ms6X34=
X-Google-Smtp-Source: ABdhPJxapsIUVNOjj+o0zbtkZeBoD7T3wPDiBmXhPR7T7dh9hN252wiLjBEVgkDMyZqcejVpymZiXQ==
X-Received: by 2002:a17:90a:c70b:: with SMTP id
 o11mr14490078pjt.169.1597714453050; 
 Mon, 17 Aug 2020 18:34:13 -0700 (PDT)
Received: from ubuntu.localdomain ([118.193.245.26])
 by smtp.gmail.com with ESMTPSA id y1sm23247929pfr.207.2020.08.17.18.34.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Aug 2020 18:34:12 -0700 (PDT)
From: hui yang <yanghui.def@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] binder: Modify comments
Date: Tue, 18 Aug 2020 09:34:04 +0800
Message-Id: <1597714444-3614-1-git-send-email-yanghui.def@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, surenb@google.com,
 arve@android.com, YangHui <yanghui.def@gmail.com>, maco@android.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: YangHui <yanghui.def@gmail.com>

The function name should is binder_alloc_new_buf()

Signed-off-by: YangHui <yanghui.def@gmail.com>
---
 drivers/android/binder_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 6960969..8c98d12 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -652,7 +652,7 @@ static void binder_free_buf_locked(struct binder_alloc *alloc,
  * @alloc:	binder_alloc for this proc
  * @buffer:	kernel pointer to buffer
  *
- * Free the buffer allocated via binder_alloc_new_buffer()
+ * Free the buffer allocated via binder_alloc_new_buf()
  */
 void binder_alloc_free_buf(struct binder_alloc *alloc,
 			    struct binder_buffer *buffer)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
