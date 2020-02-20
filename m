Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 841B51667B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Feb 2020 20:55:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E2DB87618;
	Thu, 20 Feb 2020 19:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKfpk+HGEcuN; Thu, 20 Feb 2020 19:55:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 451DC875DC;
	Thu, 20 Feb 2020 19:55:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7F4C1BF36A
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3D3C214E4
 for <devel@linuxdriverproject.org>; Thu, 20 Feb 2020 19:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1zG7u750wTm8 for <devel@linuxdriverproject.org>;
 Thu, 20 Feb 2020 19:55:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 88550207A8
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 19:55:07 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id s6so2480257qvq.4
 for <devel@driverdev.osuosl.org>; Thu, 20 Feb 2020 11:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=jPFTRNw64J7Laq3myZUsp7zjb6I6nZ3YxdJBnUcsx0s=;
 b=M/m2sloD0m2fBrqMgSVgf5kaZ22n01WNDxYaBnnuT59TWu7EYnXJD7AnA80/LH+oXM
 NPoXc5sl+b5FaVr00p+lMdOmRhk0jVcJsvXqhk/6y3j7dOnYrKJDDaGy6rFBHUAorKWy
 3RIko9cDCWioC90dLHCXM6oycZbCsw8NsVkeWnIqWWZBJilj5xBg2QWep9YB7qFIVxH3
 yRM/4tZMOo9SaoljDB497cCI3VMkxz/20TZxI4sA6ugBMQ7xFYkr1Ra028jUPgFoleKp
 4JPXJorEeJMqe8SLChkqwmbz97xdKvjGF8CaukbtSYuUyhiUUCrlw/UnPZ5i03Zwhtbn
 6VUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=jPFTRNw64J7Laq3myZUsp7zjb6I6nZ3YxdJBnUcsx0s=;
 b=IrjP00OK4MTiBlr/v4hQzxec2BXPHxsLAjte+1lVhsLkHLqf2VdQtR8Mfkq+qaaseb
 FKDyU6GP0twvcrcKBRTszFx5k1RwzcfENpjQCAFQmOxVuyNbf+li9Ny53s4fIwTw/PRc
 dzqXAp6IEeJh4qO+XDQhzcky6d5H/SbFsKyZt9WV9wXuzi4R6EGvZqvXyvl480vHJlgX
 oZN+YX9Uux9wpfzbfPaTdJsuHV4EBW+IqXTjQCfGqXaChJ3/mhDDdiTIEuP1oWWZyDSO
 NZkL84NAxLq607DYxAGthXf5IlnWPjIxQOcVckhR/y+2bw2HIRNAqzPXX+ekZlkTWNct
 V6+A==
X-Gm-Message-State: APjAAAUvi0Rut8EIEIQYqFH8jtshUKihUubaFVjpYVEON0Ou/t/QZD/7
 EbudwpTCaglXw92ZP8eup8FYroPTd7znW7o8
X-Google-Smtp-Source: APXvYqwEDBMoFhUXkuEbujLErxbJjw4DVap0LrUSEEibjgJ5Nn+zj8JDWIThUGIH5pPldiuqUL41Ew==
X-Received: by 2002:a17:902:b944:: with SMTP id
 h4mr31849359pls.92.1582228110226; 
 Thu, 20 Feb 2020 11:48:30 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
 by smtp.gmail.com with ESMTPSA id 76sm391082pfx.97.2020.02.20.11.48.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 11:48:29 -0800 (PST)
Date: Fri, 21 Feb 2020 01:18:20 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: add space around '+' and parentheses
Message-ID: <20200220194820.GA13689@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warnings of required spaces around '+' sign in
multiple lines in octeon-stubs.h by adding spaces. Also add space before
parentheses in the same file to fix checkpatch.pl warning.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/octeon/octeon-stubs.h | 34 +++++++++++++--------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 79213c045504..d2bd379b1fd9 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -11,7 +11,7 @@
 #define octeon_has_feature(x)	0
 #define octeon_get_clock_rate()	0
 
-#define CVMX_SYNCIOBDMA		do { } while(0)
+#define CVMX_SYNCIOBDMA		do { } while (0)
 
 #define CVMX_HELPER_INPUT_TAG_TYPE	0
 #define CVMX_HELPER_FIRST_MBUFF_SKIP	7
@@ -22,11 +22,11 @@
 #define CVMX_FPA_PACKET_POOL_SIZE	    16
 #define CVMX_FPA_WQE_POOL		    (1)
 #define CVMX_FPA_WQE_POOL_SIZE		    16
-#define CVMX_GMXX_RXX_ADR_CAM_EN(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CTL(a, b)	((a)+(b))
-#define CVMX_GMXX_PRTX_CFG(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_FRM_MAX(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_JABBER(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM_EN(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CTL(a, b)	((a) + (b))
+#define CVMX_GMXX_PRTX_CFG(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_FRM_MAX(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_JABBER(a, b)	((a) + (b))
 #define CVMX_IPD_CTL_STATUS		0
 #define CVMX_PIP_FRM_LEN_CHKX(a)	(a)
 #define CVMX_PIP_NUM_INPUT_PORTS	1
@@ -1410,18 +1410,18 @@ static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
 					uint64_t qos, uint64_t grp)
 { }
 
-#define CVMX_ASXX_RX_CLK_SETX(a, b)	((a)+(b))
-#define CVMX_ASXX_TX_CLK_SETX(a, b)	((a)+(b))
+#define CVMX_ASXX_RX_CLK_SETX(a, b)	((a) + (b))
+#define CVMX_ASXX_TX_CLK_SETX(a, b)	((a) + (b))
 #define CVMX_CIU_TIMX(a)		(a)
-#define CVMX_GMXX_RXX_ADR_CAM0(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CAM1(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CAM2(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CAM3(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CAM4(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_ADR_CAM5(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_FRM_CTL(a, b)	((a)+(b))
-#define CVMX_GMXX_RXX_INT_REG(a, b)	((a)+(b))
-#define CVMX_GMXX_SMACX(a, b)		((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM0(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CAM1(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CAM2(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CAM3(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CAM4(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_ADR_CAM5(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_FRM_CTL(a, b)	((a) + (b))
+#define CVMX_GMXX_RXX_INT_REG(a, b)	((a) + (b))
+#define CVMX_GMXX_SMACX(a, b)		((a) + (b))
 #define CVMX_PIP_PRT_TAGX(a)		(a)
 #define CVMX_POW_PP_GRP_MSKX(a)		(a)
 #define CVMX_POW_WQ_INT_THRX(a)		(a)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
