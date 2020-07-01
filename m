Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 369C7211169
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 18:58:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ECE2E8926D;
	Wed,  1 Jul 2020 16:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zPRGBWncgGuf; Wed,  1 Jul 2020 16:58:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A776486DE7;
	Wed,  1 Jul 2020 16:57:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB341BF868
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 394A38926D
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HrFLo9dZtI7A for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 16:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A2A38925C
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 16:57:56 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id e11so22881514qkm.3
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 09:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i9+/GjSEEc7IqDOjdKKSFi+z5g58JvqTZ3s2qbSX/ko=;
 b=MMK43FUauGm3oj5f7opsVcbfLUNZIlw8GnpDKA6hed3fTx0bebwdaAyx+DHfuBE6K/
 N/pW9Y5hn+sxxc/0TpUJAWSCp0KTyvLhBIQ58FwNsiCC48obtyqfLyXSiPhtdY/G0FZL
 gJNRFKgm5iCGGlZ9foLJ+cGtmxnBOLPU2H8qcB1Ry3eqEeVjFepn0VH53WzLTGFbkDeT
 fWXEvd8UrixukXFBYoZgMjMbumGEPtsvbH0dlOkqzQgnrjWxKrubLqgtqNLSYkY7EVFl
 z58XUD4keZZfbJVjsJ084CNsTQiGl4jFKB8kkvBhjXOD5IrAuvUFX065SWCDh/AFFoa1
 zQgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i9+/GjSEEc7IqDOjdKKSFi+z5g58JvqTZ3s2qbSX/ko=;
 b=XSJJW3m/A2ssKt1iP8L3DgplsjIr4LUoEuu5uPDkvqnp6LQnIRJSSaMR2YD717ZViZ
 94K8ceArdKGkDG3P2n54gdZq8pRUBsqES0s3VVGe60VQz4QP2w2+cuVGStCiP43zbuM5
 icKeXNepea6Qm7ibMqEUw32Y7utwpB9NGnHmm2DIimk4pwegW9gI8mM4gAxG/E/B4STR
 Xxjtxm8JLhRJSA4ZyioFBUS8Sl2Muzwa4Ggwk1kePmm/lO6RvzA7ELt393g+Hg8vFnF4
 fGLzkUhm6KJNqXgrhXbmA3A+v7pwc/l2pGMLZX9999RUnfqYKrq+xJiNq4uy6HmSFJcN
 p8vQ==
X-Gm-Message-State: AOAM530lO4elx34sU+jQ9ng+XgBPVfzeOiNdINXYt430cqqTUV9Q9aUG
 OCMYOV7tXWUibWplvnUEtac=
X-Google-Smtp-Source: ABdhPJwzcGwP45fgxdx3hTw2Gc6eeWQuIs5EbzTQ/zMhxXEnqeVCPSJQa+6Nzqb3BwHdWxd8IzU0kQ==
X-Received: by 2002:a37:a8c7:: with SMTP id
 r190mr23770720qke.156.1593622675667; 
 Wed, 01 Jul 2020 09:57:55 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-214.178.011.pools.vodafone-ip.de. [178.11.230.214])
 by smtp.gmail.com with ESMTPSA id x14sm5890229qki.65.2020.07.01.09.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 09:57:55 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove unused parameter
Date: Wed,  1 Jul 2020 18:54:59 +0200
Message-Id: <20200701165459.8904-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused parameter 'padapter' from rtw_os_xmit_resource_alloc().

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c      | 6 +++---
 drivers/staging/rtl8188eu/include/xmit_osdep.h | 3 +--
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c  | 3 +--
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 258531bc1408..1b12afd33d95 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -124,10 +124,10 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->ext_tag = false;
 
 		/* Tx buf allocation may fail sometimes, so sleep and retry. */
-		res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
+		res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
 		if (res == _FAIL) {
 			msleep(10);
-			res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
+			res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
 			if (res == _FAIL)
 				goto exit;
 		}
@@ -162,7 +162,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		pxmitbuf->padapter = padapter;
 		pxmitbuf->ext_tag = true;
 
-		res = rtw_os_xmit_resource_alloc(padapter, pxmitbuf, max_xmit_extbuf_size + XMITBUF_ALIGN_SZ);
+		res = rtw_os_xmit_resource_alloc(pxmitbuf, max_xmit_extbuf_size + XMITBUF_ALIGN_SZ);
 		if (res == _FAIL) {
 			res = _FAIL;
 			goto exit;
diff --git a/drivers/staging/rtl8188eu/include/xmit_osdep.h b/drivers/staging/rtl8188eu/include/xmit_osdep.h
index 5283a6d53700..5fd8ca51f156 100644
--- a/drivers/staging/rtl8188eu/include/xmit_osdep.h
+++ b/drivers/staging/rtl8188eu/include/xmit_osdep.h
@@ -22,8 +22,7 @@ int rtw_xmit_entry(struct sk_buff *pkt, struct  net_device *pnetdev);
 
 void rtw_os_xmit_schedule(struct adapter *padapter);
 
-int rtw_os_xmit_resource_alloc(struct adapter *padapter,
-			       struct xmit_buf *pxmitbuf, u32 alloc_sz);
+int rtw_os_xmit_resource_alloc(struct xmit_buf *pxmitbuf, u32 alloc_sz);
 void rtw_os_xmit_resource_free(struct xmit_buf *pxmitbuf);
 
 void rtw_os_pkt_complete(struct adapter *padapter, struct sk_buff *pkt);
diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
index 017e1d628461..3ca1dc30efb7 100644
--- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
@@ -14,8 +14,7 @@
 #include <xmit_osdep.h>
 #include <osdep_intf.h>
 
-int rtw_os_xmit_resource_alloc(struct adapter *padapter,
-			       struct xmit_buf *pxmitbuf, u32 alloc_sz)
+int rtw_os_xmit_resource_alloc(struct xmit_buf *pxmitbuf, u32 alloc_sz)
 {
 	int i;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
