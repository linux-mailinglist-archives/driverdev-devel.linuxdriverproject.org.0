Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4970913FA7
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1A5187872;
	Sun,  5 May 2019 13:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNKC1hEeu4Tp; Sun,  5 May 2019 13:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3031878AF;
	Sun,  5 May 2019 13:21:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58A991BF3B8
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55E008610B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q8qdxaHHb8sH for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B14BA860D6
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:21:11 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b3so5305811pfd.1
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Z5fRXYMiBfJg+xYTlW25WDAJSg5CjbHE0LcJsh4KODU=;
 b=lEYRVAICwQDfCGgSKs8ls/XK3kTO205p/cpmzDAepE+udb3TnaYQDONHXOE304Leyw
 b6jRQ/F+jUoa3WlW8lZaE9ezz2ilGSd4gZ23pxU++0GVRpkc6gv+k5cUGSgFRBjF7Qon
 PsjETso15VymXpahNHCoVKTEJ0nVfKrJFSVYTz9KxzXx8FmB7g8et5xC7u7K4wYzDTQS
 aOMSSYggepqqZ+3VPtC6apiqTg2C52X74Wo5NWDLzfgbXIkkkF80+CCrZ+qfOBtPmYRB
 r2XgUQE8K28RNBPG/TG08DLZWFQ4AxSveoaasRAa0mP8P6mw9bnqt2tBwwjhQ+vc2JSU
 R9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Z5fRXYMiBfJg+xYTlW25WDAJSg5CjbHE0LcJsh4KODU=;
 b=ayCeNMQHPQzgWEePglVFj6Qo4q6n78UJHbYyrCdrt/EQ+FxgSXP1wLCoXUguz+Qktm
 g5Dy4oRWTN0BsMaroY/S6/LsoaT59atxBhS4kAy4UGuqlUvHn/zSG28tT8dBT9WPx2O4
 yWRF0dBPEozrO21fDZiiNINW9mvfFdw+IDykocRcCspY1HubTT2nRAyILewQ/hrl5BR2
 rKCKQlUW8gYzTEBvnxcnxL9fl/rtXPwOd+GlyahBbsix3xmeww02t2tmWy2flrztId+9
 OVpv9Znq8DZil3eRY/FmREcAXaZeJrwjG0vqb8s+VJuvP0ew1LT0Fe6NMlX+kHuT4aEx
 vCRQ==
X-Gm-Message-State: APjAAAVVqTwlyooj1Feq8JjPHXR6rQ/1N6vwr7HBZgwvkyUwho7dETDp
 HX+lu2EHyK225cbNQOKewK4=
X-Google-Smtp-Source: APXvYqzp9oa2+Rpbio5vyTL8sGBN3O24gITSVAU446JkvxrVsI0zEBsOkgLW/4Y7DHU2c7yrCC8AHA==
X-Received: by 2002:aa7:80d0:: with SMTP id a16mr26460182pfn.206.1557062471332; 
 Sun, 05 May 2019 06:21:11 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id f63sm14292239pfc.180.2019.05.05.06.21.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:21:10 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/6] staging: rtl8723bs: core: Remove unnecessary
 parentheses.
Date: Sun,  5 May 2019 18:50:53 +0530
Message-Id: <20190505132053.4345-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary parentheses after 'address-of' operator to get rid of
checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ac70bbaae722..1cf6229a538b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -277,7 +277,7 @@ void init_mlme_default_rate_set(struct adapter *padapter)
 static void init_mlme_ext_priv_value(struct adapter *padapter)
 {
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	atomic_set(&pmlmeext->event_seq, 0);
 	pmlmeext->mgnt_seq = 0;/* reset to zero when disconnect at client mode */
@@ -464,8 +464,8 @@ int	init_mlme_ext_priv(struct adapter *padapter)
 	int	res = _SUCCESS;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	pmlmeext->padapter = padapter;
 
@@ -609,8 +609,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 	unsigned char *p;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex	*cur = &(pmlmeinfo->network);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
+	struct wlan_bssid_ex	*cur = &pmlmeinfo->network;
 	u8 *pframe = precv_frame->u.hdr.rx_data;
 	uint len = precv_frame->u.hdr.len;
 	u8 is_valid_p2p_probereq = false;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
