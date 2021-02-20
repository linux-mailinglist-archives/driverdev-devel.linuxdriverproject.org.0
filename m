Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CCA3204EC
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 11:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E20086F638
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 10:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnXFpsMQvNn9 for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 10:48:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id BD4E76F651; Sat, 20 Feb 2021 10:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3EB56F506;
	Sat, 20 Feb 2021 10:48:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9B2D1BF3F9
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 10:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC0B86F506
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 10:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4EQiLItrVnpn for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 10:48:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 056EC6F608; Sat, 20 Feb 2021 10:48:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C845A6F506
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 10:48:23 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id t29so3541418pfg.11
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 02:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=27sxJ01JG4xpWs2LBAyPY5QwB2Gx3zDdlzLfkDIVGhU=;
 b=dc+usyKj/aUWIjprXvqwf8GvnAWdOgoAMkpyDKeGaawQebPS5dwGERuoNu7Cw3zfAr
 08DhZXlCfdcbiWDPgn7l/N0P/nxoSjDw5HLzepqxP8W4tH52nHT9IFtuJP1CxMgp4jFg
 SgNV+/9Dlc9of5Nh3qD7PE+1NpyNPj6Zx+faYKcRssuRQHwokYnNt8gIg+7r+5Wb4V/O
 UgyYWpJcmTuFeHn0Q/fpnSJ0tGfys2DIW2CyQ+/Hn0v7ggbUPRDhPn3AYVamn6si9VXD
 r7888l5nuo9f4OoxOwx+talXAGfBzbJlvWL0tSsSq9r1SlCYq/9TfpwJddfJTFfZMaLb
 nmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=27sxJ01JG4xpWs2LBAyPY5QwB2Gx3zDdlzLfkDIVGhU=;
 b=Du7B6T+QtXYjckChozg7GPmmEL3tz6RwgAxUGlEDYTisdhhZ9el6RtD3XOP/g9IQSM
 qac2W0W7vKBQcQaaYbb9IShZP3n4wOApfl64SOJ3x1SmHv9T6J9zhUg3Jcfakb8t/cxe
 Dp+oHF2SquGx8ub2omEVckI9jaHNcb+tYS2P4tng3/E3mzHbwU23z27+9ticFDxz+vTW
 4MCa9XnZC2FIGRy0kymu4m4UVD+kAJsit/uYOPa9CK/gDUJmzyPQeHVawYrquJ9G0z8B
 R2cRPynyFsnYkvtWaJj7klIeOnctgo4n5qX0VgJQmp72Gv1Ultb6g4vy84jhl8oQHDZ2
 2Kyg==
X-Gm-Message-State: AOAM531wH+gcR7nem+F8OtE+AVvzJu5HIRWAs8BmVvErQ7u7rAMZt3Sm
 A9wG+HhRY8d1PHtzJ7X0B4U=
X-Google-Smtp-Source: ABdhPJzIsOeuKDoXE0qwQxclfn7exL0CZHFCtYWuZFm55Kk3xM6PyDwUOuBQfdhH1yNjg1liDzwS+w==
X-Received: by 2002:a62:e315:0:b029:1e6:2f2e:a5e7 with SMTP id
 g21-20020a62e3150000b02901e62f2ea5e7mr13501341pfh.81.1613818103152; 
 Sat, 20 Feb 2021 02:48:23 -0800 (PST)
Received: from localhost ([103.106.200.55])
 by smtp.gmail.com with ESMTPSA id q18sm13857136pfg.72.2021.02.20.02.48.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 02:48:22 -0800 (PST)
From: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
To: gregkh@linuxfoundation.org,
	sfr@canb.auug.org.au
Subject: [PATCH] staging: wimax: i2400m: add space before open parenthesis
Date: Sat, 20 Feb 2021 02:48:16 -0800
Message-Id: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

netdev.c

fixing style ERROR: space required before the open parenthesis '('

Signed-off-by: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
---
 drivers/staging/wimax/i2400m/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
index cd06eaf75e8b..5b53e59084c8 100644
--- a/drivers/staging/wimax/i2400m/netdev.c
+++ b/drivers/staging/wimax/i2400m/netdev.c
@@ -523,7 +523,7 @@ void i2400m_net_erx(struct i2400m *i2400m, struct sk_buff *skb,
 
 	d_fnstart(2, dev, "(i2400m %p skb %p [%u] cs %d)\n",
 		  i2400m, skb, skb->len, cs);
-	switch(cs) {
+	switch (cs) {
 	case I2400M_CS_IPV4_0:
 	case I2400M_CS_IPV4:
 		i2400m_rx_fake_eth_header(i2400m->wimax_dev.net_dev,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
