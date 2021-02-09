Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B180031449E
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 01:10:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65E7D86203;
	Tue,  9 Feb 2021 00:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNDYY2QnsUQn; Tue,  9 Feb 2021 00:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7765E8545F;
	Tue,  9 Feb 2021 00:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2E51BF335
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3BCC684820
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 00:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TjEspF9pfUGz for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 00:10:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 00D0D847FE
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 00:10:47 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id g10so19437114wrx.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 16:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GfxWeqZv74fL5wiEGR/9EmBzuid1yAKJzrUNCh2im5s=;
 b=wdNm5bwn+Mz4aaTw0P9QXJYZV5jqAH5GC1/N0tZzY3j3M9zYVyVwnN8vTkzU+Rgz54
 VY9MQODGBsDWl9dSYc6Qef3fox/zlupG9bn8dZ/RtE9yy1hOD3fkd2iu7JRuTLqJKkYD
 K1lApyDQ6dO0oqwSA7lXpKhrOJODJ2TeWp5DS0v9HTZBkRlLhrrY6p3rfCsfKy+SCihN
 TbOc9Hdk0ZonCUMtwZNdSS8FhUX9bom9Xgx7WODEb9/X2BGb4U79f7H4opXunG4T4j8i
 inD7L9Vlh4svNtxM1bBZ5UZvZihihPwob2XjPzGs/Y/FB1ubeW/Z8KWvwsBrYU/vmxWK
 f0ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GfxWeqZv74fL5wiEGR/9EmBzuid1yAKJzrUNCh2im5s=;
 b=YRuo6Uq7drJomgzY6ftKt0Y4ASQayjly6BZOtE0l7zzT+cBymXm8ybvi7QMwAhdq7Q
 J4+zFh5Q+vglGI2EpDY8xtPJlbNyUwY/j1qtqEYX4GZ+8hSQ7y8gbSd1T8PEWAojOosM
 kQ2uxYUJS1ffK1jkIftu1vPfTXDYOF/c8oXa1txf7TK/WqBXwQvSo7U+c5OGKrDDmGHC
 q8S8cDoQhf82J9HSwtLV+S63pGciGEbnaDWDW/GLbm6ab445pBhewLI5roWaVOV4hAvn
 bC68zbpAmW/k1tBVSdGUK57h+Yylo/7r5s3CjfSxNgGiNNV6DbEgxJkg7yNYhjEu4T2G
 2/wg==
X-Gm-Message-State: AOAM530ab0u1ZjFWPDXgv0GFZEZVTL4JLWzGzo/R7m93zkkv6g1/Cd7p
 k6kMt9r9LDyec1KTSJnBZpbKmQ==
X-Google-Smtp-Source: ABdhPJzdiQojncz4FPPUjPXfIRehs9KDVfAuUpSwd7gtZzEheRHpZAkd25li6RyVgcROBCxuk9Wlfg==
X-Received: by 2002:a05:6000:1373:: with SMTP id
 q19mr7714031wrz.371.1612829446505; 
 Mon, 08 Feb 2021 16:10:46 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id q7sm32062914wrx.18.2021.02.08.16.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 16:10:45 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove braces from two single line if
 blocks
Date: Tue,  9 Feb 2021 00:10:43 +0000
Message-Id: <20210209001043.165080-1-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, foxhlchen@gmail.com,
 linux-kernel@vger.kernel.org, luk@wybcz.pl, eafanasova@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces from both occurences of single line if blocks in
include/rtw_mlme.h, fixes two checkpatch warnings, thus clearing
this type of warning from this file.

Also swaps two if statement comparisons around, so the variable is on
the left in each one. This fixes two warnings also.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/rtw_mlme.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index ea0dd156051e..d8655cb619a1 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -524,18 +524,16 @@ static inline void set_fwstate(struct mlme_priv *pmlmepriv, sint state)
 {
 	pmlmepriv->fw_state |= state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY == state) {
+	if (state == _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess = true;
-	}
 }
 
 static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, sint state)
 {
 	pmlmepriv->fw_state &= ~state;
 	/* FOR HW integration */
-	if (_FW_UNDER_SURVEY == state) {
+	if (state == _FW_UNDER_SURVEY)
 		pmlmepriv->bScanInProcess = false;
-	}
 }
 
 /*
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
