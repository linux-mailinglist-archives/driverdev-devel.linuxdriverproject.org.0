Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0186F2AC02
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 22:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2135886833;
	Sun, 26 May 2019 20:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mI8gR1+WqC3d; Sun, 26 May 2019 20:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE59884CE1;
	Sun, 26 May 2019 20:11:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34CF41BF294
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 20:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A2DE87939
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 20:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELDWujmgYjDb for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 20:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79464878AC
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 20:11:00 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z23so9742356wma.4
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 13:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PW+FTPjVEFc/ugSTSBnJORgs4HQ9jKJJs9SoXGPB4bw=;
 b=GYF/uNfwwCT8Ki4Ylr1Yhd+cdMly62s5DSuunMJ9YAG1OnKGDYvsvLQH+82Ueyegt7
 tP814SE74gi9oY6yCUGp1/s2Swe76UFyTRaEa08rLsE0svfuAWxVQZFQP2HtVzD80Rqj
 l5Vs/czXDXWgTjiPViRZhj+EWEMxxVJ6l+p+sOZkE6VcMvlJyFMC/KcSuxkLcerAIiWV
 qQcNCG+fnI2EFW94/68Gy4gAeQv5uo6vfZAE5Dv6Nv/vCZRBK1sMjhMvaP4N0gnbnrPB
 5dytR97VmVGcoR1gM5NMEsVCPJPcFPZWGXDFeoafId/vcmJppAEb4UUutiM2d5u45Gle
 Fr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PW+FTPjVEFc/ugSTSBnJORgs4HQ9jKJJs9SoXGPB4bw=;
 b=QseF/ky9ogr9To7UNN07NB6O0C6nXCRluWMNAocK+U+samBWcBTVDBc76enAT0d0kR
 SsfOZshLY3GGEm8exA2ruWObH4SAzKtU1bWvC0cN+qPjOMgiFGlmb6ff0PnDkJ2yJ2ve
 jurXOaSjXQe3lidvnWkGet/L7RuBxclJQ+k2lZkXhN6o6TQUcl1NfBUQvJWbwT2rRUUG
 GXuRQU7q4E+9UzFwD1LUK+g4ZB6EjtU4orisVfOFEpEjat4i7vzbxjGJ8bEV51Qa325s
 EIqmLF09wRAAcRyOahEckPjlF4T/TcuUpVvRX4Tv1+AiQGaCLIxjxtpajMlYsGKOuGNI
 hUhQ==
X-Gm-Message-State: APjAAAXLkJhX7LGMYQJS30S8uKpJEBLTFHKUs9ezE2Wb5biKwqODetv4
 0k2+OYHO5ZeBdvuv+7c52YE=
X-Google-Smtp-Source: APXvYqxVjuD0swyZx56V1IT5pDKrTndwVOLO8oxtzFUK6fVeybSNILc1Byyu80QOACNz9ktNzdFZpA==
X-Received: by 2002:a1c:c5cf:: with SMTP id v198mr7506608wmf.84.1558901458878; 
 Sun, 26 May 2019 13:10:58 -0700 (PDT)
Received: from yacov-PR601-VR603 ([176.230.35.200])
 by smtp.gmail.com with ESMTPSA id a124sm6499975wmh.3.2019.05.26.13.10.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 13:10:58 -0700 (PDT)
Date: Sun, 26 May 2019 23:10:55 +0300
From: Yacov Simhony <ysimhony@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] emxx_udc : Fix #if 0 coding style warning
Message-ID: <20190526201035.GA13466@yacov-PR601-VR603>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpathc.pl warning:
WARNING: Consider removing the code enclosed by this #if 0 and its #endif

Signed-off-by: Yacov Simhony <ysimhony@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index b8c3dee..985a1fb 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -10,10 +10,8 @@
 
 /*---------------------------------------------------------------------------*/
 /*----------------- Default undef */
-#if 0
-#define DEBUG
-#define UDC_DEBUG_DUMP
-#endif
+//#define DEBUG
+//#define UDC_DEBUG_DUMP
 
 /*----------------- Default define */
 #define	USE_DMA	1
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
