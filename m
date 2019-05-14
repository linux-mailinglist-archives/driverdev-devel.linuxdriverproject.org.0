Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C59C1CE00
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0028C86099;
	Tue, 14 May 2019 17:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F4d-2o70iD0m; Tue, 14 May 2019 17:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7458860BE;
	Tue, 14 May 2019 17:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDE301BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8B0F87BF5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+SgBjJTBOGh for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA25F87BC8
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:03 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id d21so8604505plr.3
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XeNN9w5V/3c0L2vGziR6D6dH3emuB88SBGjvH+vab2c=;
 b=c8ah/Q+iTbobRens60Ipj3GqrMEK2yz1TZBljN0qmmG041vcXCilS+JXJj6WEgEoSZ
 E8dWswSZu+UvoAZaHTAEL/SMQ/f08x+FsVkiavZmMfK+j49AWlp/Apt90IT3vHl9CK2J
 GzLCyeh4r6xnyymVz8pj1zex393W1Ka/uHGNO6/+847LcBZ+UgigVfRtkaSGQXROqEPY
 mOjFnnTrmfDku4s54Bl1rkpkV53e4pBRmHSz2P3IzU7EcXPFMUFkXfp6NowxjIxqmmE1
 s14CbnZM+xKkKMvvfgjIG6Ro6W14IGl7QOGPfFdJ7oiWnvjfXqqgcjoMwIqZlA0rY9H4
 nyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XeNN9w5V/3c0L2vGziR6D6dH3emuB88SBGjvH+vab2c=;
 b=JYaJ9hnEGy0RHJPWOLer6TxQzidwf03CxOx2bhEZcpoOaiU65D6cBpuyKUfHucqn7K
 LPuHcB2Sjg6Fpa/PqVgC4jQy50tQIg8aGQZvxs55SDZ3k63/wWlZAMgp+4+nW9qrkYwg
 KLeU9XqyXimNT6W1xej28fcS4BK+l2zVgd47jm2KKiej16aG2MFLB/axkE6FN7kz5Yq2
 Q7RmQiQIl67Dp8vtpzPjQ9AUPBKyy3cR4ohEinjRZ65jjK7Lxm+y+TOiEi8Xls4YFh/I
 CWWsFMz5pYbjUThjd9s91fyv08yF+KVNICV11u3kvzfXBCFmRwInAjOum/PeF2i230y5
 KOWg==
X-Gm-Message-State: APjAAAUc4lgRnsvSWE7+Ymh2Jqn47RYmn/LcfyOV+YUTXVKLEs4/oaJJ
 FDsALLba2DTA6ebCMwgRQ8Q=
X-Google-Smtp-Source: APXvYqxatmmhebIWvgvLn8N9pjKRP38HXb+WsJ/IY92SUc2iYylBbX9VMvsmEnuuKblAKXFc3zJPtg==
X-Received: by 2002:a17:902:8e88:: with SMTP id
 bg8mr38484313plb.173.1557855063466; 
 Tue, 14 May 2019 10:31:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7145:24c8:f23d:8e91:fd10:9c55])
 by smtp.googlemail.com with ESMTPSA id n9sm2222485pfq.53.2019.05.14.10.30.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 10:31:02 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: puranjaymohan@gmail.com,
	greg@kroah.com
Subject: [PATCH v2 0/5] Fix checkpatch errors and warnings
Date: Tue, 14 May 2019 23:00:18 +0530
Message-Id: <20190514173023.31146-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series fix the following errors/warnings:

-Correct spelling mistakes.
-Replace NULL comparison.
-Add space around operators.
-Remove braces from single if statement.


Puranjay Mohan (5):
  Staging: rtl8192u: ieee80211: Fix coding style warning
  Staging: rtl8192u: ieee80211: Fix spelling mistake
  Staging: rtl8192u: ieee80211: Fix coding style errors
  Staging: rtl8192u: ieee80211: Add spaces around '&&' operator
  Staging: rtl8192u: ieee80211: Use !x in place of NULL comparison

 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 21 ++++---
 .../rtl8192u/ieee80211/ieee80211_softmac.c    |  8 +--
 .../staging/rtl8192u/ieee80211/ieee80211_tx.c | 58 +++++++------------
 3 files changed, 34 insertions(+), 53 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
