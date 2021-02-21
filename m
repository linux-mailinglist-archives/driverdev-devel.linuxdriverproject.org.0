Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649EB320ADF
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:04:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19C9B870DA;
	Sun, 21 Feb 2021 14:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2yN8PzBxlfYl; Sun, 21 Feb 2021 14:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3907A870AA;
	Sun, 21 Feb 2021 14:04:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB0C11BF2F9
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9551160715
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id te62v4u69Jtv for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 14:04:43 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 2A2AB6F497; Sun, 21 Feb 2021 14:04:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03FAD6F4A0
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 14:04:41 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id u11so5966968plg.13
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 06:04:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FJwLUK5Y+uvXnv0u3F+27KKfrXN2CvtQs9gB7otpFhU=;
 b=haShfN6aicwHTtMMRXFAhgjUrj1KHs+TEJO+u0d2tQ9jVjwIbIoTiaSSxZ5kyfNYBc
 jddF3N2Px+VsNcPjV/nGMjZjPSrrlXlyHKwt3xv/LMzChPWv0Klfvf3JKEoy5zB4q4uE
 oqn2qM8SlD6v9kUrFFjel3P3wMJJ4J4U+20kGT2TTHTc7cvlIhii3T12sLEXphqOX1N6
 xLRG8LIoBISSjNaqnQvXKYSbH+Kl8wjYDeCoM24VM23Rj4S3SJ+t45GfE+Qvm3huh2lU
 aQ+FkYy1VopFxGTVvg2QWOgD08qBQHF0J3iK1vH+kAlmGCmOi9vS11OUruvQJjNobfw7
 Lx/w==
X-Gm-Message-State: AOAM530/ICCGswVHD870s+YHOhYi2qT17oKMGr2waRSA4QDfbPcK2BYp
 I/CdtT9xn+NnnHIq9R/3VWDze/jECP0=
X-Google-Smtp-Source: ABdhPJzM4qUUFeS6ZUr+JAN81oTo6QqGklFnV8wcN2n0WY95XUQcinTlFV5uAAmr3dDD7JS5aAoyVA==
X-Received: by 2002:a17:902:e551:b029:de:8dba:84a3 with SMTP id
 n17-20020a170902e551b02900de8dba84a3mr17649066plf.8.1613916281512; 
 Sun, 21 Feb 2021 06:04:41 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.12])
 by smtp.gmail.com with ESMTPSA id j3sm14770700pgk.24.2021.02.21.06.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 06:04:41 -0800 (PST)
Date: Sun, 21 Feb 2021 19:34:37 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging: wimax/i2400m: convert __le32 type to host
 byte-order
Message-ID: <87f93e091f736cb422f1d557fa5a2ac752f057a8.1613915981.git.mail@karthek.com>
References: <cover.1613915981.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613915981.git.mail@karthek.com>
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

fix sparse type warning by converting __le32 types
to host byte-order types before comparison

Signed-off-by: karthik alapati <mail@karthek.com>
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
