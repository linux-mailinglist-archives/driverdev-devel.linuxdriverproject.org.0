Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD601771CC
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 21:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EF5688E9F;
	Fri, 26 Jul 2019 19:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ryp8H6szycto; Fri, 26 Jul 2019 19:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0420788BF4;
	Fri, 26 Jul 2019 19:01:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DBF81BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 19:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66B4E88BF8
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 19:01:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-tKUX4UtRGm for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 19:01:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B790588BF4
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 19:01:56 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id x22so48719605qtp.12
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 12:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=syecGPLAVxXKoScF58JM1nKaJhwv9Ro0xqH2lWpKv7s=;
 b=mWuTVaH89MAVhGcqtln7I6cJDGBVNDmPF17LnLwz0UxffNJfpG/ImSkR3c2jfLNuTm
 O0p7ixMqV0hOZSHCjs007Er1FZ35YkvK8X97JYMbRWVVH9JwElPeZS15wfVfwRLBTyoe
 y32zsnQZ/uv8IydTJTTruGaxfyauVNIV4xIC1P0KlzLLIr6BFZhD66Otx23acTsDQQgX
 apnBA3eW9PSBjW/9s6rXSEddGFynj1SVfXA7YSwcG4iDXyuTY0mvIX9bJjooe5ucwZuP
 e7t7etJqCtt+m2Sri8Z+HWsfAalh2tcHnwTCCPHkTF6ikfwBGDWOn7Y7hEALSIJhN4i2
 zAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=syecGPLAVxXKoScF58JM1nKaJhwv9Ro0xqH2lWpKv7s=;
 b=TZFDqV5GQ/cT77GKBTopjEgEd7eh0zY8cTmCZSNdC2+ROowC+wZTTiQZEM3tW7rXuc
 A0U2Fyoli0PdHlc9AMWiY/VJtFtLeWmr8BuXKdE1eIgWYgU1bnZy8ec/umyb5ex3aYKo
 cHHYkK6/7yKiZfJLlaxw8yFzRbx+h641Cj/q5FZ2tnWiiocVYAX85AvmVlDUv+nwZG7r
 l3DtRpTlvr30fpgN7nrTtDvs+a04q2BZhxs6HcBb56NLrhj2D3ZhhlRxiI2u6kNTeFfs
 Gr7796S4rrCbMaGYi+kd2TV1dBF1UvPobIRMrYvepzO8rex7akHmV4aJrts50mleJkXc
 rT7g==
X-Gm-Message-State: APjAAAV2sxMCgSynsBcJBicCXGhXmNTZ4NXaRVTj9LCKfIPkt39jJvAt
 vdVuM5FzAQV4EnwFT4leS30=
X-Google-Smtp-Source: APXvYqzrMQuk02/iXrXtRaLD6D5IA8xZF45GCR2iy/tCNubwNavnBZHpamZyjQxpD1SFWtfNVrnOGg==
X-Received: by 2002:a0c:e001:: with SMTP id j1mr70180692qvk.110.1564167715842; 
 Fri, 26 Jul 2019 12:01:55 -0700 (PDT)
Received: from localhost (ec2-3-84-150-207.compute-1.amazonaws.com.
 [3.84.150.207])
 by smtp.gmail.com with ESMTPSA id u16sm27436019qte.32.2019.07.26.12.01.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Jul 2019 12:01:55 -0700 (PDT)
From: Abhinav Jain <crazypsychild@gmail.com>
X-Google-Original-From: Abhinav Jain <ubuntu@ip-172-31-129-142.ec2.internal>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8192e: fixed a function prototype definition issue
Date: Fri, 26 Jul 2019 19:01:46 +0000
Message-Id: <20190726190146.10875-1-ubuntu@ip-172-31-129-142.ec2.internal>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Abhinav Jain <crazypsychild@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Abhinav Jain <crazypsychild@gmail.com>

Added the identifier name in the function prototype definition.

Signed-off-by: Abhinav Jain <crazypsychild@gmail.com>
---
 drivers/staging/rtl8192e/rtllib.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index 2dd57e88276e..f55153270a8d 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -1940,7 +1940,7 @@ int rtllib_encrypt_fragment(
 	int hdr_len);
 
 int rtllib_xmit(struct sk_buff *skb,  struct net_device *dev);
-void rtllib_txb_free(struct rtllib_txb *);
+void rtllib_txb_free(struct rtllib_txb *txb);
 
 /* rtllib_rx.c */
 int rtllib_rx(struct rtllib_device *ieee, struct sk_buff *skb,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
