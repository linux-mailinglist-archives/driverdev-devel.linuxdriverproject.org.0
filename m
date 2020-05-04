Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBC11C41F8
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 19:15:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F252B8843E;
	Mon,  4 May 2020 17:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W08WXK0e51LR; Mon,  4 May 2020 17:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 096848844C;
	Mon,  4 May 2020 17:15:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2281BF328
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 17:15:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 79D2F86914
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 17:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kOOypzTREgh for <devel@linuxdriverproject.org>;
 Mon,  4 May 2020 17:15:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D94578690E
 for <devel@driverdev.osuosl.org>; Mon,  4 May 2020 17:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588612478;
 bh=Xn2gavpIWQ0DU9ZY9hafpAe5jpDKjLmd0xje7CYpgmc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=EfYfqCXCZOqypRU3p1pX4jc+GeXcmvn5DmOxGyxMF8hG/L/+kTn8CUr9hfg5/CQqC
 k9ExJJXq/vVZNR99F6rFwWBPKo+4R/xr2Xe47SRP8oiwXBlw8SI7fS+xT4DIXGp/hN
 dJklvHLbNmGEcfPx2CfcM6vT5cmA903mzQNn/c2o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M59C8-1jWkbS1PZk-001Ceo; Mon, 04 May 2020 19:14:38 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use const for read only data
Date: Mon,  4 May 2020 19:14:14 +0200
Message-Id: <20200504171414.11307-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:W2BgVsJlKeKnlRgESKOPI70DFJmdz7SkMPgF8b+m6IATUWf0mPI
 KKSPRPKZ1EgVG84VYUssGWlM2SqASk7qlKkU7wQuqRzHaKiC/2rZOMnepl57EltmRZaZ4IM
 WcESfzrgRVEHk97ee7paRX12EwKW1lJYwnwkHoftWHbSGWZYjY/2ns2LPXZW5e2Te00hRHc
 QvmAB73sK7FRrVmbV0tUw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:oiEO+z/IRwU=:VBHum2bZZDCoQ5X0LiFcnP
 Fv+lM12uZzd09aYz2aHCVQAXvUfPL7Mqzg9pfmEsCPtuSHVmISFuuqhHrKsAacMOEF0hneQ08
 KuTJDW+kLWgxGr6GAatzkdwKN3ZXwOhCd6UG74vfUiPvq68zLh1Hd5VjYoHg69hbVC3skEdJZ
 rcIXFDfDepNuoqVMcUQaRWrLK/kiaLqhnrjcTx0clTfNaSeueiVh7kwC+HeKftY9lQMF2RGQu
 +n6s1jBg94xAkxu5lL0e2H8W1bayZ/wgatPzHzsgaD2MP7/iXGQqf2IxjXqPfM0pOrwfbPCVw
 /FrfI91XSjZinrTVU7sdqshrmkCxVhIrIY9PwzrTI7GPxb1R4rRjaJlVwP+rz8b9a3Pu6cCv1
 GrbydcouhUv9IovoR5nwdsfVAdyIxwiqf9uq9UMoH0dscPRLHpH54I5kwROy0ZyLCaq9tGq2g
 jOmeqfily2/NgcZOaousIEOtBX+2YKx8iCiqf396jYH0iz5pAsU4QIzJ9m6zho/Yf3H2SpGlT
 qxLMeHDW48mF/Xk9LROXKc5TjnB6J6ACObZw6205IKD4f3TUakOapGDM/USF1ps7O2RRHmA2/
 Jr6kGLpIJrjdbjn0pbrvKGtVYMAb4SNILlNEn0it6IGewb3sWGCNGbIKWcjqCwwiIvC6cW2sc
 0MMBP8shNHe5Dv//L4nhnUe4k/R0utDmn0ma7AM3dnzLdSCgZ2riextecw9wQzBVHojT9cR/9
 fZpN9NerEz2uSmrKA9DNBL1Md+YyKna0Vy9wB8HVlkhxCL3poqzFVtZn1KPebwGsw2TR8p2Xe
 5Zzw0yayAKHiHOialvE7EeXiQ0+Rgj3dR/2tC9B1ChfRq+2uld8Hs7YvwGRlbwB3wMp8QrPFt
 2N29npzjk5Fj/wabiyE8md6MDcuFwFpijrDfkX2bNrBGAAuVd6rD9OVuWobcaB08Cv6Besy9j
 s1Zq5NNOwJZ7DhJeFuGAxYAfOT7ns6av5fO/5B1cQnuSbwx2DsBeEpMVwwSEwYYIj1aOG8dWw
 Ix8taN5lTbwSf+pjTwd8tlWwSu9yeuV0VqWxabLummNw4UM88AvNEaEh/8sTF7n9lgaodp98u
 Cb7dHAR8WMAExacUF/sFXhWz37FPR4dgcIDEVaPTy6R9Wl+4D2GJ6m567KAvE5oVGyiOKolHR
 EFySnlAU+HS/11DSfZxEkTidMcB2EKzrNTXHauZaGPUg176Kig+x6kDGzDYvY2b113RnAfNni
 Em9QK2C0PXiegChfw
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
Cc: devel@driverdev.osuosl.org, Benjamin Sherman <benjamin@bensherman.io>,
 Oscar Carter <oscar.carter@gmx.com>, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use const for the arrays that are used as "read only". Also, modify the
prototype of vnt_control_out_blocks() function to use a pointer to a
const type.

The vnt_vt3184_al2230 array can't be converted to const as it's modified
later.

Then in the vnt_vt3184_init() function use two types of pointers (to
const type and to no const type) to avoid the compiler warning:

assignment discards 'const' qualifiers from pointer target type

This way decrease the .data section and increase the .rodata section
limiting the surface attack.

Before this change:
-------------------

drivers/staging/vt6656/baseband.o  :
section              size   addr
.text                1278      0
.data                 576      0
.bss                    0      0
.rodata               319      0
.comment               45      0
.note.GNU-stack         0      0
.note.gnu.property     32      0
Total                2250

After this change:
------------------

drivers/staging/vt6656/baseband.o  :
section              size   addr
.text                1278      0
.data                 256      0
.bss                    0      0
.rodata               640      0
.comment               45      0
.note.GNU-stack         0      0
.note.gnu.property     32      0
Total                2251

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 14 +++++++++-----
 drivers/staging/vt6656/usbpipe.c  |  2 +-
 drivers/staging/vt6656/usbpipe.h  |  2 +-
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 1d75acaec8f3..41ae779ec61f 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -31,7 +31,7 @@
 #include "rf.h"
 #include "usbpipe.h"

-static u8 vnt_vt3184_agc[] = {
+static const u8 vnt_vt3184_agc[] = {
 	0x00, 0x00, 0x02, 0x02, 0x04, 0x04, 0x06, 0x06,
 	0x08, 0x08, 0x0a, 0x0a, 0x0c, 0x0c, 0x0e, 0x0e, /* 0x0f */
 	0x10, 0x10, 0x12, 0x12, 0x14, 0x14, 0x16, 0x16,
@@ -78,7 +78,7 @@ static u8 vnt_vt3184_al2230[] = {
 };

 /* {{RobertYu:20060515, new BB setting for VT3226D0 */
-static u8 vnt_vt3184_vt3226d0[] = {
+static const u8 vnt_vt3184_vt3226d0[] = {
 	0x31, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,
 	0x70, 0x45, 0x2a, 0x76, 0x00, 0x00, 0x80, 0x00, /* 0x0f */
 	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
@@ -243,7 +243,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 {
 	int ret;
 	u16 length;
-	u8 *addr;
+	u8 *addr = NULL;
+	const u8 *c_addr;
 	u8 data;

 	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0, MESSAGE_REQUEST_EEPROM,
@@ -275,7 +276,7 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		   (priv->rf_type == RF_VT3342A0)) {
 		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
 		length = sizeof(vnt_vt3184_vt3226d0);
-		addr = vnt_vt3184_vt3226d0;
+		c_addr = vnt_vt3184_vt3226d0;

 		priv->bb_vga[0] = 0x20;
 		priv->bb_vga[1] = 0x10;
@@ -291,8 +292,11 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		goto end;
 	}

+	if (addr)
+		c_addr = addr;
+
 	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
-				     MESSAGE_REQUEST_BBREG, length, addr);
+				     MESSAGE_REQUEST_BBREG, length, c_addr);
 	if (ret)
 		goto end;

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 91b62c3dff7b..fb5e1b0dce6b 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -77,7 +77,7 @@ int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
 }

 int vnt_control_out_blocks(struct vnt_private *priv,
-			   u16 block, u8 reg, u16 length, u8 *data)
+			   u16 block, u8 reg, u16 length, const u8 *data)
 {
 	int ret = 0, i;

diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index 35697b58d748..1f0b2566c288 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -52,7 +52,7 @@ int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 ref_off, u8 data);
 int vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data);

 int vnt_control_out_blocks(struct vnt_private *priv,
-			   u16 block, u8 reg, u16 len, u8 *data);
+			   u16 block, u8 reg, u16 len, const u8 *data);

 int vnt_start_interrupt_urb(struct vnt_private *priv);
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb);
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
