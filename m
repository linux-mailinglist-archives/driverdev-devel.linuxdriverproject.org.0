Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A0413BC5
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E00686C11;
	Sat,  4 May 2019 18:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HQfrfm1+Me85; Sat,  4 May 2019 18:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1067A8657C;
	Sat,  4 May 2019 18:42:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A9D71BF5F5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1493885ABE
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id arWqsqodz0jD for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B8D9854C9
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:42:48 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id cb4so378172plb.3
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vLOjCnO49yCOENX0uFQ1hXKTRCbqPnXn7dDmCUFzsZA=;
 b=t1Q6D7Wl+XPzM/8355mudFl2qDhrWUyNMz3fLiDhFp5j9ou4cUJJOSvBwbSeC++Q+3
 mFqR/EeZi+ZShb0jmpybC6cksZd/lQv1CScJThiA/0eJm44iLKuEBtFaFq6aBwWaM5Uj
 jcvkxRSt9ct7Ysr6qIshsYcZy8RGIwdpT13Ral7RDzugwm94vL7Rq39jbhT8Ns1dE8MC
 cQ1ro8TbDRr5LAwB3rzoc5Yj+jCJG/R1AEcOREIwb+8y+il1b42809+Jd2e6/34alXHh
 YCyoN8MphqUZWLGqCuJt1qkBvbe9Hi5L4qBgO9CkAlF64jj7aOrJnAvFSAnFrR7fw/Xk
 Lk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vLOjCnO49yCOENX0uFQ1hXKTRCbqPnXn7dDmCUFzsZA=;
 b=JlX5BFLdhovdBUzu3tL1PohmYPG3OAOFbSFL+nu4kW5S7o+7a+GUbOGHUwhzXOy1w1
 BJcCcU8a6MFn1tlC845exvobK8e7FEf/d1PGXmYTb0M+EwQJK7mTOTCTfs5Z9FZ0HXmL
 oLeEzm++Cf92xvJvkds6uTC8NwYDjDVJIddShzWtOL0Stlo4gNb0SsssFjHsOv2rhEFc
 bldKrxC8m7t6crYFU2szcrymN1nfY/y1dc3I5bUtaTdPWRyd8sy4ABsdOxMf653uFJ9Q
 9Zw5RESxLiY+ax0vlB1C7KjcRamYPqkSYwvYyKKX2CWZWJbdph7sGNNdwXw7qgSaSv3C
 NjLQ==
X-Gm-Message-State: APjAAAV70MlBF0H7S3QTdcunBxbppVmBf92dbOxiLwx36wLru2d64KoQ
 eUoaBvGwWluzCCFjVxhnKY0=
X-Google-Smtp-Source: APXvYqyEuNHK4isBLDDxjIaqXH6Jr8t9DjMp1xmPRZhC20Y+wVDkkdhlOS/QvhnqXvEsDZZtonjECA==
X-Received: by 2002:a17:902:900a:: with SMTP id
 a10mr20733814plp.336.1556995368285; 
 Sat, 04 May 2019 11:42:48 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id 144sm7631784pfy.49.2019.05.04.11.42.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:42:47 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/7] staging: rtl8723bs: core: Fix various checkpatch
Date: Sun,  5 May 2019 00:12:30 +0530
Message-Id: <20190504184230.25514-1-vatsalanarang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series fix the following warnings:
-Remove multiple blank lines.
-Remove return in void function.
-Replace NULL comparison.
-Remove unnecessary parentheses.
-Remove braces from single if statement.
-Fix variable constant comparison.
-Move logical operator to previous line.

Vatsala Narang (7):
  staging: rtl8723bs: core: Remove blank line.
  staging: rtl8723bs: core: Remove return in void function.
  staging: rtl8723bs: core: Replace NULL comparisons.
  staging: rtl8723bs: core: Remove unnecessary parentheses.
  staging: rtl8723bs: core: Remove braces from single if statement.
  staging: rtl8723bs: core: Fix variable constant comparisons.
  staging: rtl8723bs: core: Moved logical operator to previous line.

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 79 +++++++------------
 1 file changed, 30 insertions(+), 49 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
