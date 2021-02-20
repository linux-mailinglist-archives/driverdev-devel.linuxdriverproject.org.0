Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE26732056F
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:51:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 663846F616
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 12:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ln7ze1dLvjCO for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 12:51:16 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id AD1B56F55F; Sat, 20 Feb 2021 12:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 107D36F4C1;
	Sat, 20 Feb 2021 12:51:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0DA91BF95A
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD84B873DC
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5tYqdoSkJqS for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:50:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2012B873D2
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:50:28 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id t2so5858628pjq.2
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 04:50:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=P7iI9/EJrbgUCd/aOy3wmx9rsH4xpDQgbuaNBtBhFZo=;
 b=kWtojlr1SBNO5MTedHP3p9FE+a4nDnmRVDXP2fmySdByieFHCJ/nmdi+IFs8aJSDA1
 jXcwxb6hgQNx6+EoMqobtAvQZRoBiZh42YLEtpD29M0u2xL5M/7smULHoXMw4ydgxlDc
 EIfh46nRj7hb2AhE8K4gTp6EkeI+Sj1M2tGrssN9f11zsOkyt8f5PKSmLvdu+noVwdz+
 NlcmQzPsXYQooLRr+c25qJU47KSdKAZ9NvYIGSciS7nOuvuBtYk2aekdZB6ejR7N2E5e
 G/a5BSWDdrGgguwhqX0OXJTkQ/6+97DyvgqyOuf3lO9KrJsCUb9/8h33aqGiPFyBidpA
 GUTQ==
X-Gm-Message-State: AOAM530+NyqJxFAfh++u66veSF27hg7xU6MiJ9geEpp3PoH/SfceFU41
 /RVOKueR54xcfvOrC4zEjt8VTP/Bo3ebVw==
X-Google-Smtp-Source: ABdhPJxRWBdRrr3yKro3940h7u3PwT/qpbTupiSCdfC6zm4CKg2jXJR9Wi0+swVHEGynInqgKNEbAw==
X-Received: by 2002:a17:90a:5d8a:: with SMTP id
 t10mr13575016pji.144.1613825427737; 
 Sat, 20 Feb 2021 04:50:27 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.84])
 by smtp.gmail.com with ESMTPSA id m16sm13248646pfd.203.2021.02.20.04.50.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 04:50:27 -0800 (PST)
Date: Sat, 20 Feb 2021 18:20:22 +0530
From: karthek <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] staging: wimax/i2400m: fix byte-order type issue
Message-ID: <YDEFjrFvEEQ3XEef@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix sparse type warning by converting le32 types to
host byte-order types before comparison

Signed-off-by: karthek <mail@karthek.com>
---
 drivers/staging/wimax/i2400m/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 92ea5c101..f09de1810 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -511,7 +511,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
 			opcode, i2400m_brh_get_response(ack));
 		goto error_ack_failed;
 	}
-	if (ack_size < ack->data_size + sizeof(*ack)) {
+	if (ack_size < le32_to_cpu(ack->data_size) + sizeof(*ack)) {
 		dev_err(dev, "boot-mode cmd %d: SW BUG "
 			"driver provided only %zu bytes for %zu bytes "
 			"of data\n", opcode, ack_size,
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
