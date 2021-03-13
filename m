Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECE0339F8A
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:36:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CE26400CE;
	Sat, 13 Mar 2021 17:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsWaBIjzSh8i; Sat, 13 Mar 2021 17:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EABBF400C1;
	Sat, 13 Mar 2021 17:36:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC8741BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A799F83C0C
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rV_FVF6NrA5e for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:36:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B1DAB838D7
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:36:05 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id v2so37434184lft.9
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jbHX4q+lyxJ1H0NijY/kLULzPMnuDBo8oiEXjMEKULk=;
 b=VCkguCP/rtPqZsn6EUUyp3SWI+9zxJfYhFbnPCMHMpbELdXPyNyJn+1GMbliXC3EW7
 hWrbYE09tuEGjWbCkQUtkIDpflrcyUlEjCEIpnNAd2i1FysFczKRSGx4rVCeaTnWCgDK
 LNwXTpBaaoPfGcWM566kiXXzWcFAt0itsC//u71HqbRO52iLv+bq8WaO+0T4I4+EFo/o
 osv6gBlubiycu4fb8q8GDzr0K2mgyqzug9eL0yI4rtcGVDZvVxdJ2Ags7WYMsNjGj5ig
 Ko1sFHs00Z9e9dVgsU6HZTM57g0iFLH1rqRBJOdgoiAgLabH5OYezrcWGrnwvC69J52K
 Gt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jbHX4q+lyxJ1H0NijY/kLULzPMnuDBo8oiEXjMEKULk=;
 b=DzpTU9jBEEuy6++jE9sNsQsFfTYGqeUMQvx4N5q3wfVaQP13ft78Ng15nTbjcwA+zv
 bGu/Hu4+nk6umcoJH585XQZxLHyj4TaA7INHEjORNxUabGPFIjb320lUI9HXf24ULNle
 58C74VVm4Mz9NfQUlAW8KKrDG17vtmm+FTTZd2Rqg9isX7tSydKifSEqUp6plcLmHJCC
 Wc8+xWbHWA/sShweSxPieDMwuYCknlXZqkQF2ZVccp7YPpH/L2ipMD7+J6nwGERP/tpk
 1U/EnvNm2tLztrsp6rUC72+ZKQR6DfjIjIJ+oIQcpyeCcqVK8TDTL1HX7+39iD6FAlB1
 DOYA==
X-Gm-Message-State: AOAM530+C6qRv4iYx1u/Bq+FdscMz2IUVpSXCfEqeQgMWSWTsButzBkN
 6YJqpeIHxACpeSPuERzBvrLeyO++T6M=
X-Google-Smtp-Source: ABdhPJzMh/R4L2FDZPG8LhEv3UsfY92VB9s3W926xxkgcaNiRGP1pZa9J7NJ8IaisvH7/uVKSMie5g==
X-Received: by 2002:a05:6512:6c4:: with SMTP id
 u4mr3015534lff.289.1615656963376; 
 Sat, 13 Mar 2021 09:36:03 -0800 (PST)
Received: from localhost.localdomain
 (2a02-a456-df9f-1-f9b2-7163-4c2e-174.fixed6.kpn.net.
 [2a02:a456:df9f:1:f9b2:7163:4c2e:174])
 by smtp.gmail.com with ESMTPSA id g9sm2085065lfc.258.2021.03.13.09.36.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Mar 2021 09:36:02 -0800 (PST)
From: Gabriele Modena <gabriele.modena@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 1/3] staging: wimax: fix block comment style check in
 op-rfkill.c
Date: Sat, 13 Mar 2021 18:35:30 +0100
Message-Id: <752f22ec19c8e5bc249589ca4c5edef770396aff.1615652628.git.gabriele.modena@gmail.com>
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

WARNING: Block comments use a trailing */ on a separate line
+		 * considering the radios are all off. */

Signed-off-by: Gabriele Modena <gabriele.modena@gmail.com>
---
 drivers/staging/wimax/op-rfkill.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/op-rfkill.c b/drivers/staging/wimax/op-rfkill.c
index 78b294481a59..ad9d1c682ca2 100644
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
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
