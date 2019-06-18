Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2A14AA82
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FAEB204DB;
	Tue, 18 Jun 2019 18:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3o4Qht8vOqzU; Tue, 18 Jun 2019 18:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64E2A204E8;
	Tue, 18 Jun 2019 18:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1179F1BF20D
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C48C8657C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8dS6WJEMf70 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:59:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 783E5862B2
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:59:14 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so8170444pfg.10
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 11:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=KhmMKOSmpu8SqgnzUE1h6NWxiRGa7i6ZJDyLxzhQcgY=;
 b=StBLuVNjXb1KUTHS1j3aOzNsFTQanhyAF9GXBkg8HHVIv77BKCnUGSDghC7ir30Xqb
 id03qaWdx03OCflYSHi0Z/Jj/jDY+oRc3MJ85hLpXZUDyhoGEMaEsjYf5llCq9C+5cC6
 ispDXsq71X1YyZmaKKjxphcqam1vpHa9h6dFeUfvZZjYQB1rStZ9jcb5P7BU3uVXHriJ
 2a/hAVydqU9UWBbsYlWhSEtq5m/GKbl2rnOqqgvdNsp4Ujm0JABeO8o2TqBgfVrj0yqj
 v5yUWrjiZDjdSAxredbylMPTIJB4ZKxihbAymHEvM+7PpXulZ5dcSpx5Nsp77+llN5Vp
 qRDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=KhmMKOSmpu8SqgnzUE1h6NWxiRGa7i6ZJDyLxzhQcgY=;
 b=prd1D2U6oo+7ocixRhkidUNk4cyLCYXNHz1S0L1onUJ5Yw+ZhUjyrmTgu0yRnEM+Z2
 nsew9G8RjPY+TlHCkFZBEyb1FEhgUdGsnWFyk7AWW+Xm4H+rkyIPmJDkfoePbSIAbVbC
 y7h3fe61ImBGjvqKvvqQ42Shhns8dIr0u7lHBMumZgT2FnPEoS1h8DxKLqTG1k6GGr4h
 8lj/gLqDDDOmZUjdmeUXQCb/2UeCyoar71fPaUTGwD/BH3wlY0wk46Sa8n4RqMg9J9/+
 NgN2fIZOZmhxK6aw7nsXSb6ZHLSFM2u/GEiYzQMqRe/pXgV2+NLLkiVgleiX1M2ObZcg
 Ivmg==
X-Gm-Message-State: APjAAAW3gnzkqL8uHl1i7lUbuxElhgsI/r/9MSnSPKhi/g0UKsSXuruj
 KxCzD5iNEcLGDYlIqcGQnJZLyKJd
X-Google-Smtp-Source: APXvYqybzRDkkEDrAQ1VAQr1kytjBCrUoCVXjECnVciqNYsQHWPI2v6Fqy9Nl/Vuch5PUgyojSTOng==
X-Received: by 2002:a62:e315:: with SMTP id g21mr6651308pfh.225.1560884354089; 
 Tue, 18 Jun 2019 11:59:14 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id n89sm6532091pjc.0.2019.06.18.11.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 11:59:13 -0700 (PDT)
Date: Wed, 19 Jun 2019 00:29:08 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: hal: rtl8723b_cmd: fix Comparison to
 NULL
Message-ID: <20190618185908.GA10489@hari-Inspiron-1545>
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

This patch fixes below issues reported by checkpatch

CHECK: Comparison to NULL could be written "psta"
CHECK: Comparison to NULL could be written
"pmlmepriv->wps_probe_resp_ie"
CHECK: Comparison to NULL could be written "psta"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index e001d30..ceb317f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -436,7 +436,7 @@ static void ConstructARPResponse(
 		DBG_871X("%s(): Add MIC\n", __func__);
 
 		psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(&(pmlmeinfo->network)));
-		if (psta != NULL) {
+		if (psta) {
 			if (!memcmp(&psta->dot11tkiptxmickey.skey[0], null_key, 16)) {
 				DBG_871X("%s(): STA dot11tkiptxmickey == 0\n", __func__);
 			}
@@ -753,7 +753,7 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 			cur_network->IELength-_FIXED_IE_LENGTH_, NULL, &wps_ielen);
 
 	/* inerset & update wps_probe_resp_ie */
-	if ((pmlmepriv->wps_probe_resp_ie != NULL) && pwps_ie && (wps_ielen > 0)) {
+	if (pmlmepriv->wps_probe_resp_ie && pwps_ie && (wps_ielen > 0)) {
 		uint wps_offset, remainder_ielen;
 		u8 *premainder_ie;
 
@@ -1316,7 +1316,7 @@ static void rtl8723b_set_FwWoWlanRelated_cmd(struct adapter *padapter, u8 enable
 
 		if (!(ppwrpriv->wowlan_pno_enable)) {
 			psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(pmlmepriv));
-			if (psta != NULL)
+			if (psta)
 				rtl8723b_set_FwMediaStatusRpt_cmd(padapter, RT_MEDIA_CONNECT, psta->mac_id);
 		} else
 			DBG_871X("%s(): Disconnected, no FwMediaStatusRpt CONNECT\n", __func__);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
