Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1D3475DE
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 18:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 070D5875DA;
	Sun, 16 Jun 2019 16:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dihNe2dJ6heF; Sun, 16 Jun 2019 16:20:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7795387592;
	Sun, 16 Jun 2019 16:20:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D39061BF316
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C476884D2E
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 16:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHnol36MiHja for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 16:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3BCF684CAC
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 16:20:31 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id c14so3077062plo.0
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 09:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Au6/WyDNACQkvCtxbinZw6P6/1CJJirTWVuy4x6hlXM=;
 b=PG/InyAlymO5kMZLxjuKB2Evn/4/c57Jkw6JwTBkacRYyQihPP2fDhrPxBvznIu7lh
 RhRgAJrQzxcSLtu74AHxweDgNR6Wvxxb8j2Rlxp44+bHPHqkcQ/Xzrr1rDIdZtJv3D2q
 pNQrb4xhVhze2LhAyYtUZ4pbNjYLj7iVuWHVt3OHEgWLQvUntgcvS0Ug9SdeHHZlhR53
 W0325oRl+TdB9OnsmcnyapSzsLwVphDtydXNvwgzm0jNgod9EwbXyd6ZICXL2DqxSze9
 3MQxPOFTah0erY64gnznveq/L8rYJHIJrM8nw/Zes0QkZ5Uyaaju+IDFaX9i/1RsfGvU
 KflQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Au6/WyDNACQkvCtxbinZw6P6/1CJJirTWVuy4x6hlXM=;
 b=ExbbREnA8umukyVNSJVebxT5bp03RfRc/pBYYKfqv8cWh9tyKQXXrM3zU7cZregJyZ
 5G2GRzMOBjQc2z4U5sm2WvUr+urJjRRd+7z6qJQBAwQvIv6X+uCTP3xcryN8rI5k9Z2s
 mfrr9c7p5MCS+AKzI47RrQmGxU7UiYjbFNj96kk+oPWZTuKJXOJixLBq6KbxUlReDYvR
 Xc0aipJ2txk/9UiotRSpr1BXfCyXDv4ecMe9bb7+PWVdvBWM4xToVFZOc43A3wfKQHKT
 UyYaSCn/FiNn/o5DcIoLLWz42ruFa+eyzb/icMU3k6R5HpPbf6d2JScJcW6OtTP0rchX
 5qJg==
X-Gm-Message-State: APjAAAXmNvfd0bP1dpb6LUaGsrYLAaz41spSEHdanL01nObadFzJOX7S
 nSVe2qRQp0ukU+kjmyWtOAI=
X-Google-Smtp-Source: APXvYqzYoz33MPMA3GnzvCwSZ6ixIJmW31EWi1E0OZogVdT6unKCNeC/Q9hUcXP8GcV7WkGWOgqWXQ==
X-Received: by 2002:a17:902:ba82:: with SMTP id
 k2mr96966428pls.323.1560702030707; 
 Sun, 16 Jun 2019 09:20:30 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id 8sm1687908pgc.13.2019.06.16.09.20.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 16 Jun 2019 09:20:30 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: [PATCH v3 3/3] staging: rtl8723bs: Fix Indentation Error: code indent
 should use tabs where possible
Date: Sun, 16 Jun 2019 09:19:51 -0700
Message-Id: <e362a922ef94022563ec3821a45c95d20d1c0b10.1560701271.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1560701271.git.shobhitkukreti@gmail.com>
References: <20190616131145.GA30779@t-1000>
 <cover.1560701271.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1560701271.git.shobhitkukreti@gmail.com>
References: <cover.1560701271.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Bastien Nocera <hadess@hadess.net>, Shobhit Kukreti <shobhitkukreti@gmail.com>,
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
index aab0195..8695127 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -203,9 +203,9 @@ void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup)
 
 	memset(&ev, 0x00, sizeof(ev));
 	if (bgroup) {
-	    ev.flags |= IW_MICFAILURE_GROUP;
+		ev.flags |= IW_MICFAILURE_GROUP;
 	} else {
-	    ev.flags |= IW_MICFAILURE_PAIRWISE;
+		ev.flags |= IW_MICFAILURE_PAIRWISE;
 	}
 
 	ev.src_addr.sa_family = ARPHRD_ETHER;
@@ -298,7 +298,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 
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
