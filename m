Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6E033C3E9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFB2B83684;
	Mon, 15 Mar 2021 17:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUIvYDavugtU; Mon, 15 Mar 2021 17:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0F1D834FE;
	Mon, 15 Mar 2021 17:15:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7E391BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C803F834B6
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sd2jKL-34bd for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C084883478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:54 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id e19so67607667ejt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=RxPUAX5RyTTLF8dc4LPYIQqpXorMVXFaK+cQkYQj7/o=;
 b=Ug9KN1AFp6vOdNbpHybwf48iqSQOuAOU5TA3nAtsxO1jCASsQ6UvnQnJx9iLIzMVJ5
 12coeipg5h1HSTso3vswnq6YzwwEnwPf2Dz0OAKRIfWvsVjgKebeVpXZDVtEBoUzlIOm
 NIYLyu1xCUk97MK7r2l4+UFI/EYlZSTZN/MD6cnSBxLEJMgDmVTBq8LuCwRF5klSxFwt
 BMGVy9sGAfvRstzNWSgHb4/D7Gw+PL6MC4loCU1hC5JrFw/BqLl/YGfpezn6/Yi2bIHm
 ku9rM4aJa7qe2TddYjb0PbMegErv6Z8BdiF7H2ZMG6teV+hkdWXqEBSeHIaZ+nEQHNcW
 R1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RxPUAX5RyTTLF8dc4LPYIQqpXorMVXFaK+cQkYQj7/o=;
 b=JxMXiRYTuxBkCk49n5/7GuNVRVl1hIolCbTZAERhNzxkrr1jaGmTkFOnQkr74zsWAO
 vubFX7jEBReKr2jIXyb/MwsZqRth7SK+iJv0+Vh0JSr4Tq1rb97gq5RtXb+fDfOmYct7
 41uD+IuchVATjryaKxjOm8SY5SDEYoQwannB30JpFfUYx5d1eROEyGSG7nKsIU/7n/IX
 19mv+oCWCxGwhoXHfMoyXDuyPuGUgqp2Y0uPDDfTvvh0yYSX1cKrev+GjMMXJKaUC7RY
 WHBxD/+7lTFDqmbqrcQKzMJYUbxDkzbY5FP7Yoj3f2crqZjJdyweKT/pn7t+7ADpZLbl
 WP6w==
X-Gm-Message-State: AOAM533hPyB4/Bare3yVJnN9gHcurs2imxxLFReByllm7xxUba13jn4c
 aA0wJQJ4eTvNBdwz3a9AD/o=
X-Google-Smtp-Source: ABdhPJxYhJoiZZowHk+a+0oPI2HLspT/jhm64e8Tifn8ZWkKTWPkSgvr8xtNCd00QS6V7SJsdkEFLQ==
X-Received: by 2002:a17:906:b747:: with SMTP id
 fx7mr25404678ejb.474.1615828013083; 
 Mon, 15 Mar 2021 10:06:53 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:52 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 53/57] Staging: rtl8723bs: fix spaces in rtw_mlme_ext.h
Date: Mon, 15 Mar 2021 18:06:14 +0100
Message-Id: <20210315170618.2566-54-marcocesati@gmail.com>
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

    ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
    #307: FILE: ./include/rtw_mlme_ext.h:307:
    +	char* str;

    ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
    #313: FILE: ./include/rtw_mlme_ext.h:313:
    +	char* str;

    ERROR:POINTER_LOCATION: "foo *	bar" should be "foo *bar"
    #592: FILE: ./include/rtw_mlme_ext.h:592:
    +int WMM_param_handler(struct adapter *padapter, struct ndis_80211_var_ie *	pIE);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #595: FILE: ./include/rtw_mlme_ext.h:595:
    +void HT_caps_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #596: FILE: ./include/rtw_mlme_ext.h:596:
    +void HT_info_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #599: FILE: ./include/rtw_mlme_ext.h:599:
    +void ERP_IE_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #606: FILE: ./include/rtw_mlme_ext.h:606:
    +void update_capinfo(struct adapter * Adapter, u16 updateCap);

    ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
    #633: FILE: ./include/rtw_mlme_ext.h:633:
    +void report_del_sta_event(struct adapter *padapter, unsigned char* MacAddr, unsigned short reason);

    ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
    #634: FILE: ./include/rtw_mlme_ext.h:634:
    +void report_add_sta_event(struct adapter *padapter, unsigned char* MacAddr, int cam_idx);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 .../staging/rtl8723bs/include/rtw_mlme_ext.h   | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
index b7bf92d1328f..e593293bb9c4 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
@@ -304,13 +304,13 @@ enum SCAN_STATE {
 
 struct mlme_handler {
 	unsigned int   num;
-	char* str;
+	char *str;
 	unsigned int (*func)(struct adapter *padapter, union recv_frame *precv_frame);
 };
 
 struct action_handler {
 	unsigned int   num;
-	char* str;
+	char *str;
 	unsigned int (*func)(struct adapter *padapter, union recv_frame *precv_frame);
 };
 
@@ -589,21 +589,21 @@ int is_IBSS_empty(struct adapter *padapter);
 
 unsigned char check_assoc_AP(u8 *pframe, uint len);
 
-int WMM_param_handler(struct adapter *padapter, struct ndis_80211_var_ie *	pIE);
+int WMM_param_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE);
 void WMMOnAssocRsp(struct adapter *padapter);
 
-void HT_caps_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);
-void HT_info_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);
+void HT_caps_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE);
+void HT_info_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE);
 void HTOnAssocRsp(struct adapter *padapter);
 
-void ERP_IE_handler(struct adapter *padapter, struct ndis_80211_var_ie * pIE);
+void ERP_IE_handler(struct adapter *padapter, struct ndis_80211_var_ie *pIE);
 void VCS_update(struct adapter *padapter, struct sta_info *psta);
 void update_ldpc_stbc_cap(struct sta_info *psta);
 
 void update_beacon_info(struct adapter *padapter, u8 *pframe, uint len, struct sta_info *psta);
 int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len);
 void update_IOT_info(struct adapter *padapter);
-void update_capinfo(struct adapter * Adapter, u16 updateCap);
+void update_capinfo(struct adapter *Adapter, u16 updateCap);
 void update_wireless_mode(struct adapter *padapter);
 void update_sta_basic_rate(struct sta_info *psta, u8 wireless_mode);
 int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_len, int cam_idx);
@@ -630,8 +630,8 @@ extern u8 rtw_search_max_mac_id(struct adapter *padapter);
 void report_join_res(struct adapter *padapter, int res);
 void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame);
 void report_surveydone_event(struct adapter *padapter);
-void report_del_sta_event(struct adapter *padapter, unsigned char* MacAddr, unsigned short reason);
-void report_add_sta_event(struct adapter *padapter, unsigned char* MacAddr, int cam_idx);
+void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsigned short reason);
+void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int cam_idx);
 void report_wmm_edca_update(struct adapter *padapter);
 
 u8 chk_bmc_sleepq_cmd(struct adapter *padapter);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
