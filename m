Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83404681B2
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 01:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E239185582;
	Sun, 14 Jul 2019 23:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9oInrU14FCu; Sun, 14 Jul 2019 23:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5299785549;
	Sun, 14 Jul 2019 23:43:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88F1C1BF3F9
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 23:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BFBC876D8
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 23:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vgqRMXTXVT02
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 23:43:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A75158768B
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 23:43:48 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id y26so13869281qto.4
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 16:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iRI/1yYFuZIAz+V9ZdMTr38FBq2aPEIUmZQ48oi5Uts=;
 b=LN96U5tGVFdnPe8Ke6SC9dWVw/I3MbrDn19ZjyZwgyfF0JYu1s70va3ofjjWZAwOB1
 iXSF3aChcISjIwEVN9IBB2f0AOngSGgUHWUscYlPCh/aYEQ2978T6lBx0+1utAqm+K8c
 NkrqlR26SbBPV6f6KX9U5rrQ31b0Sdr4sTbQhI+/0rYkOjArfdOf6H40HuReBR891x4i
 uyWer3+cs5Py9ree+i2RhIB0oZKFQIsv4HsgQlxPVBhJ1sDf7ZKeJ5ig4eG0a73YYvcI
 gi8cWNr2+3HsmPBE44sJbgwmiNuU2DGZi/znL8dh71oKaCKMMkKUvxEqzJmdn9EvubGl
 C0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iRI/1yYFuZIAz+V9ZdMTr38FBq2aPEIUmZQ48oi5Uts=;
 b=uQOJYjYjEf/62RVeyL9LzsfF695ba/qiISSRZxcWXOUP64idp1+T4W9umfKgSTI4y1
 TkDK9BvFce2+0aP1cGqOFY98sSDDK6WgSPYSKeafT9eO4yUmfLO1cbggZnwmXT1ZjCtc
 0KFtc1Wb2BEEovNvK3dpPec6ZDTNZWaWndf5dW9iQO7pBShHOwCdSfiyhGG+9CqeT8z/
 pzbGZZDkohWvOnB/FZgxSqY784KIy2Iinbj6SngOs0+H9mMuNBfhDJKzWD2JNELhVWL9
 2tvdtzJG1TTmq/1sdbsxDIzaoOse8M5vwiHJzWht0XEbeSkjROBatoos9VpGIppOz3Ft
 lFhQ==
X-Gm-Message-State: APjAAAW5XC4f6ZvwPUiYevYQrqhziDNBYqQj5js3YGcr0Rn9CkBTGlyE
 N3SzSuEfIQB8onhNUt3XFoc=
X-Google-Smtp-Source: APXvYqyEArM72bsnrbuC8cDrthMKfMHBPAbSgHMhyMAU8NYcfuCGM7F1HjOH9gMvt8npNqnDJ0mpSA==
X-Received: by 2002:a0c:add1:: with SMTP id x17mr16450051qvc.81.1563147827567; 
 Sun, 14 Jul 2019 16:43:47 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id x8sm6770181qkl.27.2019.07.14.16.43.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 16:43:47 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Fix alignment with open parenthesis
Date: Sun, 14 Jul 2019 20:43:33 -0300
Message-Id: <20190714234333.32747-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Fix 'CHECK: Alignment should match open parenthesis' reported by checkpatch.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/usb_ops.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index eef52d5c730a..2fc33ee969b2 100644
--- a/drivers/staging/rtl8712/usb_ops.c
+++ b/drivers/staging/rtl8712/usb_ops.c
@@ -37,8 +37,8 @@ static u8 usb_read8(struct intf_hdl *pintfhdl, u32 addr)
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 1;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 	return (u8)(le32_to_cpu(data) & 0x0ff);
 }
 
@@ -57,8 +57,8 @@ static u16 usb_read16(struct intf_hdl *pintfhdl, u32 addr)
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 2;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 	return (u16)(le32_to_cpu(data) & 0xffff);
 }
 
@@ -77,8 +77,8 @@ static u32 usb_read32(struct intf_hdl *pintfhdl, u32 addr)
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 4;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 	return le32_to_cpu(data);
 }
 
@@ -98,8 +98,8 @@ static void usb_write8(struct intf_hdl *pintfhdl, u32 addr, u8 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 1;
 	data = cpu_to_le32((u32)val & 0x000000ff);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 }
 
 static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
@@ -118,8 +118,8 @@ static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 2;
 	data = cpu_to_le32((u32)val & 0x0000ffff);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 }
 
 static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
@@ -138,8 +138,8 @@ static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 4;
 	data = cpu_to_le32(val);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index,
+				&data, len, requesttype);
 }
 
 void r8712_usb_set_intf_option(u32 *poption)
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
