Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 348DD29092
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 07:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E266586B26;
	Fri, 24 May 2019 05:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksgtZS_8hPGS; Fri, 24 May 2019 05:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A87086B23;
	Fri, 24 May 2019 05:53:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E08C1BF3BE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13FAB88072
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 05:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAZ5wn6H64L5 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 05:53:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 856D38805D
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 05:53:03 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u17so4629884pfn.7
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 22:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+4//n5ozpFc0YQBRlOwfVoh3tI6iGzki/F622gvN9Q=;
 b=OoRLoquIDETzGrPfniuEHRUVrwnvvyLKriTpztzO/2ae84pkh06qfBB1dt5GyS+R5B
 p2YQb5nsvqHpkNGtsOtN8zeXb5IfB0/fC4NOk1V55hXPa4aNANE7Li/Nw3bahGnEeJ3d
 D1IrNwHjfXZ6k5ZoyYwhREnTafe6A2aXOwEyyS0CBfsbqdcyWpwdZOWU9AKEdp3cxNLG
 OsAL1C6EqbSAn62VfMmeNm1fWywPuE2x72OdwD1pF8QCggnhmqarT/HPLFU/VPP6i/Bt
 P0PJmCsYqKX3DlkjssJqHbwZq0+xhk3XkwBzJswj4oUpNEmVczj+l61/jFSSuPB7/Guq
 BYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9+4//n5ozpFc0YQBRlOwfVoh3tI6iGzki/F622gvN9Q=;
 b=s9WUa1QPHd1hKyuBAmHzICnOu9T8c6Y2Uk0cD9UcdpDB2H/F4VbMcuYMRhXH3Uv6bv
 wkH11SOJPiOQDpXcxDDOh8g8AnRHJYsiFEa73FN2YM9tQyFH6iH9rHK8Sg3W9lVP0MUa
 jAB4h9Va8tux2veO+IzxDo9qvozoLVIddQEW/0tA/yONqoj9NdsRx8KO/NBEg9xrMXC4
 BQwDSyjpvBEguXHXgGyS6uk80SsfiDsm1Nc0e9/82QLUDqPqVP3beq7U/5F2TjslLa6v
 UDwYMtfSmVSHMpjhOdFDjltaUXNC4ZAKaDJdG4L/kj8g/BDt1bpgIm1LBbR4xGXWbS86
 +MkQ==
X-Gm-Message-State: APjAAAVuQQoYYqkg0xPkSXLeQp0V1L5fYUlVO4tVezjKIxxp018BBliO
 VAUH9weY1uRYix4K+n+HAJ4=
X-Google-Smtp-Source: APXvYqyUzwLCAYS1GKGkc1+R9nYGizTKYhIWvIweZOqx3t7ims/KVtLGmUYXlhkkWcdJJWA7p81mlg==
X-Received: by 2002:a62:e803:: with SMTP id c3mr63391468pfi.58.1558677183225; 
 Thu, 23 May 2019 22:53:03 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id o2sm1654771pgq.50.2019.05.23.22.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 22:53:02 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 herbert@gondor.apana.org.au, qader.aymen@gmail.com,
 sergio.paracuellos@gmail.com, bhanusreemahesh@gmail.com,
 mattmccoy110@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: ks7010: Remove initialisation
Date: Fri, 24 May 2019 11:22:38 +0530
Message-Id: <20190524055238.3581-1-nishkadg.linux@gmail.com>
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

The initial value of return variable ret is never used, so it can be
removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index e089366ed02a..3775fd4b89ae 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1067,7 +1067,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *skb)
 	unsigned int length = 0;
 	struct hostif_data_request *pp;
 	unsigned char *p;
-	int result = 0;
+	int result;
 	unsigned short eth_proto;
 	struct ether_hdr *eth_hdr;
 	unsigned short keyinfo = 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
