Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFC428514
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 19:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B65D687E30;
	Thu, 23 May 2019 17:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NqZXks93SuK4; Thu, 23 May 2019 17:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DCE087E59;
	Thu, 23 May 2019 17:39:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1942C1BF973
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 17:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 130B986ADD
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 17:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gl3vQP4Gx7G2 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 17:39:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A406086ACB
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 17:39:47 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g9so3616411pfo.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 10:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DdCWM/RhsOQBi0pr1uXjXm1hyU+XOF2nH7K19lGI0JY=;
 b=C+sioj7qmwJk1QSoOfsngDiuLJlK3EJNqH6i27UnfGSFTVnd8roo3H/X0MHVKuHyOv
 7mzjp+fg2SyOf98euai4crSM85/7N2g3AdSm+TAO9Ie47B/9wxjzzawW1bJVpY+HOdLF
 bU3gcjyKBmAp9B/mQIMGZq6LyI+1KCC/gJ4tGQl0WBUKXqKJV9Ut3HgYyLmqRBvyicKL
 SWkTglBEvsvn1VibOf1NOPzz94/22Tf2P53F95pviJxfOVSoenoaLzqgzdM1U7sx4hJE
 P6ga/YDTHl+x5QG9yevsWytRnqj08aVSYoAN8obtkWqtyLmHmElaxF0H96c/gs15Hr/r
 8o1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DdCWM/RhsOQBi0pr1uXjXm1hyU+XOF2nH7K19lGI0JY=;
 b=BcHGqU3mr1gZZnsW+k30KjZBde6bmc4ZTveGIQEn3KAXByfOimKNEgFDht+nShj7/H
 DX5tu3C0Qn0mfVrkYospBahD3NbtL04j0hzGmZLcIyL6g9YBVgiVFaWEupPcgEhFwkLs
 LTdfdAyh6t1s31wyiYZnL1l+WW3w+OARhGFvVPH69fnOCBLW5jSItLJTHlYZFTzNTxPY
 PDH3andlZg/NPThNth1pl+7uwErqj7JN55wrG7dvWrV3/+3OdkEWRvpvEyA/B2kz2xBP
 F+EDzcpKzs0oUJSPCUMbqQryusDF5f1Hud8KAtZfaqXIvrwQxuFp/mCyhSzyKbP1w0s7
 eJHg==
X-Gm-Message-State: APjAAAVAeh3usNn3tNa5psVG5S7oqauk6v/s77iSifgrXcfEC0SJTIrs
 pLlZFq+/rRhxXgpWKTEBbCk=
X-Google-Smtp-Source: APXvYqw12QIYhc6B++mLMjMpKs3jMir9qCdWGSgMZ6dtTfT9Q1c16VGuWMiJbupO9QWp16A/JZJksA==
X-Received: by 2002:a63:130d:: with SMTP id i13mr98791173pgl.396.1558633187315; 
 Thu, 23 May 2019 10:39:47 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id t25sm57118pfq.91.2019.05.23.10.39.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 10:39:46 -0700 (PDT)
Date: Thu, 23 May 2019 23:09:41 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v3] staging: rtl8723bs: core: rtw_mlme_ext: fix warning
 Unneeded variable: "ret"
Message-ID: <20190523173940.GA6591@hari-Inspiron-1545>
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
----
changes in v2:
                change return type of init_mlme_ext_priv() from int to
                void
                We cant change return type of on_action_spct() it is a
                call back function from action_handler.
                So directly return _FAIL from this function.
changes in v3:
		Dont remove initilization of init_mlme_ext_priv
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ++-------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 6 +-----
 3 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 65e8cba..4b0129c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -458,9 +458,8 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
 	return chanset_size;
 }
 
-int	init_mlme_ext_priv(struct adapter *padapter)
+void	init_mlme_ext_priv(struct adapter *padapter)
 {
-	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
@@ -487,9 +486,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 #ifdef DBG_FIXED_CHAN
 	pmlmeext->fixed_chan = 0xFF;
 #endif
-
-	return res;
-
 }
 
 void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
@@ -1881,7 +1877,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
 
 unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
 {
-	unsigned int ret = _FAIL;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
@@ -1913,7 +1908,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
 	}
 
 exit:
-	return ret;
+	return _FAIL;
 }
 
 unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_frame)
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index f6eabad..0eb2da5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -535,7 +535,7 @@ struct mlme_ext_priv
 };
 
 void init_mlme_default_rate_set(struct adapter *padapter);
-int init_mlme_ext_priv(struct adapter *padapter);
+void init_mlme_ext_priv(struct adapter *padapter);
 int init_hw_mlme_ext(struct adapter *padapter);
 void free_mlme_ext_priv (struct mlme_ext_priv *pmlmeext);
 extern void init_mlme_ext_timer(struct adapter *padapter);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 8a9d838..4afb35b 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -774,11 +774,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 		goto exit;
 	}
 
-	if (init_mlme_ext_priv(padapter) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
-		ret8 = _FAIL;
-		goto exit;
-	}
+	init_mlme_ext_priv(padapter); 
 
 	if (_rtw_init_xmit_priv(&padapter->xmitpriv, padapter) == _FAIL) {
 		DBG_871X("Can't _rtw_init_xmit_priv\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
