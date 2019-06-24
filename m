Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539F55017E
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 07:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC89787134;
	Mon, 24 Jun 2019 05:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fm3dxnS1b21D; Mon, 24 Jun 2019 05:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAA0E86FF8;
	Mon, 24 Jun 2019 05:49:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB1ED1BF470
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B88DC81A63
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 05:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iE46TjlxbRgD for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 05:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A78BB83F0D
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 05:49:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so6241915plo.0
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 22:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RjJurVSzLmExKHQvQbxCn+ls7gKbxt8+bN17DUn06s4=;
 b=rBQ8TLuMyzN9F+oLYvf5FHThRq+sVMjpbURPlsyjTkXWuYkrkksJm8BGPs1lJN7wLu
 lmoahuiqG2+JTD6/F5bmQ1XF43eC/CkbX35Yn/tkz83tfzYP+QBzKdC5xnx+vJzX6g2b
 b13oeqN6DJqE2V90vkpgSg/hPPmVpjoaiyzl4es/jBEuhZsLRN7AswX0UMxQh2QLqGIH
 LUux6vaQzSp4sAAEQQxXX8A4ssX8BaAWLOAeSzu0R5tJUrUm+BYcR5sYODb4DGuT9gFu
 07uaI+/HoVHLMx6INy50TOEdAic5eB05fOmBwQtVuLnw6rVmGNzcki4KxBZG3qmtgQyF
 Q7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RjJurVSzLmExKHQvQbxCn+ls7gKbxt8+bN17DUn06s4=;
 b=uVoWDX3fInYvQ5ORgISS+lQUIKlDMvFh0emGt7jgKQ2SnLLsdBCUoer2WwcwU4+gqe
 MZj+5mLzkocEPL9Wn9tWvNMCDqE8AZLhNsXx8bZct6KG0ohBaZZuShXOht1uAuRhqcR3
 Md5VzH83hoojY9UgZFopv3ULcnN9TLf1C70PJSjd0bggnjl68ao2Wd9BSBA998JFXFMS
 J6gJ9s980URueRqvpKJEPOzqu+2jbOi1O1GvnbL7QzCs+1ALvqp3AAu1DWxedcN/4YX0
 CU0PVQor/IUk671nkw76/PpFselCacUiYjRiBcHUfzZpfOxwJh1Cs05HaVspoAWmvOW5
 5VJA==
X-Gm-Message-State: APjAAAUMwWGBLezhIkk3qy7B/Tvny84IQdRBnDAzpjO2n/IBinsnJ8wG
 lvDGWfKGjRmiq0uhT6e/A0w=
X-Google-Smtp-Source: APXvYqygZJ5Z++GiNwqgi2CYsa59wSrvkFQ1iAwAjOYmb5s2ek4RxlVp8E4pH/FEU0E29+vZxMkl4w==
X-Received: by 2002:a17:902:54f:: with SMTP id
 73mr143351742plf.246.1561355376449; 
 Sun, 23 Jun 2019 22:49:36 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id s43sm11908182pjb.10.2019.06.23.22.49.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 22:49:36 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: [PATCH 08/10] staging: rtl8712: Remove mp_start_joinbss()
Date: Mon, 24 Jun 2019 11:19:01 +0530
Message-Id: <20190624054903.2673-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624054903.2673-1-nishkadg.linux@gmail.com>
References: <20190624054903.2673-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function mp_start_joinbss.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 16 ----------------
 drivers/staging/rtl8712/rtl871x_mp_ioctl.h |  2 --
 2 files changed, 18 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index add6c18195d6..64fde5325a8e 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -231,22 +231,6 @@ static int mp_stop_test(struct _adapter *padapter)
 	return _SUCCESS;
 }
 
-int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid)
-{
-	struct mp_priv *pmppriv = &padapter->mppriv;
-	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	unsigned char res = _SUCCESS;
-
-	if (!check_fwstate(pmlmepriv, WIFI_MP_STATE))
-		return _FAIL;
-	if (!check_fwstate(pmlmepriv, _FW_LINKED))
-		return _FAIL;
-	_clr_fwstate_(pmlmepriv, _FW_LINKED);
-	res = r8712_setassocsta_cmd(padapter, pmppriv->network_macaddr);
-	set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
-	return res;
-}
-
 uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
 					 *poid_par_priv)
 {
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
index 44cd911f2aa1..64e2ae436625 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.h
@@ -71,8 +71,6 @@ struct DR_VARIABLE_STRUCT {
 	u32 variable;
 };
 
-int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid);
-
 /* oid_rtl_seg_87_11_00 */
 uint oid_rt_pro_read_register_hdl(struct oid_par_priv *poid_par_priv);
 uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
