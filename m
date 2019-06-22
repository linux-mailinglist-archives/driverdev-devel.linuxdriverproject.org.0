Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034E74F722
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 18:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01DF4859E3;
	Sat, 22 Jun 2019 16:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mu7pca0ZvZYI; Sat, 22 Jun 2019 16:41:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7716684FD2;
	Sat, 22 Jun 2019 16:41:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD8AC1BF2FF
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BADC484FD2
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 16:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nB5h+5eryzCd for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 16:41:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EAF284B2D
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 16:41:16 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x15so5153512pfq.0
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 09:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=bfddTUlKO6se+VLq0VfMnq9Jkt0mYxtKJaFGDRxHeeE=;
 b=qd+8j6h2zxjzpicDhL90XpunLAbD3F7DpD27WMzsAJI7Eedu0VO2NKKwtDvkNvaXto
 eGluBun20fTxXsgI0MzUK5NW3JSJG1B+ZnEXl9NMjk5ln/A899sp28nNCKRBqlevihlf
 OoCCIHFC1bKlYq9C/SBsJFL1AHXqTPSmthEngKBDlHuZ3Zdyd6P+EbtosWOdHhseN+Du
 OMN2oV106VvIl9boTu/ZntjYyrzNMIL4lngDpwRuKpzNfixQCZHIr8qrZaQOs2p9h2Rq
 r7cYNxBLktcvbZm9v8V/rqW7rjEQpzG1tkGTGApqETx4DZ4mTzHIjy+u/mid+YajbSMj
 kzYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=bfddTUlKO6se+VLq0VfMnq9Jkt0mYxtKJaFGDRxHeeE=;
 b=cO9uLQnlRuTqSoKaeh6nnfjzENYQnwxkRODcx3NkzRm6NWgUM223wLEnuGKtp0g0/T
 dhTOBRkZw6D1sWsZoXd6fwBAYy5vF0unry09kEwg6Q6qtFnRGl41VHStJmtIOdoM7mJZ
 /9RohvVahauIzidV29Vvf/n5zRP0AL2l1a74mQF3lHpLktAdaoLSJgL30pDWNDDfCizO
 hFUfUNqFlPRsi4tsfKfRZRgnfYMCoTLK3V+d4w2M6zkM7pax+LxqVK+paLWv2P6tYefS
 Sl4cmfQOFq83TWyrRr03wonmOnyl+q3YfiCIogpAnnWkRomPEaMVfBTbV2rlwNtqnT3s
 mLWg==
X-Gm-Message-State: APjAAAVEX+zy/Sgo27J0K6BZaIPArX1DPFddW9y97DMG89M6oQlSayL7
 WDAwQLyLtS5WyVqcPq+01uQ=
X-Google-Smtp-Source: APXvYqz6/k67NNDcJEI+xl1saj4DMkIhRYpij+ZlCrOe4VQ0oRu6dZ1cuLVObCz6UN9zlWWNeaW1iw==
X-Received: by 2002:a17:90a:a385:: with SMTP id
 x5mr13803721pjp.76.1561221675861; 
 Sat, 22 Jun 2019 09:41:15 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id u5sm5809161pgp.19.2019.06.22.09.41.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 09:41:15 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 3/3] staging: rtl8723bs: os_dep: Change return type of
 rtw_init_default_value() to void
Date: Sat, 22 Jun 2019 09:40:42 -0700
Message-Id: <ab71fb523942b596da4b7ec3782ce1c1a209b41a.1561220637.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
In-Reply-To: <cover.1561220637.git.shobhitkukreti@gmail.com>
References: <cover.1561220637.git.shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtw_init_default_value() func always returns a value (u8)_SUCCESS.
Modified return type to void to resolve coccicheck warnings
of unneeded variable.

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 6b26af3..22d4461 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -601,9 +601,8 @@ void rtw_stop_drv_threads (struct adapter *padapter)
 	rtw_hal_stop_thread(padapter);
 }
 
-static u8 rtw_init_default_value(struct adapter *padapter)
+static void rtw_init_default_value(struct adapter *padapter)
 {
-	u8 ret  = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -665,7 +664,6 @@ static u8 rtw_init_default_value(struct adapter *padapter)
 	padapter->driver_ampdu_spacing = 0xFF;
 	padapter->driver_rx_ampdu_factor =  0xFF;
 
-	return ret;
 }
 
 struct dvobj_priv *devobj_init(void)
@@ -749,7 +747,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	RT_TRACE(_module_os_intfs_c_, _drv_info_, ("+rtw_init_drv_sw\n"));
 
-	ret8 = rtw_init_default_value(padapter);
+	rtw_init_default_value(padapter);
 
 	rtw_init_hal_com_default_value(padapter);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
