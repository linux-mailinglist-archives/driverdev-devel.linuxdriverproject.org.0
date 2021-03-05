Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE932F44C
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 20:57:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 862524ECD2;
	Fri,  5 Mar 2021 19:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QO5TNCBBh6ym; Fri,  5 Mar 2021 19:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A202D4ECCC;
	Fri,  5 Mar 2021 19:57:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8291BF34C
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 19:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A2BA84242
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 19:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCo3OHAcYKEh for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 19:56:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5200B84246
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 19:56:49 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id p8so5767435ejb.10
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 11:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sXrdYIWplhSU1L66G935y/Ia5kuORd0TSG5LWcx4f1Q=;
 b=b0QQNWJYCdjeHnoRgQJ+MFb0cEcfj4NdJZCsNkU1XrUd9BqhrJgoqBPStbASiZ2lXw
 yGIDqKb3KGX7wrluEa7CMZE9JHOhCylxFHH/xJtnWyIj9Rl6kMBoSMktfAEUGZPT+y8A
 3VCgRDMiVK0rrSfK/Jnuk7AiQZbBUGwAd13wDktl2n11c/oz19eV77sWTJheYLuEbmO/
 7oEXTbqOt3+fk5rN0Y1k6GNUFM3PiHJwEkCYgGP9fylumVAKV7gqw4XAeEeg4o/xk4+3
 ghjqrEqPDpfiVBhVWJYdNwtUsQFvAhSbHAbg1h6vXVuO1kLCVVPQSKjNNDHHsfymgpDk
 J6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sXrdYIWplhSU1L66G935y/Ia5kuORd0TSG5LWcx4f1Q=;
 b=lYQgZYaOW3QnRdbi2enYR6hO1qj0zckUklOSS10tZObET0NALPpmCEkqSjIoxZ+e+Y
 gNxDbnwR6qcasvdE92d1pKEaAMwJDS26Ak/dovF+720kTiy1dnMWnCetVzHpcmYFuVH5
 8KDgBLJnW00/RMRtg2+wVLDwFC21V3r+68JtTy4r/D/fDRNgGb49hxODelwFqTN95RTm
 ax/Zv5n8Y133LNymvTuRh8iMr4Dsk99TK/XHYO03mAGUVF1Ht/zZ+uPjjhAHn/SNkm/m
 XN23wj4oG/1O/fW5+8zBT/L4SDO8X76ZZe05VeyizwTo53h2MzW5FZHFynzYP2vzTAmD
 VsHg==
X-Gm-Message-State: AOAM532L8gQO3CZYf62Vi8ajc//lkRvPysCaFzime/Qi5XCRSvEdN15s
 yhhsu9fSCUFE935qIJ/TohC4Ne1e+NQ=
X-Google-Smtp-Source: ABdhPJwtZg7G7W76l7Tn/oY/7rzJbUYEvk7PldgXh0rGdAva3ocRwaHEMvkJSutpiMOLO71gr2x2Bg==
X-Received: by 2002:a17:907:3e06:: with SMTP id
 hp6mr3979017ejc.254.1614974207605; 
 Fri, 05 Mar 2021 11:56:47 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-95c-19d7-6e55-65bf.fixed6.kpn.net.
 [2a02:a456:df9f:1:95c:19d7:6e55:65bf])
 by smtp.gmail.com with ESMTPSA id a26sm2408569edm.15.2021.03.05.11.56.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Mar 2021 11:56:46 -0800 (PST)
From: gabriele.modena@gmail.com
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: wimax: fix style check warnings
Date: Fri,  5 Mar 2021 20:55:09 +0100
Message-Id: <20210305195508.3543-1-gabriele.modena@gmail.com>
X-Mailer: git-send-email 2.29.2
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

From: Gabriele Modena <gabriele.modena@gmail.com>

Fix style warnings reported by checkpatch.pl on op-rfkill.c
by moving */ on a separate line in a block comment,
adding a missing blank line after declarations,
and reformatting a quoted string split across lines.

Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
---
 drivers/staging/wimax/op-rfkill.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
index 78b294481a59..52612ed09183 100644
--- a/drivers/staging/wimax/op-rfkill.c
+++ b/drivers/staging/wimax/op-rfkill.c
@@ -294,7 +294,8 @@ int wimax_rfkill(struct wimax_dev *wimax_dev, enum wimax_rf_state state)
 		/* While initializing, < 1.4.3 wimax-tools versions use
 		 * this call to check if the device is a valid WiMAX
 		 * device; so we allow it to proceed always,
-		 * considering the radios are all off. */
+		 * considering the radios are all off.
+		 */
 		if (result == -ENOMEDIUM && state == WIMAX_RF_QUERY)
 			result = WIMAX_RF_OFF << 1 | WIMAX_RF_OFF;
 		goto error_not_ready;
@@ -378,6 +379,7 @@ int wimax_rfkill_add(struct wimax_dev *wimax_dev)
 void wimax_rfkill_rm(struct wimax_dev *wimax_dev)
 {
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
+
 	d_fnstart(3, dev, "(wimax_dev %p)\n", wimax_dev);
 	rfkill_unregister(wimax_dev->rfkill);
 	rfkill_destroy(wimax_dev->rfkill);
@@ -415,8 +417,7 @@ int wimax_gnl_doit_rfkill(struct sk_buff *skb, struct genl_info *info)
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
