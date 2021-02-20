Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50256320593
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 14:47:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1C5E86C4F;
	Sat, 20 Feb 2021 13:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRP0c3TARh_c; Sat, 20 Feb 2021 13:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20CC086BE1;
	Sat, 20 Feb 2021 13:47:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D8091BF2AF
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 13:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 19DA18712E
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 13:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBPQjuPS94d1 for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 13:46:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A73598712B
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 13:46:59 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id a24so4940585plm.11
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 05:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KuncKa8C7Gvbsww59N/7E5WQogHVX0cQD50aQgpuM4s=;
 b=lhC00UCfipfGQhYiAb6ePsNuvNobif3fZc3QnfdM6cNy3RCSaGXxHVHyp90EsTcxqy
 APiApES0eh1q12T4f8bp6A3H20uMM5q96nsBBv0uv+m964uJh/0ZZx/vNOsg3Jps46IR
 Jml1zrjd8a1rMgWskPRaYgkaOJQ6ATBQ61AtF9n6pv/p38WUgCBhHDlLjlA84V0HOCEK
 ie0oItrFq5U+NgKaaWpj5JeJHWc3NjImy16qD0KmPCLPZJn+Lm++r5zNg38x4ofb3tL2
 ZlK+nkmtY1oE/InEz/uaQw3w6+/LqYbhHq+HfmlagprKzfInAUHZ304vFkr35/GldPma
 65dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KuncKa8C7Gvbsww59N/7E5WQogHVX0cQD50aQgpuM4s=;
 b=K67qulg6l/697WUvbjllbvEQUzPwFfoQbDm1y+Q7/R7GDo04J3UwfNyrPaqkB064HB
 fOqsrTwvpNhNDew+RQ4AEidN3kZQ6jDgknwJILP5dJCo/IpCQiQrbN2aWIRBJLoxuSCm
 GcxdMEvw4JSPzGSk64vTzuNoAm+iTPTklKG3P2z+CHLXOMBBQ1YPQFES8T+S4PTJ4/8B
 xYM3GWbchxaE5ETOu4IUFZtbe6LHVzz0IuRtEtMJunfClBvHubMDWlwJJkMN4n4PBf+U
 UlVz03nTh3z06jycnlSHsp+oqIitl6QylBIqYoMOlPc0KMUm5TdfYcuJfrgnZ0iCQisZ
 W7ww==
X-Gm-Message-State: AOAM533rNFKpdCZG3TVDB7G/G+3QytJ5obdroMtH7q1I6n9FROPwUPeI
 loqcJghiqavi+AlrbovPx+Q=
X-Google-Smtp-Source: ABdhPJzTKUmKdoiUvNJ25OfQwFhi1G7FDq8tDvEdBcvzCfdwDBrjef+hJzlod9NiU7ca4ads0kaq0A==
X-Received: by 2002:a17:90a:12c5:: with SMTP id
 b5mr14260985pjg.89.1613828819059; 
 Sat, 20 Feb 2021 05:46:59 -0800 (PST)
Received: from localhost ([103.106.200.56])
 by smtp.gmail.com with ESMTPSA id d19sm7216921pjz.0.2021.02.20.05.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 05:46:58 -0800 (PST)
From: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
To: gregkh@linuxfoundation.org,
	sfr@canb.auug.org.au
Subject: [PATCH v2] staging: wimax: i2400m: add space before open parenthesis
Date: Sat, 20 Feb 2021 05:46:52 -0800
Message-Id: <20210220134652.16127-1-sssraj.sssraj@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
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
 Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

netdev.c

fixing style ERROR: space required before the open parenthesis '('

Signed-off-by: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
---
Changes in v2:
	- Removed filename from commit message.

 drivers/staging/wimax/i2400m/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index cd06eaf75e8b..5b53e59084c8 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -523,7 +523,7 @@ void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
 
 	d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
 		  i2400m, skb, skb->len, cs);
-	switch(cs) {
+	switch (cs) {
 	case I2400M_CS_IPV4_0:
 	case I2400M_CS_IPV4:
 		i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
