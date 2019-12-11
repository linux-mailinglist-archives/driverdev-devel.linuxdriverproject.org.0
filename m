Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 795B911BB5E
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3639686D78;
	Wed, 11 Dec 2019 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuEvIFJ5wcfM; Wed, 11 Dec 2019 18:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42EEA86D48;
	Wed, 11 Dec 2019 18:16:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 810061BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72F9C87EE7
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8CVUY7g0Scd for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07A5E87EFB
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:33 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id k17so9405303ybp.1
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jsmfuvj/jRIcDYES8Oc8uYcAOMzoL2nHcB1C2C+d/QQ=;
 b=fzv2XaxVk0gbz/EmTCRlUrhztpjFTMk41lHSfPzOF8UnOTOsjrj3+6Z2PMP2gkZks8
 kSsW0oc7KK12AndYnRfRQejRZwpzEaxbQPHEZ/JvoqOJYSQgD2gwrF+p2ChoYoHffmDL
 WiEZWOyNhDEqKYfPhIJYHerhv0KyIS0Xlfu1LzB1PJZC1TRBaoPxe1InpB3QHMHzUqXQ
 9dX+F1TTZoXA/1yS34ytgCRa1D7BA2u2gqdkAgiwJ3x3UHIb2XohQD02DqQAQZedHHtd
 f5FTNVDWXYhaiIJmrsgd17QG7qnAnL7JJofW0kVxCWcj4rqPil9Yqw+s5N63mBkYpnOU
 9JxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jsmfuvj/jRIcDYES8Oc8uYcAOMzoL2nHcB1C2C+d/QQ=;
 b=YWUevsapprBWW31bQdyNYoMOAl1qmdRsjrQWVyoieH+vKBeKkeyV8y1adf4yuIR5A8
 kl4eS8Xq/uzTGYrvvuAnQLbytzKGp3fw0ec8bmeM3534OSqHWcqeEjgICbju6H2YMw4v
 qB5T68q+TVV6IkTWIM6czB6o1knczjPDdDmRHkS7D0SVJs2YuVG3IFUEvzCIJOeDIG0w
 IwA5vrInKJxmxzWbdy4UNgq82fo79uq6mUnNBsCB5GfTSBB1+9iWklzcagDv93R01OCn
 WxY9T2yed5UYnas94MBwqLQvpjIdhXTiNV/pLUu+DeC629cab5uU3WBqRN9MDx2mJX9X
 fPnQ==
X-Gm-Message-State: APjAAAWdkRwUFkxdfTQD5CMzp5+T/y2Z+kZGucJVEbyATNBzzO5cT2hH
 HsqKfM7q1mHzIrSVWu3PWilUoFd/XRq/WA==
X-Google-Smtp-Source: APXvYqyafrghq+IOLe5aUFpMlgZQVWihCWXIStViTcUzM5tny0gClF6EV+rB2AAYUYMpp4H0So5pfA==
X-Received: by 2002:a25:d093:: with SMTP id h141mr890692ybg.233.1576088132033; 
 Wed, 11 Dec 2019 10:15:32 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id t3sm1332576ywi.18.2019.12.11.10.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:31 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 18/23] staging: qlge: Fix CHECK: Prefer using the BIT macro
Date: Wed, 11 Dec 2019 12:12:47 -0600
Message-Id: <f90d9a2ce4727586c1c1a2a0cb581fc214babc42.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix CHECK: Prefer using the BIT macro

changed (1<<4) to BIT(4) in 2 places in qlge.h

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 010d39b4b30d..de9e836c2788 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -1274,7 +1274,7 @@ struct net_req_iocb {
  */
 struct wqicb {
 	__le16 len;
-#define Q_LEN_V		(1 << 4)
+#define Q_LEN_V		BIT(4)
 #define Q_LEN_CPP_CONT	0x0000
 #define Q_LEN_CPP_16	0x0001
 #define Q_LEN_CPP_32	0x0002
@@ -1309,7 +1309,7 @@ struct cqicb {
 #define FLAGS_LI	0x40
 #define FLAGS_LC	0x80
 	__le16 len;
-#define LEN_V		(1 << 4)
+#define LEN_V		BIT(4)
 #define LEN_CPP_CONT	0x0000
 #define LEN_CPP_32	0x0001
 #define LEN_CPP_64	0x0002
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
