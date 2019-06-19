Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B48E4AF13
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 02:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF5BB85AA1;
	Wed, 19 Jun 2019 00:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9E6tBE9CYA1k; Wed, 19 Jun 2019 00:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FECD85C06;
	Wed, 19 Jun 2019 00:38:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EF091BF2B0
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A37620512
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gf2+OfTYsMaV for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:38:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E7A992050B
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:38:16 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s21so8573117pga.12
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Bl4ZB5AKo3Ojo0KbLAkYeawsDDC/1j35REkKvkzHQM0=;
 b=MworLe621CZHwckohZ2C4nmq/YIMa1LI0E8FN1pI8fMmJvLNo2DEEveri1heBM/hJD
 1K4CKSNqVayTjkso6YQDeD1CoHCb1XzRVnDnSGnd5Dd8sWiuNyzVoFJ3qX4L1QVVZqG1
 kWDD5BhDR3uD/zaa2hOgqsSodTpCy8rEYwq+t6XqfHYtIfZAK5huEGB2xXYHQtTvf62A
 E9sbtnjpUwh6L7xQ/vMWeWlhvevL/NYGQZG9di0qdtGPk5ZU9GUnhD+kUCjut+knshN9
 fw243ECi61MReDKY83ml3sDWoU9d7KafH5MxYrsHPjXHusm2ogVg90ddhWyezegqm2p0
 aoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Bl4ZB5AKo3Ojo0KbLAkYeawsDDC/1j35REkKvkzHQM0=;
 b=EkYjr/Daefc2s2WwCtOoXy+XHLS1Aumrd+1SHwb5FWsiaykIK4Z0At1dSavcHgVVKc
 VA4VYT0LbifIb5aO5Ah63jFVzMyclOow611gtEqTc+gq9JPzOZwSRha5nl5cp06e9F63
 Wj95sOHFmPtKWqtOmGYSlwKzsIUTBsIBR7+KqbKSQp+PGux06/9pPgkBHk40tOu3XHab
 SqSOEsqiz4cCcuH8XOjGe85MIIX6jujx6xK5XoK+hpuL6YdWc4Y/W/7bXgGD/jtnanCO
 legz1vwNkBFQHIAxet3cL6+g1LduOPzeyVUxKq/DV3XOIeNlX6c26yZuvSFamabgm8n9
 Xh5g==
X-Gm-Message-State: APjAAAUrN7+4oxy4GgRA77PrEKqlXTEJaFX7V79y7W20nPKy8G51+wPP
 n8NsBwM/MngHqdOmsVJVn/w=
X-Google-Smtp-Source: APXvYqxdQXfcEw5nDEvmxOBSuO3mvsAjfKKWbCMNtwtt2e0y4vACYU+tMrqg8cgMJN4pLqXNzSZcfQ==
X-Received: by 2002:a63:1658:: with SMTP id 24mr4422453pgw.167.1560904696454; 
 Tue, 18 Jun 2019 17:38:16 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id x26sm14217860pfq.69.2019.06.18.17.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 17:38:16 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 3/3] staging: rtl8723bs: Fix Indentation Error: code indent
 should use tabs where possible
Date: Tue, 18 Jun 2019 17:37:34 -0700
Message-Id: <e111358b9aca77380a9d93f11e971079600869a3.1560903975.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <20190618070019.GA20601@kroah.com>
 <cover.1560903975.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1560903975.git.shobhitkukreti@gmail.com>
References: <cover.1560903975.git.shobhitkukreti@gmail.com>
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
 Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>,
 Joe Perches <joe@perches.com>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve indentation errors which were caused by a mix of space and tabs
for indentation. Previous patch to fix if-else brace styles revealed
the indentation error

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  6 ++---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  | 36 +++++++++++++--------------
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 746f074..643cacc 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -202,9 +202,9 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 
 	memset(&ev, 0x00, sizeof(ev));
 	if (bgroup) {
-	    ev.flags |= IW_MICFAILURE_GROUP;
+		ev.flags |= IW_MICFAILURE_GROUP;
 	} else {
-	    ev.flags |= IW_MICFAILURE_PAIRWISE;
+		ev.flags |= IW_MICFAILURE_PAIRWISE;
 	}
 
 	ev.src_addr.sa_family = ARPHRD_ETHER;
@@ -297,7 +297,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
 	RT_TRACE(_module_recv_osdep_c_, _drv_info_, ("\n rtw_recv_indicatepkt :after rtw_os_recv_indicate_pkt!!!!\n"));
 
-        return _SUCCESS;
+	return _SUCCESS;
 
 _recv_indicatepkt_drop:
 
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 9c408d9..540a7ee 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -100,26 +100,26 @@ static int sdio_alloc_irq(struct dvobj_priv *dvobj)
 
 static void sdio_free_irq(struct dvobj_priv *dvobj)
 {
-    struct sdio_data *psdio_data;
-    struct sdio_func *func;
-    int err;
-
-    if (dvobj->irq_alloc) {
-        psdio_data = &dvobj->intf_data;
-        func = psdio_data->func;
-
-        if (func) {
-            sdio_claim_host(func);
-            err = sdio_release_irq(func);
-            if (err) {
+	struct sdio_data *psdio_data;
+	struct sdio_func *func;
+	int err;
+
+	if (dvobj->irq_alloc) {
+		psdio_data = &dvobj->intf_data;
+		func = psdio_data->func;
+
+		if (func) {
+			sdio_claim_host(func);
+			err = sdio_release_irq(func);
+			if (err) {
 				dvobj->drv_dbg.dbg_sdio_free_irq_error_cnt++;
 				DBG_871X_LEVEL(_drv_err_,"%s: sdio_release_irq FAIL(%d)!\n", __func__, err);
-            } else
-		dvobj->drv_dbg.dbg_sdio_free_irq_cnt++;
-            sdio_release_host(func);
-        }
-        dvobj->irq_alloc = 0;
-    }
+			} else
+				dvobj->drv_dbg.dbg_sdio_free_irq_cnt++;
+			sdio_release_host(func);
+		}
+		dvobj->irq_alloc = 0;
+	}
 }
 
 #ifdef CONFIG_GPIO_WAKEUP
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
