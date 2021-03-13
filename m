Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FB0339F8C
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:36:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE7E4400DD;
	Sat, 13 Mar 2021 17:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jelCS9_I4u3T; Sat, 13 Mar 2021 17:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 450D3400BC;
	Sat, 13 Mar 2021 17:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D38A1BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CA34838D7
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbiXeo_12-ZN for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:36:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B5F2838DB
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:36:07 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id p21so50403632lfu.11
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3g1RuIvADe2swcSz7np2JwGZs5MMGuUntc9U8vPMrPc=;
 b=JdhdPHnXZBA6bpSdWicWQnecgzXy7bH8C4dDHcxA3/YPFMmaApFq3BFjBh98ahclhB
 8q5ey5/8gT4rLFNkOcvTzn9M+Tds7Ssq9DDMH6W51l9UOxnsTvDnhE2lIDxjRM3Ng81w
 oBqzxBuWX7ggwuPjDpyBPAbe19gmi0rzmQGhetv8vvSw08jTV74MPx+BqDwwpt0RvgZ/
 X0i3tc/3aWislig2NsB80U+FhIcKdWD6XYJHII+qvZDLp2Pn86rAU732hwghh4UG6QBe
 mXEkerxXhUsVedyZ+tFLpCFLiDnbQ6bL7V97jyiPTOn9qWN0LoOK1Uvcl70Z23JsICOw
 jj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3g1RuIvADe2swcSz7np2JwGZs5MMGuUntc9U8vPMrPc=;
 b=G1YYqvmWMZUybBk3V48iruQ7Bwxmm9Coraf674Pzw5TiyJ4yUmG/Oer2S6/Zt8/Y/P
 xdwyIWYpdIJ9e1dWa2LUHdoQialyiYO5qEA1tgCDnXU8lYnr2CW8qaKUULkMRuxdUUf3
 eeQMikbXBogQ/PMO8zjeJa7e0qd7Xlq5SPDoDD/A85UkxDoYPlPt9LnPTagE3xitFIYj
 Azu8gQxBY13bieGKaCedf7qQY16YemMSu2NbM/ouDjaJCBZvC6hTgBgrMPY/ZZgmQMkt
 cqzFRXceWY44SBOhPCu7/91J6xuck/mZEK8K72rB9iLdcW/auaHInohFBeMpVsvHpj2q
 QcYg==
X-Gm-Message-State: AOAM5328kPB2bMBLWwcU6E+vFhMForE+3xdyvTUtDSkXMkrXFyPU0nkA
 bbQJZUMmgOXIsximMrC5G+/DZgyqD8w=
X-Google-Smtp-Source: ABdhPJw4cLh6jPZCF7ZMwKeNYYsYKSuVFinXypQ340OfP6kK7ArPYwKMiux/+vyC7HoY3QRZI975+g==
X-Received: by 2002:a05:6512:20cc:: with SMTP id
 u12mr2190429lfr.146.1615656965198; 
 Sat, 13 Mar 2021 09:36:05 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-f9b2-7163-4c2e-174.fixed6.kpn.net.
 [2a02:a456:df9f:1:f9b2:7163:4c2e:174])
 by smtp.gmail.com with ESMTPSA id g9sm2085065lfc.258.2021.03.13.09.36.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Mar 2021 09:36:04 -0800 (PST)
From: Gabriele Modena <gabriele.modena@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 3/3] staging: wimax: fix quoted string split across lines
 in op-rfkill.c
Date: Sat, 13 Mar 2021 18:35:32 +0100
Message-Id: <590fcf33a97025019e5c3b3a915fec9bbe24aa4c.1615652628.git.gabriele.modena@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1615652628.git.gabriele.modena@gmail.com>
References: <cover.1615652628.git.gabriele.modena@gmail.com>
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
Cc: Gabriele Modena <gabriele.modena@gmail.com>, trivial@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

WARNING: quoted string split across lines
+		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
+			"attribute\n");

Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
---
 drivers/staging/wimax/op-rfkill.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
index 50146f7b089e..52612ed09183 100644
--- a/drivers/staging/wimax/op-rfkill.c
+++ b/drivers/staging/wimax/op-rfkill.c
@@ -417,8 +417,7 @@ int wimax_gnl_doit_rfkill(struct sk_buff *skb, struct genl_info *info)
 	dev = wimax_dev_to_dev(wimax_dev);
 	result = -EINVAL;
 	if (info->attrs[WIMAX_GNL_RFKILL_STATE] == NULL) {
-		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
-			"attribute\n");
+		dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE attribute\n");
 		goto error_no_pid;
 	}
 	new_state = nla_get_u32(info->attrs[WIMAX_GNL_RFKILL_STATE]);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
