Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA56D141944
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 20:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4021B87DB1;
	Sat, 18 Jan 2020 19:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eped+52wjEqQ; Sat, 18 Jan 2020 19:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 819B487CC9;
	Sat, 18 Jan 2020 19:55:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 380541BF45A
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3504285C4C
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lxg6L2nXIufk for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 19:55:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E14285C0B
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 19:55:14 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 20so10859860wmj.4
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 11:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hxN8NgQyJPLhiFmmBvyQRdEWEtV2Q5inuy5tn3SfqVM=;
 b=U1lNqSZYAuKktYU80diBlGP7MleOGvm300d0W4cVYR+MgqwkvQdlV2uETKL0WItUkb
 LaI5ROeO4AUJ+wm/mLnFODmUZjKxlcw1Z+Wx062wt9W8KRC+qBpNBI2dA95LsGyGwxje
 b4b0n2vY22dak0KJChhwg04lfAlKd6lzYL//iYqsy0PWdXvArh6BQW7q81ouUaQj6zBO
 YtNbuBpRO5le14ReFWuqNPodMVuMZ8c6T2pB1FPbRE358lvdsppkQrCvyOHx2LKxczOc
 SIBIhLDZ2FMhm9Nft73iQ8UHOdjoXsZxrvPbaNrPZ8zKysZyI+i6AlpQgywAzl0LAB/E
 +kWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hxN8NgQyJPLhiFmmBvyQRdEWEtV2Q5inuy5tn3SfqVM=;
 b=TP1jHzixXHE6RNsuc8xo/uUofk/kL6bp1V7vKV9MNgxeb9LlhN7BFPFRYgp57VB5au
 cMKSSNWtNP3p2BMC5lV1qH7yT8740XTK9x/AWmfUBsc2sHuIheRMj0jJR38GN3KP8MXl
 vshL/TX8aLuOx7koPo84q+ILS/5aL+0exVVNYBL2Y7GZVlZMYr7iQdO7jmB+RQGQoxIn
 tNZwW/UV5xH4l1r0FKumplapwegvL4rvTTjhx2xX4ZJ7QFsbxrIVJukx3u3CeGxo5zxr
 iXxahrpAQurU76cdH2k7O8j+0a57BVB7OMzskc0yQE4UIUKZ6XXAbZOnYHUKLg9i+sNL
 iUdA==
X-Gm-Message-State: APjAAAUdjVbxErc8d8DyM7LptvuAUb5iidksDwk/rHMALzPzBgaSqvTW
 M6M7fsHXx/yTztu5RNr83a0=
X-Google-Smtp-Source: APXvYqxWZhFkri3wgMk+sETjBnzCD2pFHkdpv8YCz1RGqBaIs1RuAQIPM/zKnFner/3RPlyj6Tsn0Q==
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr11212572wmd.102.1579377312738; 
 Sat, 18 Jan 2020 11:55:12 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id z3sm39877523wrs.94.2020.01.18.11.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 11:55:12 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8192u: simplify rtl819x_evm_dbtopercentage()
Date: Sat, 18 Jan 2020 20:53:04 +0100
Message-Id: <20200118195305.16685-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118195305.16685-1-straube.linux@gmail.com>
References: <20200118195305.16685-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use clamp() to simplify function rtl819x_evm_dbtopercentage() and
reduce object file size.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 00fdcbf64b0b..a40ce0d7a467 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -3954,18 +3954,11 @@ static u8 rtl819x_query_rxpwrpercentage(s8 antpower)
 
 static u8 rtl819x_evm_dbtopercentage(s8 value)
 {
-	s8 ret_val;
+	s8 ret_val = clamp(-value, 0, 33) * 3;
 
-	ret_val = value;
-
-	if (ret_val >= 0)
-		ret_val = 0;
-	if (ret_val <= -33)
-		ret_val = -33;
-	ret_val = 0 - ret_val;
-	ret_val *= 3;
 	if (ret_val == 99)
 		ret_val = 100;
+
 	return ret_val;
 }
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
