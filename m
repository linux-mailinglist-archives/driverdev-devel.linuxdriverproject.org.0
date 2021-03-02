Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34A32A03F
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 14:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C25094EE40;
	Tue,  2 Mar 2021 13:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAveMun1DhS3; Tue,  2 Mar 2021 13:13:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA5014EDED;
	Tue,  2 Mar 2021 13:13:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E212D1BF3F6
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 13:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0ABD83B43
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 13:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=globaledgesoft-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-oygxMu-Vpa for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 13:13:00 +0000 (UTC)
X-Greylist: delayed 00:24:37 by SQLgrey-1.8.0
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3F2083B3C
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 13:13:00 +0000 (UTC)
Received: by mail-vs1-f47.google.com with SMTP id b6so10543499vsf.8
 for <devel@driverdev.osuosl.org>; Tue, 02 Mar 2021 05:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globaledgesoft-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=q3fqnOmjKKGxAsZ9eTlp9n/cQ2kQPR+kLhRz3gEVi4w=;
 b=oEeyazcYyX2Z8CDWd5O8mT0Bv733tjlJLHw6wVpQHMHvC2goyWxKVhyvOd5VfPTz15
 jbdUXmAGTVuucyMussGl8btp7fIdgL+gU6/Eh2fXBzrpTxdfted9qNJ87tx4CpQTyzIQ
 bmuOLj3SnZvL14c4iXrVRwm8oq9s8WkkDVBlLus0csm0ktZfYGHA+qHWFDq1NRLg9cIz
 Fcd+oRjtkvi/vXXcX+/ftuYsD3ZBmtRGikx1MQWJ/9/OQ0dowafOiDcpjhGUwyrWzBH0
 pvZI1CSmBWPaI5/OxI3r8tCsYdGVckLFfl0VZtkVnc9jpDLjOSnN83mB1R2BijyxfgHH
 fNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=q3fqnOmjKKGxAsZ9eTlp9n/cQ2kQPR+kLhRz3gEVi4w=;
 b=M5TDRR65b3BUvAzKoeeUBnyuxhLnKxaNizSrFYld1gWdsJ9eDzX35kdXv3TUy84JsB
 4HiFQsTcblw4p/WQgqRXZZ5peJDd36EXxtirGJcfAOR1a3Ow3vhswOWWlm9OieDYpy/5
 05cQ+Ii/+W9VuN+XFcwsAkV2oWuCy4FlV2SugEGBeApdLelhop+2NqbiGLp8SFon0rrB
 6aL4ACcuXoESSuhzki4DSf61GlwJngqwFlcFmCjE8qzjyC66DNMVSESboET8s6O+HMuS
 ACvabK2GVntsYVpJtuUN+Cy/EhI/TSvxKgTFCI9pPTcmmAZr46dpYHCIc0Hhxk24YzTX
 X43Q==
X-Gm-Message-State: AOAM533wNkyHh3DqcDa+NgrpiyI0cqR8Wu9fuQ3SId4R7ejWV1iXwZ0a
 MXLQmgU/Gr67SALfdoQt2YZedJU+Q+nxjPec9HXhz60g/YK84wBIHOkk4tK+lDohUbCV5IAvmhy
 8N0ujnViXKKrSNJOJMeBTtcgm3cs=
X-Google-Smtp-Source: ABdhPJz32WAkoXFUsAhrAYa3rsOUeRbJvEqu7NTuNIeGTdIhW4Wflm2Gn4ay+bxXlE6Y0kuSkv30xw==
X-Received: by 2002:a17:902:6b45:b029:e0:7a3:a8c with SMTP id
 g5-20020a1709026b45b02900e007a30a8cmr3589739plt.1.1614688979009; 
 Tue, 02 Mar 2021 04:42:59 -0800 (PST)
Received: from vijayakumar ([49.204.93.90])
 by smtp.gmail.com with ESMTPSA id v3sm5941124pfe.147.2021.03.02.04.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 04:42:58 -0800 (PST)
Date: Tue, 2 Mar 2021 18:12:54 +0530
From: Vikas Kumar Sharma <ks.vikas@globaledgesoft.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] This patch fixes the check-patch errors
Message-ID: <20210302124254.GA2349431@vijayakumar>
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

ERROR: Macros with complex values should be enclosed in parentheses.

Signed-off-by: Vikas Kumar Sharma <ks.vikas@globaledgesoft.com>
---
 drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index 39138191a556..c62a494ed6bb 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
 #define TX_RATE_FIXED		5

 /* 11b rate */
-#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
-#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
+#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
+#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */

 /* 11g rate */
-#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
-#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
-#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
-#define TX_RATE_9M	(u8)(90 / 5)
-#define TX_RATE_18M	(u8)(180 / 5)
-#define TX_RATE_36M	(u8)(360 / 5)
-#define TX_RATE_48M	(u8)(480 / 5)
-#define TX_RATE_54M	(u8)(540 / 5)
+#define TX_RATE_6M	((u8)(60 / 5))	/* 11g basic rate */
+#define TX_RATE_12M	((u8)(120 / 5))	/* 11g basic rate */
+#define TX_RATE_24M	((u8)(240 / 5))	/* 11g basic rate */
+#define TX_RATE_9M	((u8)(90 / 5))
+#define TX_RATE_18M	((u8)(180 / 5))
+#define TX_RATE_36M	((u8)(360 / 5))
+#define TX_RATE_48M	((u8)(480 / 5))
+#define TX_RATE_54M	((u8)(540 / 5))

 static inline bool is_11b_rate(u8 rate)
 {
--
2.25.1


-- 
Disclaimer:This message is intended only for the designated recipient(s). 
It may contain confidential or proprietary information and may be subject 
to other confidentiality protections. If you are not a designated 
recipient, you may not review, copy or distribute this message. Please 
notify the sender by e-mail and delete this message. GlobalEdge does not 
accept any liability for virus infected mails.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
