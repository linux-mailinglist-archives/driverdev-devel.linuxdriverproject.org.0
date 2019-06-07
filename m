Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E70383E5
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 07:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 91CD42046E;
	Fri,  7 Jun 2019 05:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4bY25qqZ7OL; Fri,  7 Jun 2019 05:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB3B92044C;
	Fri,  7 Jun 2019 05:52:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B036A1BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD7E52036E
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M90XDCQ50FkU for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 05:52:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AFDF20356
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 05:52:35 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 81so527709pfy.13
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 22:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CmFqEcJ3VNaj9ijKAKVAqwYyQZzMZfiX/GyQUpT57+o=;
 b=lS/cbBKY+juSQwYNlefp5BGY1yMcvRTiEXjA4pofzJW7Zxz27IfgSt0B/PIN5Sy1p3
 D1ckVjciYVf/Wba8neZ7il2ahHIIf5nr2GFohyeAc8CzCG9MDx1aYun2MUiMFP8iDPQO
 vAIzjxzRikdoQi+EYBozcHcuV7zFs4sVwsPGpBwuXmAgAPy6Q01N1a38cyS5kgGc60Ig
 8EHAsxhcb+L8aE0wlMe0tBm62NclFEGVQ2xq6RM6TTzAh3vof5QtQbXhs90YedVvhFV9
 txo9t1mm1sO48D/Zu7ZHwumydtlZIlK+XFLTrUILqW7vgbeV2jSZbtrEDPml4oxnA2Jl
 esjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CmFqEcJ3VNaj9ijKAKVAqwYyQZzMZfiX/GyQUpT57+o=;
 b=kcSFnPesCj0UPlKpuPjnWWsrdlZXL5y9VMJpMnI8fVydljHotFr6Jy+S4RJYbWNYoW
 CvuZgewqSIMicxD2dNyvKnCru2WPDUACfL7FkoU24HQ9RwOBrodXyIoPyX0OkItAnz29
 aoHMal+UW/fdWQhcbMWsIrJDof8sqVlaFWg7apPbdCzzIYeSU2UYa04E7LjYwKWStaZH
 4A9UlP1LoTTb2J/xv+cp7awnz7EpWsw3srLXNAGlKt2nBRMj3i01X3p9dSSG927+2XjD
 aSGN7wNeTbMfKxD5e196vbiTvcfk+5IrMVgYVFLC48ePC1O3BxK+P/4J51np5rpHSIUr
 DQ1A==
X-Gm-Message-State: APjAAAUEtEBw5FU2SYn4Ld/7Gd1LsH8gFi9yzDxmG+lgzkci9DWgwCiD
 IeejbMI6vT/YSgNG7BWfL98vE2gT
X-Google-Smtp-Source: APXvYqzjY1stl/jV0RrG2iweKYKkCUns9qBVSUq7wSNzWpKgi1Nna7KarneX2XoPyCND2AY2Opjyvg==
X-Received: by 2002:a65:64d9:: with SMTP id t25mr1305990pgv.130.1559886754882; 
 Thu, 06 Jun 2019 22:52:34 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id d9sm861740pgl.20.2019.06.06.22.52.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:52:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] staging: rtl8712: usb_ops.c: Remove leading p from
 variable names
Date: Fri,  7 Jun 2019 11:22:08 +0530
Message-Id: <20190607055209.20954-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190607055209.20954-1-nishkadg.linux@gmail.com>
References: <20190607055209.20954-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove leading 'p' from the names of the following pointer variables:
- pintfhdl
- pintf_hdl (renamed to intfhdl in keeping with the convention in other
functions)
- poption
- pops
- pintfpriv.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/usb_ops.c | 84 +++++++++++++++----------------
 1 file changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_ops.c b/drivers/staging/rtl8712/usb_ops.c
index eef52d5c730a..e64845e6adf3 100644
--- a/drivers/staging/rtl8712/usb_ops.c
+++ b/drivers/staging/rtl8712/usb_ops.c
@@ -22,7 +22,7 @@
 #include "usb_ops.h"
 #include "recv_osdep.h"
 
-static u8 usb_read8(struct intf_hdl *pintfhdl, u32 addr)
+static u8 usb_read8(struct intf_hdl *intfhdl, u32 addr)
 {
 	u8 request;
 	u8 requesttype;
@@ -30,19 +30,19 @@ static u8 usb_read8(struct intf_hdl *pintfhdl, u32 addr)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x01; /* read_in */
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 1;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 	return (u8)(le32_to_cpu(data) & 0x0ff);
 }
 
-static u16 usb_read16(struct intf_hdl *pintfhdl, u32 addr)
+static u16 usb_read16(struct intf_hdl *intfhdl, u32 addr)
 {
 	u8 request;
 	u8 requesttype;
@@ -50,19 +50,19 @@ static u16 usb_read16(struct intf_hdl *pintfhdl, u32 addr)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x01; /* read_in */
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 2;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 	return (u16)(le32_to_cpu(data) & 0xffff);
 }
 
-static u32 usb_read32(struct intf_hdl *pintfhdl, u32 addr)
+static u32 usb_read32(struct intf_hdl *intfhdl, u32 addr)
 {
 	u8 request;
 	u8 requesttype;
@@ -70,19 +70,19 @@ static u32 usb_read32(struct intf_hdl *pintfhdl, u32 addr)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x01; /* read_in */
 	index = 0;
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 4;
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 	return le32_to_cpu(data);
 }
 
-static void usb_write8(struct intf_hdl *pintfhdl, u32 addr, u8 val)
+static void usb_write8(struct intf_hdl *intfhdl, u32 addr, u8 val)
 {
 	u8 request;
 	u8 requesttype;
@@ -90,7 +90,7 @@ static void usb_write8(struct intf_hdl *pintfhdl, u32 addr, u8 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x00; /* write_out */
@@ -98,11 +98,11 @@ static void usb_write8(struct intf_hdl *pintfhdl, u32 addr, u8 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 1;
 	data = cpu_to_le32((u32)val & 0x000000ff);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 }
 
-static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
+static void usb_write16(struct intf_hdl *intfhdl, u32 addr, u16 val)
 {
 	u8 request;
 	u8 requesttype;
@@ -110,7 +110,7 @@ static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x00; /* write_out */
@@ -118,11 +118,11 @@ static void usb_write16(struct intf_hdl *pintfhdl, u32 addr, u16 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 2;
 	data = cpu_to_le32((u32)val & 0x0000ffff);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 }
 
-static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
+static void usb_write32(struct intf_hdl *intfhdl, u32 addr, u32 val)
 {
 	u8 request;
 	u8 requesttype;
@@ -130,7 +130,7 @@ static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
 	u16 index;
 	u16 len;
 	__le32 data;
-	struct intf_priv *pintfpriv = pintfhdl->pintfpriv;
+	struct intf_priv *intfpriv = intfhdl->pintfpriv;
 
 	request = 0x05;
 	requesttype = 0x00; /* write_out */
@@ -138,13 +138,13 @@ static void usb_write32(struct intf_hdl *pintfhdl, u32 addr, u32 val)
 	wvalue = (u16)(addr & 0x0000ffff);
 	len = 4;
 	data = cpu_to_le32(val);
-	r8712_usbctrl_vendorreq(pintfpriv, request, wvalue, index, &data, len,
-			  requesttype);
+	r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
+				requesttype);
 }
 
-void r8712_usb_set_intf_option(u32 *poption)
+void r8712_usb_set_intf_option(u32 *option)
 {
-	*poption = ((*poption) | _INTF_ASYNC_);
+	*option = ((*option) | _INTF_ASYNC_);
 }
 
 static void usb_intf_hdl_init(u8 *priv)
@@ -163,24 +163,24 @@ static void usb_intf_hdl_close(u8 *priv)
 {
 }
 
-void r8712_usb_set_intf_funs(struct intf_hdl *pintf_hdl)
+void r8712_usb_set_intf_funs(struct intf_hdl *intfhdl)
 {
-	pintf_hdl->intf_hdl_init = usb_intf_hdl_init;
-	pintf_hdl->intf_hdl_unload = usb_intf_hdl_unload;
-	pintf_hdl->intf_hdl_open = usb_intf_hdl_open;
-	pintf_hdl->intf_hdl_close = usb_intf_hdl_close;
+	intfhdl->intf_hdl_init = usb_intf_hdl_init;
+	intfhdl->intf_hdl_unload = usb_intf_hdl_unload;
+	intfhdl->intf_hdl_open = usb_intf_hdl_open;
+	intfhdl->intf_hdl_close = usb_intf_hdl_close;
 }
 
-void r8712_usb_set_intf_ops(struct _io_ops	*pops)
+void r8712_usb_set_intf_ops(struct _io_ops *ops)
 {
-	memset((u8 *)pops, 0, sizeof(struct _io_ops));
-	pops->_read8 = usb_read8;
-	pops->_read16 = usb_read16;
-	pops->_read32 = usb_read32;
-	pops->_read_port = r8712_usb_read_port;
-	pops->_write8 = usb_write8;
-	pops->_write16 = usb_write16;
-	pops->_write32 = usb_write32;
-	pops->_write_mem = r8712_usb_write_mem;
-	pops->_write_port = r8712_usb_write_port;
+	memset((u8 *)ops, 0, sizeof(struct _io_ops));
+	ops->_read8 = usb_read8;
+	ops->_read16 = usb_read16;
+	ops->_read32 = usb_read32;
+	ops->_read_port = r8712_usb_read_port;
+	ops->_write8 = usb_write8;
+	ops->_write16 = usb_write16;
+	ops->_write32 = usb_write32;
+	ops->_write_mem = r8712_usb_write_mem;
+	ops->_write_port = r8712_usb_write_port;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
