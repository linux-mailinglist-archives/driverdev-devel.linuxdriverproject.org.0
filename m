Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273C6E16B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 09:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C756B876D1;
	Fri, 19 Jul 2019 07:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sShJIXqdRShI; Fri, 19 Jul 2019 07:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58A32876A2;
	Fri, 19 Jul 2019 07:09:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65EBE1BF33C
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 07:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62F8D880A1
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 07:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zlnrI61lmaP1 for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 07:09:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5E7087ED1
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 07:09:52 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so13757326pfp.7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 00:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hw2kNiLoj+LvvfY1YdobU4HU5vXnmTyj3KhgfWP8Lyc=;
 b=F30SYFLzLUaEvZZyNkrfusWAtMzfDxAGnKIlXrIl6LOCJF2OhfQDsDLT9cmynvdevK
 JwjuT2TZXcF7zudqpIWMz5/gKm7J0X+6DBmaiQWIZz5dAtOiAitm4MlmT3q+az3sfLrq
 lAjPAWrRlY/T2WWHlDSv6/2omGMuIyOvfC8PwRKM85273cve4F8Tft6YALL0ynYxhIv/
 CH7yoVCrZPA0JjDcZeBNWyPX/AMfNdFDhZOFC9bgc1KRlwop6/yxHjX62T9H5Pujnjvv
 MhXFDeDWxctuByVAbbgvmXY4NjfDmZKaXHs65AJ1zUhplntVEUSR7kzG+yIfgk/dQlY1
 7tdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hw2kNiLoj+LvvfY1YdobU4HU5vXnmTyj3KhgfWP8Lyc=;
 b=cU329pXaXCcAkMhIWMMR10IORxjxtMelNba1r5q/HvoLIpgNmVEDSUJleiR1ryxESJ
 Jpj+n9LKDCG8RB0RcDKCGPa6xulM0vweUwrbnzg7ymmfnqcAxQXslhHepdiCibeYz12A
 Cl7CL9l8ssxj0/5mBPi0sR+TfhANPffbdyi+xnnj8OCkgv8J5PQuF1utI4qgyaAPqq0q
 xBp0C9WEB0TO5bNxGAg8Bo8JdtaIhMAlpinoucfytlunmZLuhc96IGm4MxmkLg7Y1FTJ
 Sdy594hywnyQLuh3EXjCLo111c+OGpnwS8CHAqnASd/erzQj0B/R/u2o67DgfQ7HmoB0
 Fp8A==
X-Gm-Message-State: APjAAAXbPOveXV3nS3sMkVKILODHK4AxNXpUHNsZQYce7dDnvaBYuOk4
 JuChlkpJyREtn/OWNTY5bPI=
X-Google-Smtp-Source: APXvYqyPYlKJsxcZlDbnkyt2zjKgqcTXPGjGOmY0RYcfU9CmypL8Bb/NbeFOHQDzySOm0VehvgYREA==
X-Received: by 2002:a17:90a:208d:: with SMTP id
 f13mr54371662pjg.68.1563520192524; 
 Fri, 19 Jul 2019 00:09:52 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id r18sm17470274pfg.77.2019.07.19.00.09.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 00:09:51 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: rtl8712: Merge memcpy + be16_to_cpus to
 get_unaligned_be16
Date: Fri, 19 Jul 2019 15:09:22 +0800
Message-Id: <20190719070921.27749-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Merge the combo of memcpy and be16_to_cpus.
Use get_unaligned_be16 instead.
This simplifies the code.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 5298fe603437..9969e5265a40 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -245,8 +245,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 	if (auth_alg == 2) {
 		/* get ether_type */
 		ptr = ptr + pfhdr->attrib.hdrlen + LLC_HEADER_SIZE;
-		memcpy(&ether_type, ptr, 2);
-		be16_to_cpus(&ether_type);
+		ether_type = get_unaligned_be16(ptr);
 
 		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
 			/* blocked
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
