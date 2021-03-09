Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28038332975
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 16:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A95F4C62F;
	Tue,  9 Mar 2021 15:01:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 26HBx6dwIzbR; Tue,  9 Mar 2021 15:01:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E1764BDD5;
	Tue,  9 Mar 2021 15:01:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 518E11BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 15:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DD3A6F4D2
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 15:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JeIkfaQkEdV8 for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 15:00:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59505605B1
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 15:00:55 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id x7so6197165pfi.7
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 07:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UVX6yhkhZJaYTUj2gA+yCgge5D0I9vFDtLFEQfPvprw=;
 b=EpfhMd+1+TAKUuxk9q5BVgmdp21lkwE833OTzKkFUW41fP551wb8w7Ys5KPeDqDjrt
 tRMWpLmBd/u7HRX312J48xHBkRv4Q7wRO5eheWh+UKBL1oOsIzYTiPPTNBzHJZ332Mmq
 sfgOpjWi31XPXuRyKckH/1eo0R367ckBEP1BRRQKL44ePNk9oMHo3bKst+wV98luibnj
 zON6p40jSUT459A0YxxO2tvWpdKLgaj/GauQFRqN0w9JzPFGMYZIE3S0e7uuqWJVA6pd
 KWVjQLuYIBLBXi9Zk71rvXaqOOGhKZHyFIGGJ4uF5dzNZ1Nkprg1+OmaPe4KpmAv22yv
 aTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UVX6yhkhZJaYTUj2gA+yCgge5D0I9vFDtLFEQfPvprw=;
 b=CrMdM95JSdbFbKMvc079J0xaA1H2pKkKUPjEfbbaL1nZhxKO1IZCXrDhj3jGcS4G+j
 ElbFti2hrLisikCk1SBXnPcGbzS01DDlEQUsXNQuc+cLmDbWpqwEz/6OtD8rg91pBZCt
 VK9c5g1K7XWiQpHGQsYOJs55d+BCH+b9V8ljWSUnjEhE2Hslhhrbt/v722Sw6gfpdNR7
 Kfn9pXypzApydbwrtxHu6GjY23oczhsS7jlnNMpXs7IW13JfekjixT/Dne1duV7Pl3fV
 aECkVMxFKeiws808XZVKB/pnJ3n0GpKV39fNnfd/kZZTQRUPoeBaHfwyaewmU9N2VMzQ
 7EVQ==
X-Gm-Message-State: AOAM531n7eRdqx0Ao7FhbIeRSveZRYInuOYABEWUTvyar9Q4xqiXDa8/
 04axWasygVNf2msxi78tqpI=
X-Google-Smtp-Source: ABdhPJw+aeKbyDxj4LBUB98GD/ciTuULhhK2slQ5Pfd0hduriTNlCrnjwNVSfbrZphEcW3atgs+SQQ==
X-Received: by 2002:a62:602:0:b029:1ed:d3fb:7edb with SMTP id
 2-20020a6206020000b02901edd3fb7edbmr26242650pfg.22.1615302054756; 
 Tue, 09 Mar 2021 07:00:54 -0800 (PST)
Received: from localhost.localdomain ([116.73.168.170])
 by smtp.gmail.com with ESMTPSA id m21sm12774536pff.61.2021.03.09.07.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 07:00:54 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com
Subject: [PATCH v3] staging: rtl8712: fixed whitespace coding style issue
Date: Tue,  9 Mar 2021 20:30:37 +0530
Message-Id: <20210309150037.17883-1-selvakumar16197@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed additional whitespaces in the rtl8712_xmit.h file.

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
Changes in v3:
 - Done one logical changes instead of two different changes in the same
   patch.

 drivers/staging/rtl8712/rtl8712_xmit.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 0b56bd3ac4d0..e4c0a4bf8388 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -36,10 +36,8 @@
 #define MAX_AMSDU_XMITBUF_SZ 8704
 #define MAX_TXAGG_XMITBUF_SZ 16384 /*16k*/
 
-
 #define tx_cmd tx_desc
 
-
 /*
  *defined for TX DESC Operation
  */
@@ -89,7 +87,6 @@ struct tx_desc {
 	__le32 txdw7;
 };
 
-
 union txdesc {
 	struct tx_desc txdesc;
 	unsigned int value[TXDESC_SIZE>>2];
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
