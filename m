Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0478926971
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 19:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E65A787043;
	Wed, 22 May 2019 17:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ixxIKpuDC-7S; Wed, 22 May 2019 17:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC5F687073;
	Wed, 22 May 2019 17:55:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E702D1BF3EC
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E0F4C30CA1
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6uNJBUNRtyqB for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 17:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 93A7430C94
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 17:55:10 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y11so1700691pfm.13
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 10:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+3r9XlOPnzbK3z3FjSACcbiHwzswR8weMh25pGyOfPg=;
 b=cKSYTSQ2RqjpU+ut04v7P9lRKYr4f/oXVOho0VAUSXsfjokUmRHHmAJx7uVYcZlFNs
 Yoc5pbMzio+/c3pI79Y/uIdRelADA99uqMUacQ39zHo7SvOntPdDl/554luQ61etlkSR
 OFNHxAn6e5RvdpcROYT+qpdJGhM0VUSXgeBro8mU7Nt7bpWpKF7NcsaL/q58AmsvElJi
 L5505DXVd0A+DfV+gOYChvqxkLQoGAEIX5XEJqmynoWyFHpkU3e91Dlu9L5G6c6aGswS
 yw7rllIaHJ1zWNQCgJ4JUBF08JbQliZ39cCCUMG/bYzTox+qxiHriI24xFi2cea548kG
 OiVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+3r9XlOPnzbK3z3FjSACcbiHwzswR8weMh25pGyOfPg=;
 b=dvTTxXm4F48yrpwQWSZb/jpVMT5w/R5jMIUZM3PzSM3UQYimgNzibXezQmYbI6lOB0
 Q09/n6wke3CSM9hJnAwBGg2jzpSz4STvkZCEYCbwOdWT1rt8e4qQkaKhrDorYFBXT9Uo
 XToteDKw66NEgJ2UxM+fkK6ZjJ4vQeULwBgnIYnNwcjFnccjN3Smf9T9ZO4RsuMCVqa2
 JEmvPSXuhLNbWf2n75JEVGW+1R1gdnP/C9/OEV9LIl6hkZfOkhMvsjBITMFf/3KZHfba
 hGGaqK98aRk0go3+Ycc8TRENMHEk/tMwzA7GL97c1KA4pDGA/6lC2Y3X26Qcjv2p7iyP
 rXwQ==
X-Gm-Message-State: APjAAAVSvghFklh+NgUYoMobQqcdg2LSlY90CSQ/d5zIhEAGRDrvC9Qx
 STHwte7gQHjXfFQw5LQwh2pXe4qi
X-Google-Smtp-Source: APXvYqyikKBmSIVVx6oYXLSiiMTSDrugIobuXOc6xzwdi1VWYpkzMuV3zTuBFYnQ45LI4UEha21eLg==
X-Received: by 2002:a63:8949:: with SMTP id v70mr91990157pgd.196.1558547710213; 
 Wed, 22 May 2019 10:55:10 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id u134sm36730992pfc.61.2019.05.22.10.55.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 10:55:09 -0700 (PDT)
Date: Wed, 22 May 2019 23:25:01 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Henriette Hofmeier <passt@h-hofmeier.de>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: rtl8723bs: core: rtw_mlme_ext: fix warning
 Unneeded variable: "ret"
Message-ID: <20190522175501.GA8383@hari-Inspiron-1545>
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
----
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ++-------
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c      | 5 -----
 3 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d110d45..b240a40 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -461,9 +461,8 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, RT_CHANNEL_
 	return chanset_size;
 }
 
-int	init_mlme_ext_priv(struct adapter *padapter)
+void	init_mlme_ext_priv(struct adapter *padapter)
 {
-	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
@@ -490,9 +489,6 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 #ifdef DBG_FIXED_CHAN
 	pmlmeext->fixed_chan = 0xFF;
 #endif
-
-	return res;
-
 }
 
 void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
@@ -1885,7 +1881,6 @@ unsigned int OnAtim(struct adapter *padapter, union recv_frame *precv_frame)
 
 unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_frame)
 {
-	unsigned int ret = _FAIL;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
@@ -1917,7 +1912,7 @@ unsigned int on_action_spct(struct adapter *padapter, union recv_frame *precv_fr
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
index 8a9d838..c2422e5 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -774,11 +774,6 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 		goto exit;
 	}
 
-	if (init_mlme_ext_priv(padapter) == _FAIL) {
-		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init mlme_ext_priv\n"));
-		ret8 = _FAIL;
-		goto exit;
-	}
 
 	if (_rtw_init_xmit_priv(&padapter->xmitpriv, padapter) == _FAIL) {
 		DBG_871X("Can't _rtw_init_xmit_priv\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
