Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3D522789
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 19:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCAF4858B8;
	Sun, 19 May 2019 17:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JL9VoryQunR6; Sun, 19 May 2019 17:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24DEE857D1;
	Sun, 19 May 2019 17:12:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2D001BF5A4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF7C021FA9
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 17:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DocA6+TiPfUo for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 17:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 38CD0207A6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 17:12:34 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t187so5592954pgb.13
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 10:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2aJVDwIx9CNCJgquAEUdJfowE2zu/TP85bAx23aqgcE=;
 b=aa1xhBGV+J6MUtB32Shj+5dPHvNdaqFAnSUVX2fFGJSKdL62Clq1dNrTbNuhBZxCOg
 19a+Bbu50onEJQS/Vqmzcjl47CKbkJ8sj5jM/NPFw5mrhv942OOjwHDJE0QhP1w+6zZf
 mPIWoXmcpbXCTQGFBnrnE6wMgKkap7wymXycMEkT9WWwv+aAd4xBQ5BqDP5M9X3PTxfZ
 n79Uj7yFVO/tdfrDtb121GelXnybzzqQZ6A8l8rsbGa4JkeEa05RH+Ora5oMf8PYj/v8
 axxgVQHGFBrCp1dC/dtFDbgvYfOaoRkkFrVJafB3kxZJmllbPEAU5bWDyIazb8YJKv5j
 TlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2aJVDwIx9CNCJgquAEUdJfowE2zu/TP85bAx23aqgcE=;
 b=VPsf39aR82o48S8jnEDz+qpVBVGSV63nId/45w4Eb+G4QeKJTTXq/a+oYdHMU+gCQT
 3PB8lvr5ShHW4QcCBXTONtUKuwG4e7OgOkPbnTczWvuhc/rkjpvyAb5ej3xlo2sJboIr
 Wpx30ae1/5H+mIuX3JEulCBboAgBFNscjWIrHARukxuiwr8NUnKN5ozS08y9eqOFAQKV
 9rrfMN8rkpSaQuHzHOHqbz2M9uIMXNKcQnam+Jj1Ip1PTeGDqhOyqJ6dWO1q+sgRHmMp
 W8lKnnSiiHVHT8CLCp/JNKeZ00AjnNQWH4dUtzXimiqBLTvbwoz0zC8m5rjoEtsFO9E1
 LtCg==
X-Gm-Message-State: APjAAAVUTElw2GD5jUWE0pia6/RGGQoHdLQJb3DLjdRh8c+RJZWVSa1b
 84SHOYRe85Rxzsx+raobwU0=
X-Google-Smtp-Source: APXvYqxsn5ZvQTyKQYV5eB5cw3Gz6/f1BFVE0KCPTTWYwjlRlpndUVeNuqyi3oOVshg2U+TQzzQflQ==
X-Received: by 2002:aa7:9289:: with SMTP id j9mr30426595pfa.251.1558285953896; 
 Sun, 19 May 2019 10:12:33 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id c76sm28951727pfc.43.2019.05.19.10.12.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 10:12:33 -0700 (PDT)
Date: Sun, 19 May 2019 22:42:27 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Young Xiao <YangX92@hotmail.com>, Aymen Qader <qader.aymen@gmail.com>,
 Henriette Hofmeier <passt@h-hofmeier.de>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: rtw_mlme_ext: fix warning Unneeded
 variable: "ret"
Message-ID: <20190519171227.GA8089@hari-Inspiron-1545>
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

This patch fixes below warnings reported by coccicheck

drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:1888:14-17: Unneeded
variable: "ret". Return "_FAIL" on line 1920
drivers/staging/rtl8723bs/core/rtw_mlme_ext.c:466:5-8: Unneeded
variable: "res". Return "_SUCCESS" on line 494

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d110d45..6a2eb66 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -463,7 +463,6 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
 
 int	init_mlme_ext_priv(struct adapter *padapter)
 {
-	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
@@ -491,7 +490,7 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 	pmlmeext->fixed_chan = 0xFF;
 #endif
 
-	return res;
+	return _SUCCESS;
 
 }
 
@@ -1885,7 +1884,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
 
 unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
 {
-	unsigned int ret = _FAIL;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
@@ -1917,7 +1915,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
 	}
 
 exit:
-	return ret;
+	return _FAIL;
 }
 
 unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_frame)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
