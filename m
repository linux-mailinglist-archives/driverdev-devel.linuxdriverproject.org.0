Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D98F27A1DD
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 18:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CCC9871A5;
	Sun, 27 Sep 2020 16:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KqCJfgqoriVA; Sun, 27 Sep 2020 16:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 971D38712F;
	Sun, 27 Sep 2020 16:35:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8E11BF404
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 16:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 946FF8610B
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 16:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0RTnNh8FrBm for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 16:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D62FD860ED
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 16:35:30 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g29so6189670pgl.2
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 09:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0C5Gjq9HDGphAUKTprSwLydq67owdjsJTm+aKkh5laY=;
 b=KjaYB/5G2q2kbCuTFvEezBi7+X8RrHgnqaOl7utkH819j1wnF47zRahvsmttOVk4k+
 PuqOqhWZBLffVp7cN0wDC8aj0EZCPtLzBc56N7B0V1ggr8637yuD0d3fz9eMwz3ijsGB
 RkrVTGUNeScMSz0FbaZOY8PjCRcYnVvtTOOi1oNpAJd5fm5SmN5dQXmAHmzFYnEa8P8W
 n53pxgi5XHRvrFR8IU1B6lQbUeC9ZrJpb+8oFx9F7ALq5p80sGCrpd/xvLpSK8il7NQ+
 BSj0yfjhCCn6C4+fZkq2tCOlqutkjqD2h3PSw8N/Zy0JuOE0uaQnXEzbZnR23mB84Mzi
 iK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0C5Gjq9HDGphAUKTprSwLydq67owdjsJTm+aKkh5laY=;
 b=JROhE17SeoQhghST9zyxHUIDK2C/lfgTwb8XtXzHR8uIyZs70OFjdkElkZLMLeEm5n
 cAyFsym5g8PCjRGALA8uqASZ+OVq9RkO2tXhVeJMKM8Fbd22uK+8SHMKMkpIXWe26vSw
 ox4yTaAii9MTAQOxxLHU0Ya4p2HIfoUQOVO65UnIiQFDLFHUxHZkqgjxoBRhwjplXPKf
 y4/SugDS1XgaipYXQVYK9+q6llQCvg0UR/DYUkm5wyjOXnFS94kqCnLQDFfJkoDEsFBx
 9yKHohC9vaCWkm7PMblR4o96kcZq+Zbar6TjYwI0HJisdWc6d+LJzaazc4g1xttFOvgA
 yQmQ==
X-Gm-Message-State: AOAM531j4v6Nfg2VNlmoq0yQajO8S+T3R2VC/xE6Oa4UBCWmubj16ncN
 INnR65Au5vbZCll/AYI6bXQ=
X-Google-Smtp-Source: ABdhPJxi17BidG3zA7awFrVtAaRHMYW0KLI7H2kwkVNIrJNMAkLZF4LndDjyq4SfILAq4d4+5P7YTQ==
X-Received: by 2002:a63:e94a:: with SMTP id q10mr6233305pgj.189.1601224530512; 
 Sun, 27 Sep 2020 09:35:30 -0700 (PDT)
Received: from localhost.localdomain (cpe-70-95-82-187.san.res.rr.com.
 [70.95.82.187])
 by smtp.gmail.com with ESMTPSA id u15sm4635313pjx.50.2020.09.27.09.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 09:35:29 -0700 (PDT)
From: Ryan Kosta <ryanpkosta@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: nvec: nvec: fix double next comment
Date: Sun, 27 Sep 2020 09:35:04 -0700
Message-Id: <20200927163504.7546-1-ryanpkosta@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Ryan Kosta <ryanpkosta@gmail.com>,
 linux-kernel@vger.kernel.org, marvin24@gmx.de, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Changes since v1:
 * Made commit message more clear
 * Added description
Note: previous patch named
 "[PATCH] fix double next comment in drivers/staging/nvec/nvec.c"
>8------------------------------------------------------8<
Fixes a comment typo.

Signed-off-by: Ryan Kosta <ryanpkosta@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 360ec040774..a80996b2f5c 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -289,7 +289,7 @@ EXPORT_SYMBOL(nvec_write_async);
  * interrupt handlers.
  *
  * Returns: 0 on success, a negative error code on failure.
- * The response message is returned in @msg. Shall be freed with
+ * The response message is returned in @msg. Shall be freed
  * with nvec_msg_free() once no longer used.
  *
  */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
