Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B11DA41F9
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 05:49:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFE3C87FC4;
	Sat, 31 Aug 2019 03:49:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ETWesudKYLl; Sat, 31 Aug 2019 03:49:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 61A6E87F51;
	Sat, 31 Aug 2019 03:49:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABC401BF989
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 03:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A829784D3A
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 03:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZaGNcZtXl_X9 for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 03:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37D2684BF3
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 03:49:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 4so927284pgm.12
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 20:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=MBr117tQvPTRQqk10pzx+/iwqvgLO4n/m8eLZy0iFhQ=;
 b=XYMDd3QOoif0Jj8jidwXaz8mlr6A6VgLz84KHPk6iDRTtFftR5WzS/bT1L/faX7xk5
 pawVLkQgl6tMyr4OxWPFhXhlJSdNuBdaYBcxKW4OpZzS8813lnniGH0yj6A6WsaKdK9H
 zygQ2GR9DF7WemZbZR+tAZnisz2bHudbUEtJ7E2uLWenZi+qLJ/pphuyFUi+1Wnc4GON
 i6uJ7lWo4zAHnaDGh3dFJClG2xhYYSHboEapJhftJ2nOctk1TDUPqvc4EVrXgDXQgL5y
 wydQFHF+ofh5fbGRGB6B8QMSCirZ7yM4wRxUGWvbuMKrk8lql22MxNkUnZdbS3z+4U2U
 iwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=MBr117tQvPTRQqk10pzx+/iwqvgLO4n/m8eLZy0iFhQ=;
 b=QeAq/AdRuU5aUiYQyjpRJfHHPaU/uvoBXAUT+DzOGrVHAaR55orrwnuoqmSWv/mVQ/
 b6LZ0KEwX0kj7rkFeSisr2HOXIqE9kb+54YSOm+QbBK1cFjmZcMnvCtM5itjXh47tLgb
 vYuf5P4SItfO0MLYLqftFO5XsE6d8K2ImPm4W/+JVMDP9lJbK99oqQ2IiTRXbfY4qFGP
 /kHACTSi0FxSGmNmIForUL2bopGdS/NqC4ixAW7yt2I5RPPsEJ8xMhJv6o5pWV8DFLyI
 uYQl9CYtcZ+m7CC6RVAiyXIITEJPz8upT4xRHA5VTbX2/zGv/DsrsuNI5C6PFh+IcW1I
 bZGw==
X-Gm-Message-State: APjAAAXOhnGSC2XY18Y2qKFR2Su9HyQXS0f3B8DsqBHTGTRfz7NaOAVg
 rx8qgHw6ay7V44OFnbvwUSw=
X-Google-Smtp-Source: APXvYqzhLXPO8wMaG49CtLBAxNVbcJuJOIGOR3t6Giyj/2CBsmRF2hPan43P8Dd2JnF2T4OgExbn9A==
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr22320284pfi.234.1567223376786; 
 Fri, 30 Aug 2019 20:49:36 -0700 (PDT)
Received: from dell-inspiron ([117.220.112.196])
 by smtp.gmail.com with ESMTPSA id t70sm6759467pjb.2.2019.08.30.20.49.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 20:49:36 -0700 (PDT)
Date: Sat, 31 Aug 2019 09:19:26 +0530
From: P SAI PRASANTH <saip2823@gmail.com>
To: gregkh@linuxfoundation.org, kim.jamie.bradley@gmail.com
Subject: [PATCH v4] staging: rts5208: Fix checkpath warning
Message-ID: <20190831034926.GA17810@dell-inspiron>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

This patch fixes the following checkpath warning
in the file drivers/staging/rts5208/rtsx_transport.c:546

WARNING: line over 80 characters
+                               option = RTSX_SG_VALID | RTSX_SG_END |
RTSX_SG_TRANS_DATA;

Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
---
Changes in v4:
 -Fix extra tab issue which was causing same blank line to be added and removed
  in git diff.

 drivers/staging/rts5208/rtsx_transport.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d78..c1d99c4 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -541,10 +541,9 @@ static int rtsx_transfer_sglist_adma(struct rtsx_chip *chip, u8 card,
 			dev_dbg(rtsx_dev(chip), "DMA addr: 0x%x, Len: 0x%x\n",
 				(unsigned int)addr, len);
 
+			option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
 			if (j == (sg_cnt - 1))
-				option = RTSX_SG_VALID | RTSX_SG_END | RTSX_SG_TRANS_DATA;
-			else
-				option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;
+				option |= RTSX_SG_END;
 
 			rtsx_add_sg_tbl(chip, (u32)addr, (u32)len, option);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
