Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE6E7CBCD
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5946487364;
	Wed, 31 Jul 2019 18:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuMHbx5tZg9u; Wed, 31 Jul 2019 18:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B23408710D;
	Wed, 31 Jul 2019 18:21:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 633541BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 609A520373
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F70gaP+crNct for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by silver.osuosl.org (Postfix) with ESMTPS id D87BD2035C
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:21:09 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id c2so30815048plz.13
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=dkFZjVxhLg5nUBZBwLUZXfe8WesR8N6+UbConjepUGg=;
 b=XO7Q045V4NUHekNM727e11s2Hin3uH7R4fJpX+7PKmq38/QWde10CmJmFUmTRQsI29
 R3DbbjSCtF3a0Jbg/Wv9rqkpNMxRa79EoadaxLOnd9KCQ2AMCOpjl0DTikacHfaB4uMZ
 9EC3ZW0mjMiWAAl1R51R49k9MnxgPjFjJYGorT90WubZ5QMUDD2SPuxkVwFVFCMtL3a/
 AVrekYjGzush1DEPMnpVdtWieFvV2jsLVehLmuakdZCJ6/+W/CN3ZQwOWz4VxA+hxe4v
 ow7kxUPcGHT/M4F6z5hkqJXfseD7k3EFsllDrMt3zL4NYsUzydkf0PU/trD2yJzE8Dcj
 VGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=dkFZjVxhLg5nUBZBwLUZXfe8WesR8N6+UbConjepUGg=;
 b=lzLEGT7UQPhtjYrp4L0SdgyqAy49AKSY268lx1QjYhryvFF0bYecj9MDa4u7GTRequ
 caFEx1gvp/Ys4ZL+ZX79F7sKQNe8eMDICxzY4qBy17w7bVVkFIsLa4Z5PsiP6KuVcumR
 0TsljtT+J9/zMZl3ealU046T0syh1uqrPIYHI+LOIfoE1pHwX4GgP6c3nVbLEWg47xSX
 f461eyOPFe4slATY+HT88Ck1KmuE57WOKQr4lGsFTtLy4i6ftcQUbji3jAtH8F7jE3T6
 X88x005o/hnHjcarwrDdktsgYrn1if6RuGtSW60mRDSwSQPtjzdxq31LwzM9m9eHb9hq
 fQ5g==
X-Gm-Message-State: APjAAAVsd7gT1OgIlCZbXRdHI9W5mRTN0V/hecfcUofdUV2s5GYIIKkA
 9rOBYHjHvriomtOW/7wYHQU=
X-Google-Smtp-Source: APXvYqxhc6rBwB828OfKzoKZKB44oQViEuHs5TVaTW4pjaA0GRwu0HIXWKsdrv3YY6rp6WF/vWLkFA==
X-Received: by 2002:a17:902:e613:: with SMTP id
 cm19mr113868926plb.299.1564597269551; 
 Wed, 31 Jul 2019 11:21:09 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id k6sm78719059pfi.12.2019.07.31.11.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:21:09 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:51:03 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Subject: [Patch v2 07/10] staging: rtl8723bs: Remove unneeded function
 argument for init_addba_retry_timer
Message-ID: <20190731182103.GA9617@hari-Inspiron-1545>
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

init_addba_retry_timer does not use padapter, so only keep psta

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c     | 2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index bdc52d8..39c3482 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -262,7 +262,7 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 			)
 		);
 
-		init_addba_retry_timer(pstapriv->padapter, psta);
+		init_addba_retry_timer(psta);
 
 		/* for A-MPDU Rx reordering buffer control */
 		for (i = 0; i < 16 ; i++) {
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index fd3cf95..bdbf15f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -539,7 +539,7 @@ void init_mlme_ext_priv(struct adapter *padapter);
 int init_hw_mlme_ext(struct adapter *padapter);
 void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
 extern void init_mlme_ext_timer(struct adapter *padapter);
-extern void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta);
+extern void init_addba_retry_timer(struct sta_info *psta);
 extern struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv);
 
 /* void fill_fwpriv(struct adapter *padapter, struct fw_priv *pfwpriv); */
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index 52a5b31..038036d 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -179,7 +179,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	}
 }
 
-void init_addba_retry_timer(struct adapter *padapter, struct sta_info *psta)
+void init_addba_retry_timer(struct sta_info *psta)
 {
 	timer_setup(&psta->addba_retry_timer, addba_timer_hdl, 0);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
