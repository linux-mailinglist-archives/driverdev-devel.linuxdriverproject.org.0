Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A437633C3E1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DBCE41503;
	Mon, 15 Mar 2021 17:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KOHTx7hp5tK; Mon, 15 Mar 2021 17:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9129940196;
	Mon, 15 Mar 2021 17:15:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C4AD81BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C199E430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1tApmsXOCTl for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20A5F41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:53 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id u4so18201450edv.9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=x1G/KLoyEHocT2wia5KvoRsZiget39qALBdujqdsa30=;
 b=GQbJITYVqH/U2fKty4N9epHbANmNHpalt7PadLcaUlyPk4JHoGhvG9JMpQkr97M9fm
 gCcdvO7V60yZNudgimfBQ5Xn3qMqpdn3apQxkoPzGjNaLd8eiCScsSQJxHUERtwKPLHk
 9C2IPqL7beGsREQSwX7W8b45HdgP2StrYX3OzeznjRM28VF471SBHB4HEeov4pG3P7+J
 mkdUHr7K3sFYFaA+SN9PDaJ6DldEWxTrh5Ia22rKhCoai0J4YAiYNcy3MwQi4jiFld2B
 74TARgdpf1dK/QUcyYW1cl/uvUyBDzbBd3tDl9nITnISjLSDh2dQ4pKIJPQw622lcM6Y
 swAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x1G/KLoyEHocT2wia5KvoRsZiget39qALBdujqdsa30=;
 b=sDl6nTeB5GSt7/yv2cSHrtZpH2RCWippKKEzLdwUOS7KPR5QWDJ1UMYjoqJET93Dhi
 p0DvS4MLGKGnFNWoaAWmfX/IRNCOW8ofWtYHGfjsapSqsynwpcZvGPYK0UREX86y2R88
 h7dsjYfEdgGBAlYlz1Adg5JuqaqvPOUiOHW6WBI458TKRzw3FE+jFto2KF1SOqd88Ln2
 1hhtfpYC/HAFNqJzdL1Kj2UdjMAzcMnBhcr+jeSowM+9h2wPyDKLTpXqG14wawj1W34r
 yxklfXARKVWH0XQmojiWywrLiNZtP+SpJKtfKmQngGnBgKNqcGfH/BfD9+pnTpWoC+hd
 nCQQ==
X-Gm-Message-State: AOAM531zoh0mIjQaiiJ3UK6j6NzeOh0DWH/kds1xaIFw9aYvHwixmQF8
 h76YX9dI5R0J5LjoOm+syPW157OLIto=
X-Google-Smtp-Source: ABdhPJyT+LD1F8W/9S3eKctbp/n9ydnfhIWJz0b+94SiPUuY2yvFfqoz8Kry5+mUWuqzixT2SRkBfg==
X-Received: by 2002:a05:6402:270e:: with SMTP id
 y14mr31161453edd.283.1615828011394; 
 Mon, 15 Mar 2021 10:06:51 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:51 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 51/57] Staging: rtl8723bs: fix spaces in rtw_cmd.h
Date: Mon, 15 Mar 2021 18:06:12 +0100
Message-Id: <20210315170618.2566-52-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
    #789: FILE: ./include/rtw_cmd.h:789:
    +	void (*func)(void*);

    ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
    #827: FILE: ./include/rtw_cmd.h:827:
    +extern u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network* pnetwork);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 9e42731f8fa3..b15a5abca17c 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -786,7 +786,7 @@ struct TDLSoption_param {
 
 /*H2C Handler index: 64 */
 struct RunInThread_param {
-	void (*func)(void*);
+	void (*func)(void *);
 	void *context;
 };
 
@@ -824,7 +824,7 @@ struct sta_info;
 extern u8 rtw_setstakey_cmd(struct adapter  *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue);
 extern u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueue);
 
-extern u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network* pnetwork);
+extern u8 rtw_joinbss_cmd(struct adapter *padapter, struct wlan_network *pnetwork);
 u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueue);
 extern u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype, bool enqueue);
 extern u8 rtw_setdatarate_cmd(struct adapter  *padapter, u8 *rateset);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
