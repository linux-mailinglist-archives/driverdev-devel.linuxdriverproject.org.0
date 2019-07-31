Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57DB7CBA0
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 235548734E;
	Wed, 31 Jul 2019 18:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cYhLHjDJykM; Wed, 31 Jul 2019 18:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8375085A32;
	Wed, 31 Jul 2019 18:13:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 961BA1BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EBBD85521
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goRAlk_YYm-O for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88BB685533
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:13:15 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q10so32303744pff.9
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9regfs4H6BlWsMz5BCzcJHUVFDyZ++GsVZtuMHde6Fo=;
 b=N3kqSrUAEuS9N+2udAWErzqgBGuStT8UdG27h3ueYLSJvvI0BP/i9AmYI/9bpaHBxy
 toJmSLuHnDKDx44PqeCsHE+thVJxk5JmHixT2wcWLADDCuMrni7COHJ3FexJV9C49Xg5
 TINu+WDPYT0fHx0t7ZUqNCaINZsqWrjr8raOf7eSU41dm5PNKlBsDZ3zIObjjCUiCirY
 a0XRJj1v0p/SqKf/7rHxQSBygcwI5T5IbOxiYtCSVDNIKgAl3EYDqAQYjWMGB9sPL9oW
 ao9FPr4qERey8Q021ItBqgLt9Y9K+lF0ogH1PvzMXkK50IBqqV5RV0j+4nZCwavGcR28
 kpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9regfs4H6BlWsMz5BCzcJHUVFDyZ++GsVZtuMHde6Fo=;
 b=W5926+YpBW8nEsD35CZjN6Od6m/MP9qguOEXSFcI6sLTwOpVm1JBao+M6ViCD0Yl7v
 Jv7Km7+K2rWlfmOiSOcDirDRQhIzL190vp+5Od5g7mygMG+cbdKilBW3WSaTCWZ2rdAo
 nA0RQX5uYuLV1MdF2kspudp4uiwMVrsK9a6ElFVkN1QZyQjMk6pV5A+EGx1jvFlOV7J1
 a2xqZCsxkcTqWGmVVLwzUReZI1LK1XYp5kCpc/IIoM15fCp8pEbxrT83rfbk+UM+QhxJ
 ruLfIZ9vGJCtqMlJDMkGCqdEcC1RWDNJTt31ylPef155dY5srJ9HQdqXJRcw6WzBJLRT
 Q7gQ==
X-Gm-Message-State: APjAAAWvX7fl7StCXyKNZ0zoBuOgxUjpzwpvMSctpIJ2jibMhEyy9cya
 fHA2jIdzoIgcQgDs6V105Fw=
X-Google-Smtp-Source: APXvYqyZE4lE3knf8hC9PqC4c8tK+JevUkC/1rjtSkUwBJMTQpJyzBZu/Nl3L/DhgXbNiCX+o0ZMZQ==
X-Received: by 2002:a63:4e05:: with SMTP id c5mr3036987pgb.333.1564596795052; 
 Wed, 31 Jul 2019 11:13:15 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id k25sm57646756pgt.53.2019.07.31.11.13.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:13:14 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:43:09 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [Patch v2 02/10] staging: rtl8723bs: os_dep: Move common code to func
Message-ID: <20190731181309.GA9159@hari-Inspiron-1545>
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

Inthis file all functions has below common functionality
1.Check flag padapter->bSurpriseRemoved
2.Get sdio_func structure from intf_hdl.

This patch introduces two new APIs
rtw_isadapter_removed,rtw_sdio_get_func which helps to do above common
functionality.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 149 ++++++----------------
 1 file changed, 41 insertions(+), 108 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index 50b8934..126429e 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -26,26 +26,38 @@ inline void rtw_sdio_set_irq_thd(struct dvobj_priv *dvobj, void *thd_hdl)
 	sdio_data->sys_sdio_irq_thd = thd_hdl;
 }
 
-u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
+static s32 rtw_isadapter_removed(struct intf_hdl *pintfhdl)
 {
 	struct adapter *padapter;
+
+	padapter = pintfhdl->padapter;
+	return padapter->bSurpriseRemoved;
+}
+
+static struct sdio_func *rtw_sdio_get_func(struct intf_hdl *pintfhdl)
+{
 	struct dvobj_priv *psdiodev;
 	struct sdio_data *psdio;
 
+	psdiodev = pintfhdl->pintf_dev;
+	psdio = &psdiodev->intf_data;
+
+	return psdio->func;
+}
+
+u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
+{
 	u8 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -65,23 +77,15 @@ u8 sd_f0_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
  */
 s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0, i;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	for (i = 0; i < cnt; i++) {
 		pdata[i] = sdio_readb(func, addr+i, &err);
@@ -100,24 +104,16 @@ s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -135,23 +131,15 @@ s32 sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0, i;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	for (i = 0; i < cnt; i++) {
 		sdio_writeb(func, pdata[i], addr+i, &err);
@@ -170,24 +158,16 @@ s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
  */
 s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -200,24 +180,16 @@ s32 sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 
 u8 sd_read8(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	u8 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -234,21 +206,19 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 {
 	struct adapter *padapter;
 	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	u32 v = 0;
 	struct sdio_func *func;
 	bool claim_needed;
 
 	padapter = pintfhdl->padapter;
 	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
 	if (padapter->bSurpriseRemoved) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return v;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -295,22 +265,15 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 
 void sd_write8(struct intf_hdl *pintfhdl, u32 addr, u8 v, s32 *err)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -326,20 +289,18 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
 {
 	struct adapter *padapter;
 	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 
 	padapter = pintfhdl->padapter;
 	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
 	if (padapter->bSurpriseRemoved) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -398,23 +359,15 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
  */
 s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	int err = -EPERM;
 	struct sdio_func *func;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 
 	if (unlikely((cnt == 1) || (cnt == 2))) {
 		int i;
@@ -453,23 +406,18 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 
 	struct sdio_func *func;
 	bool claim_needed;
 	s32 err = -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
 
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
-	func = psdio->func;
+
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
@@ -497,24 +445,16 @@ s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
-
 	struct sdio_func *func;
 	u32 size;
 	s32 err =  -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 /*	size = sdio_align_size(func, cnt); */
 
 	if (unlikely((cnt == 1) || (cnt == 2))) {
@@ -555,23 +495,16 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
  */
 s32 sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 {
-	struct adapter *padapter;
-	struct dvobj_priv *psdiodev;
-	struct sdio_data *psdio;
 	struct sdio_func *func;
 	bool claim_needed;
 	s32 err =  -EPERM;
 
-	padapter = pintfhdl->padapter;
-	psdiodev = pintfhdl->pintf_dev;
-	psdio = &psdiodev->intf_data;
-
-	if (padapter->bSurpriseRemoved) {
+	if (rtw_isadapter_removed(pintfhdl)) {
 		/* DBG_871X(" %s (padapter->bSurpriseRemoved ||adapter->pwrctrlpriv.pnp_bstop_trx)!!!\n", __func__); */
 		return err;
 	}
 
-	func = psdio->func;
+	func = rtw_sdio_get_func(pintfhdl);
 	claim_needed = rtw_sdio_claim_host_needed(func);
 
 	if (claim_needed)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
