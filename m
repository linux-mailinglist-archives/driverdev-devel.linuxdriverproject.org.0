Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F31747CBBF
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:19:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC21A85507;
	Wed, 31 Jul 2019 18:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bT1smESWFcgF; Wed, 31 Jul 2019 18:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EB1584AE1;
	Wed, 31 Jul 2019 18:19:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58C7D1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52FD88707A
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NPTE7OoZo7v6 for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBA2286FCD
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:19:06 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n9so26231799pgc.1
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=e0gVq6uy00cY6V3t0O5fCn9fm+ZnY+YHyPLBNweEeig=;
 b=EWc+AfytrePtRJmEbBdd1N1YdQb0s26K0I8f3iwJU8tRvHSw1+z/FjCaGin2jzyAez
 8uXcOmsUUV/nl/gZczxf6yUeh+1DqpyqaihJUa+srT4ZMKiV2B/5yxDznsfNFcMGp7op
 thkoFXnGxyZPalFv9iHZ2ai2C32G2SK5k5eXtapW+S7cvQBJ0+hOp7BEL6wZycHv+BHE
 FqQruUo4fSHHp7hQV8yGiYtK/XRbshryulJNMDl8htn1UJJ8zlXtoKGfonLlYYpGDZ+Z
 DPV8LZtNCZMKbXX0tOuBHvgQYn/KjlTbHb1e6KRHN7z9r/gcdLu66urKNLyaavw8Fk3p
 LvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=e0gVq6uy00cY6V3t0O5fCn9fm+ZnY+YHyPLBNweEeig=;
 b=Rwy4oasTvNmg0+hfoSWZ6yqKlwczDdhaY278U6533wtJxg//3cKu9hlSmPAxLJKsw3
 h0Dtj9eOvY2flpw7/3R6QwWLq3zAX1CWMv7a69jg1lDVvElS55vsrZ2VzKEtzjO9Ieub
 nml0u8IglRmqb/wDLfcG/FY5tlafqE3iqlKHxZFguU5KvstCWX2qYG9ayQdxpAIw5l+L
 tSc1mEkc7fKF/J2pTyvgZR6FbvikGMjNRnNAn8DPgwVUtZDBeqXdaDKKqXXETBFTv2dv
 D2KlspjVTvut4Nn00DP9blCertpgEWSNvXK8QqE61GxUu8NhcnrP7AwNRMj91vG5IrBw
 ZXqg==
X-Gm-Message-State: APjAAAVdTJZrnDe7nnLmJzWdCsiTUchwlP6mEXE5xfwTWKlOocxDPIf4
 7g82tB/SC3xZC60uHxuFarqJPXTs
X-Google-Smtp-Source: APXvYqx9+Ao6DKAXKMVrhBtgZRmkqziTJWZ3wkHgIlFSCp2BGCIzyU5oU3YbeUH35XPlNymmENDeww==
X-Received: by 2002:a17:90a:cf8f:: with SMTP id
 i15mr4095141pju.110.1564597146552; 
 Wed, 31 Jul 2019 11:19:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id s66sm73305597pfs.8.2019.07.31.11.19.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:19:06 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:49:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net
Subject: [Patch v2 06/10] staging: rtl8723bs: os_dep: Remove unused defines
 related to combo scan
Message-ID: <20190731181900.GA9503@hari-Inspiron-1545>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove below defines WEXT_CSCAN_AMOUNT WEXT_CSCAN_BUF_LEN
WEXT_CSCAN_NPROBE_SECTION

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 99e6b10..73b412e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -21,13 +21,10 @@
 #define RATE_COUNT 4
 
 /*  combo scan */
-#define WEXT_CSCAN_AMOUNT 9
-#define WEXT_CSCAN_BUF_LEN		360
 #define WEXT_CSCAN_HEADER		"CSCAN S\x01\x00\x00S\x00"
 #define WEXT_CSCAN_HEADER_SIZE		12
 #define WEXT_CSCAN_SSID_SECTION		'S'
 #define WEXT_CSCAN_CHANNEL_SECTION	'C'
-#define WEXT_CSCAN_NPROBE_SECTION	'N'
 #define WEXT_CSCAN_ACTV_DWELL_SECTION	'A'
 #define WEXT_CSCAN_PASV_DWELL_SECTION	'P'
 #define WEXT_CSCAN_HOME_DWELL_SECTION	'H'
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
