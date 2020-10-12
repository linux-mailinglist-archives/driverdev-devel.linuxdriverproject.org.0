Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FE28B035
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 10:26:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CF1E869CD;
	Mon, 12 Oct 2020 08:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xexDY0T2UW0Q; Mon, 12 Oct 2020 08:26:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 667AD869A4;
	Mon, 12 Oct 2020 08:26:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4A8A1BF2A4
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 08:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D028F85DD8
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 08:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXz8x_xNpUSj for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 08:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A4C985C4B
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 08:26:35 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id v19so15992509edx.9
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 01:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=guf7LBZB+jebJNmvNlxvwGiiPJ9suzGx8GM0b0zPjxw=;
 b=Y3i0PbWi5gCOEobDoUQ47XbFH8pfiryrMx9+NFIEfYi3OpKW3hrCCeDNhMzfjjHj2g
 bsVMn+AcSV2p/xaYAtbpSc7kMpA66T1A+udaBv83krh2l0TmCnc9iNOLkUMB9Cfroe6P
 jV3rjuzJ7ZLlDy5C2i7CT0VOCJu7GYP5TDPF/e9OQn4Nw9ABdZjYA6g/W8TI37YLwAAV
 x6y8dRF3Trj6jYjWwDhttKflcth/o23eEvvIWuCYWA7sQ5qqdhIjh5HTzMhifWV0IqJH
 um/Fn/8OX9Ur1aRs48dujEQGoWhY/IJlkvHmTbqriOcm5S+QIZbLwFyFqIbFxGokTH/U
 93Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=guf7LBZB+jebJNmvNlxvwGiiPJ9suzGx8GM0b0zPjxw=;
 b=XUNd/+eBuhSXIYnzvBsR4aX3j4qsOk/8b2DbKqwEVGS02gwfjrWXQCz7ggmn7vu8ze
 NSbqHOVhlvnYYM2KS2/UwcP1JIuHhV4af20Ka2q7lsRKwBTvU2kfMcjFOGq//VAyQdiq
 cxeSNFdpDcDr+82hKCcxYRQk6xRiRtldbTiFmGeBubk31TQ2VmKVIkqqrI5u8F5a2UHK
 vKgdoBYJy6187MSEpPIqiwS68g7F7Mvd2iyZFe8p8Dn6CojfARNnPoZUv52eYpRqyb+i
 sqCqeX4uJVhLLKfeI2M4AvekW1YP2ErdKt62ABlCQ+JPy3NLjlLisRM0W8KE4FvYelld
 eCoQ==
X-Gm-Message-State: AOAM532ONK9V2WHkdgAKdS9jepmvXaBRf8w2540yjc7FwjCQr9PHP/ad
 /iKH9uilU0ZoEE1psFnROuc=
X-Google-Smtp-Source: ABdhPJzEE/sIzeUVWPJX6M2mgMFt8PgxnDCWQXy9ux+8j7tm/Akoe7Hi4vLRlhfTwDSZNQsBhwMF2Q==
X-Received: by 2002:a05:6402:187:: with SMTP id
 r7mr12442680edv.360.1602491193520; 
 Mon, 12 Oct 2020 01:26:33 -0700 (PDT)
Received: from localhost.localdomain ([185.200.214.63])
 by smtp.gmail.com with ESMTPSA id t24sm5440859eds.76.2020.10.12.01.26.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 01:26:33 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org,
	jerome.pouiller@silabs.com
Subject: [PATCH] staging: wfx: Spacing and alignment cleanup
Date: Mon, 12 Oct 2020 10:26:30 +0200
Message-Id: <20201012082630.275118-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4
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
Cc: devel@driverdev.osuosl.org, Izabela Bakollari <izabela.bakollari@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Izabela Bakollari <izabela.bakollari@gmail.com>

This patch fixes minor issue with spacing and alignment.

checkpatch message:
CHECK: Alignment should match open parenthesis

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/wfx/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 3f1712b7c919..83ccbab50899 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -32,7 +32,7 @@ static const struct trace_print_flags wfx_reg_print_map[] = {
 };
 
 static const char *get_symbol(unsigned long val,
-		const struct trace_print_flags *symbol_array)
+			      const struct trace_print_flags *symbol_array)
 {
 	int i;
 
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
