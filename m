Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4AA135400
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jan 2020 09:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 204C585BBD;
	Thu,  9 Jan 2020 08:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iiNrZDd3aB6o; Thu,  9 Jan 2020 08:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4117586822;
	Thu,  9 Jan 2020 08:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5511BF330
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 08:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 298BF868F6
 for <devel@linuxdriverproject.org>; Thu,  9 Jan 2020 08:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChJlAz2Lw8iy for <devel@linuxdriverproject.org>;
 Thu,  9 Jan 2020 08:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61DBE85BBD
 for <devel@driverdev.osuosl.org>; Thu,  9 Jan 2020 08:01:44 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i6so2991425pfc.1
 for <devel@driverdev.osuosl.org>; Thu, 09 Jan 2020 00:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rnct3rScuo5UCOrZPVZUn6yaCZ4Hz2wyB5PJl2dXsyQ=;
 b=lepqg45iW0x0wIXzB9W1OISEWmZF8wGXjcpktX5kTjFE9A/zNltobhwCGrIT9SCeZT
 vbTg1L38xmQ7S2IjvKnDbq6OTnY8mNqWjopnVUclb6wn1psZgD8QUaNBV1qeHbpmqE9M
 DWWZtCsiW2J18ax3sTRNO0HoiATt/m6isRFl62RXJlfEvLnm2wk0lBumEX4jWDaTsIrZ
 J6ZVYRFs85Rr6WVN6Nv+pQ4DZG5piMclU/QWVnlbdeeHN5PcRV0E6zxz8/eJPbE1wXuv
 a4nlnUTY+ZO5MDAsnS7CTYnLI55KZw3DBOWwwkCCLvqLqWVy8iZRXrpYFEGfE+gW5gt8
 ylVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rnct3rScuo5UCOrZPVZUn6yaCZ4Hz2wyB5PJl2dXsyQ=;
 b=qzwSamT4T3HRaq6Pzzr+4KXdJSJ/usxnRJw2WXwYOxFRfDEXoMGz+KLdm1Ugh8r11Z
 azpz5Rn5LbXH2WWlvVIo/T+UX0DcG512JR4KiVfcMH9Q3JMG8zcT9iAHJDovVicP4UVa
 kxtVn5lLbhoiFyeXobYbVaxpEh1+/UQHWvx2+ppsKx2OpAJJmllN3UgFdonS4Y3yXXUp
 rSE6MZ4aDc0SWKKx0rQ3h/tX7eb34a+sQ1SYVKo5xmJT7bsllHRNu6ZUwheYMWBnRiLb
 tFrRzG8FISxxGDRHU7KCzG++Ruq4wtKUtRKQOl/BSXecT/ZNcmxHnOSTs/XyuUz09vvA
 LhzQ==
X-Gm-Message-State: APjAAAXckW/WMnYfyaQS686CO6eZrfYkLejqsoy/eptoO0IfV1Tr+z7A
 iCQO/NSD/b84UecSpt6LVfogSUQO+Dj3NQ==
X-Google-Smtp-Source: APXvYqyXZgRI88AzUaKA5gkc6klLUtcliBwJ8O3HqkjQM5lsLt+BQzm1FAYECTQpDgENRC+rUjLFww==
X-Received: by 2002:a63:7705:: with SMTP id s5mr9628789pgc.379.1578556903816; 
 Thu, 09 Jan 2020 00:01:43 -0800 (PST)
Received: from localhost.localdomain ([240e:379:970:fa70::fa3])
 by smtp.gmail.com with ESMTPSA id 100sm1861175pjo.17.2020.01.09.00.01.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:01:43 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: mt7621-dts: fix register range of memc node in
 mt7621.dtsi
Date: Thu,  9 Jan 2020 16:00:03 +0800
Message-Id: <20200109080120.362110-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memc node from mt7621.dtsi has incorrect register resource.
Fix it according to the programming guide.

Signed-off-by: Weijie Gao <hackpascal@gmail.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index a4c08110094b..d89d68ffa7bc 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -138,7 +138,7 @@ i2s: i2s@a00 {
 
 		memc: memc@5000 {
 			compatible = "mtk,mt7621-memc";
-			reg = <0x300 0x100>;
+			reg = <0x5000 0x1000>;
 		};
 
 		cpc: cpc@1fbf0000 {
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
