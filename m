Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46C778C8
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jul 2019 14:53:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 62E2088578;
	Sat, 27 Jul 2019 12:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0A-eIm4CnlV; Sat, 27 Jul 2019 12:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EF488857B;
	Sat, 27 Jul 2019 12:53:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97C8F1BF37C
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94FEF20458
 for <devel@linuxdriverproject.org>; Sat, 27 Jul 2019 12:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vH1iQNfii4SA for <devel@linuxdriverproject.org>;
 Sat, 27 Jul 2019 12:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 82FB620453
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 12:53:06 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id c14so25700900plo.0
 for <devel@driverdev.osuosl.org>; Sat, 27 Jul 2019 05:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ld7+Uj630f5ZM6LOdOr+O6vUN4++4Q00HLFfndySjNc=;
 b=sochV/fVlWbh9AkilsVBjLDAbUAqRX1oVoo0Z9KD2mypUzJDaRgfrNf5QHF2eGaq6k
 V3FeXj/mV3cUk4cZ6HTyZ4e/TIcTBT09I4WzIKSnG852F/TtALSbD5yk/M8tRrn+Wfbd
 qjeMzuanWNerEUu3X9/fpUu/FCkhOwZg9yA+p06PrrFQc983pyTTOWsCX2hqZ0jtTDxV
 Cmjn5qa6zhTrbIfIAxKnPnUWccJqAqehokVk+vksdXe3L4dRP9BntmjjJAI5AsGeLfZE
 ANA4hKv58PgY72K+X9Fkzw19omCC+FtXYYLKAfDEOH7xe2n7vGNWQff9dU7piTsUru5h
 Q+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ld7+Uj630f5ZM6LOdOr+O6vUN4++4Q00HLFfndySjNc=;
 b=iMZkvx4MRoMh+xSRsky8qzau1Rgv5uY1SuOq+5tV6pMcGzwp8TWfKWToOZmB0lTYnG
 NEkoVMps6w5dgfzmHZjgAa9gtJhD5w1V9P537rb8v1qULqDo5hc2YQI83+fP16xIl+sH
 uenlz4wNQejPXurnJKfrz+RAn7W1V18gH751dkTqTXnlxc6XONL4EMJu0XYhHAZ4GECb
 x3zC/FAwc/0lbxkra1BEkjNI/7azFy3D+JAILTjF1CEpFYzujS0xZf7evN0CJXKCB9pu
 NSsEWyg7+jx8yxj8fwEABYfO3wmp6e2dkG0mTJGrzcB6GfdJWZg+5sAyANYRHXPQV0Ha
 Jitg==
X-Gm-Message-State: APjAAAXVhrOy1IPA5DJ9sXIJOYEhBwxOnAeIeoFm8eS07GoWixRNKhcf
 pf65YQQQIkcebHYA37hwMRsMVR1x
X-Google-Smtp-Source: APXvYqyeW/wa8fc9UwVhHiUkdKfJrle/DifqN6rBC96OG59gwBM4VPYRkXRHxoWoq3/fCqI4FTNx7Q==
X-Received: by 2002:a17:902:ff10:: with SMTP id
 f16mr6731069plj.141.1564231986201; 
 Sat, 27 Jul 2019 05:53:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id y23sm58091408pfo.106.2019.07.27.05.53.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 05:53:05 -0700 (PDT)
Date: Sat, 27 Jul 2019 18:23:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unused defines related to
 combo scan
Message-ID: <20190727125300.GA8629@hari-Inspiron-1545>
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
