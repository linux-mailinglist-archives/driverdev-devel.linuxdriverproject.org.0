Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D1811BB51
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:15:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5E4387F46;
	Wed, 11 Dec 2019 18:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rvUzo++uMwrw; Wed, 11 Dec 2019 18:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9D0C87F19;
	Wed, 11 Dec 2019 18:15:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 441B41BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B63F87EF8
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAW2mYFr6caC for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
 [209.85.161.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4282587EE7
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:20 +0000 (UTC)
Received: by mail-yw1-f68.google.com with SMTP id i126so9295177ywe.7
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KQntSsPAUtEB9BMBZ/3e2rZr1PM5BUjtq7Fl+Mpp/sk=;
 b=WcgDmgDCx9/OIl0tr+ajpacpBg+ZdEf6RxBUdL3zGVoXiIAeemYD5O+4eZRhvncaE2
 zxhbW46/CPFhKnWIPhD05TTG1LFmHhGpjJ9gG2sDa+J/JHrXWE5p3mA2InycUSaahLoC
 RSWC1vMpw5f/tuORD2cZX7NeJ6wslcKaS9lDKpZTPiPq3OfZ/KXKlpdsOcw7vee9Lkk9
 BylvaeiSRJIl7c4Z/Sap/66i5YV+pMbA1sE4dn7kplKTCmMLCtl1f5eJSYAHm0xVn+hc
 FJ4tAJTFrY/GakOWiW6/Jj71HNQ7n21XBBk6WiUFRUDfLtN53+DBWwAc4T08hHexue86
 fsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KQntSsPAUtEB9BMBZ/3e2rZr1PM5BUjtq7Fl+Mpp/sk=;
 b=sUxquVmvA/4FFnCwDc0GDUhbaJ1OMBxFqQ58r2T0kFh5OM1PTAyI7BaO04H69QjJmT
 urqPJuOvE9o79quDn/B/44Fykv26159RJHN1jYHoyIa28HNsKHnghgPp1jFtRT8CkpIu
 S1zfu2rPcY2wsOroBv9ZAauwuKZPsL8rFM610flgGbUcCZbbEXUaetjLN9RfIvgMmeYO
 fHYXPUCXeorGFnBjgA198RFA1dtCfsBId+SwbIjc9OZI8XVnRBW+E8QbkZNL5wBwS4c3
 Sl2I7GuByilwBegXCjpoH5lixqsGIyA/GjN6gygLKnyEfs1MLPkQesTdNhwXOFpqlV59
 1s+Q==
X-Gm-Message-State: APjAAAUsK4cNNRRJVzoaYCOKMzXAWHbQFW3RBh2YDwkopvn1gapJsgV0
 SCjszoRyi+nmkqnBo/Lreks=
X-Google-Smtp-Source: APXvYqxZ0VsotfG3N2Oo/2dmOp/TuggB9nezCADiNrOqp8LLKmL64xXNzUVhzud/EVDeovSBW1WNXA==
X-Received: by 2002:a81:7b44:: with SMTP id w65mr858936ywc.87.1576088119319;
 Wed, 11 Dec 2019 10:15:19 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id i17sm1320402ywg.66.2019.12.11.10.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:19 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 10/23] staging: qlge: Fix CHECK: blank line after
 function/struct/union/enum declarations
Date: Wed, 11 Dec 2019 12:12:39 -0600
Message-Id: <6801479fdbb77db607e1d8a3e2643b4c49aa26ce.1576086080.git.schaferjscott@gmail.com>
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

Fix CHECK: Please use a blank line after function/struct/union/enum
declarations in qlge_ethtool.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index f1654671ce80..794962ae642c 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -178,6 +178,7 @@ static const struct ql_stats ql_gstrings_stats[] = {
 static const char ql_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Loopback test  (offline)"
 };
+
 #define QLGE_TEST_LEN (sizeof(ql_gstrings_test) / ETH_GSTRING_LEN)
 #define QLGE_STATS_LEN ARRAY_SIZE(ql_gstrings_stats)
 #define QLGE_RCV_MAC_ERR_STATS	7
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
