Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A360380774
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 19:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACCC18818B;
	Sat,  3 Aug 2019 17:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 83y3-AdQzt6p; Sat,  3 Aug 2019 17:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36C0D88166;
	Sat,  3 Aug 2019 17:40:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AD281BF424
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 17:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2267087475
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 17:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGYXDjWAF-So for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 17:40:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 621418323C
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 17:40:45 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so34722290pls.8
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 10:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=f5jHl+J1mvXUnH10CMkpOjLBtqZC1foXc9If20oTVtg=;
 b=mRhuawTPUIPR89SZbRUgtxNYHZbVDH6JC25i41nMw8z6/JVaoGB71Nl0nr4UUMrpuE
 1O+TQoV8Mb+DYOKYnkqVLFK1l9uZVB5p+DDQ04xBtocj7/Ug6Ca8p8YYAzBKpFUB5tna
 xa7D+l8b2CO6+vr2IaMng3G9e72eRvV7rkMjtnke01svp2D3TwiiGeztVwE40cYfswcT
 J36jkC62sMiguhNEs1Fs3ZmOdjSp3jgzmAiWydRcAZa5rjPeW+2QgW2+qyiRhGSp+QFr
 jdm1OkvWu9AfoAtRorhzkU8c2y1obDPKa6JmtS0GdrIv7RV5dxiSHWwrXn8eFnD4nVVw
 0a+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=f5jHl+J1mvXUnH10CMkpOjLBtqZC1foXc9If20oTVtg=;
 b=Jivm10/l0uYBfQF7DrfLjF3kxE9q4tLhTjqPS01dYP6oUb5D4TiuGRUP1hMPkXihFN
 MwPw+WHMDOUaJzN6BvCQaVfXaYYmp67Dp1td+XbTJal7kWXNL5g0V29gFA2ixNLM66M3
 ReSZtb9Zp1zIFAaRlE9EO3hdTOK93mUTswpzsFyG1G578Wcl4wAUYU4VaWbJ9Wj7d5e+
 TNfdVf71mK+ffyxSUeuMdjEsXXuBZAW8PWe4wyWiZB5PL1n4JpSwDONukG1dwyjH7huT
 Eu7HijJGOZ0ouv5kHaLh6gL8oYyeolMvlMrLlt/BBhbK3m1JeJBEAjlIVhUZcrDrDgvF
 X2MA==
X-Gm-Message-State: APjAAAXVFQxvi2zEigiZoc2yBiC/GJdXB0lJS7CEiFFUtlIX+iB8z8Lg
 DT41895GSJSkLDV872LJ1ds=
X-Google-Smtp-Source: APXvYqzq2R6gwb9NkEU2Ntm9Lg5/yUSnqsMI5FNrcMXh9a4raqwmWJv5phEyhCLIoTmjWxHXzu6mWA==
X-Received: by 2002:a17:902:1004:: with SMTP id
 b4mr139285953pla.325.1564854045051; 
 Sat, 03 Aug 2019 10:40:45 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id r1sm88834898pfq.100.2019.08.03.10.40.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Aug 2019 10:40:44 -0700 (PDT)
Date: Sat, 3 Aug 2019 23:10:38 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Michiel Schuurmans <michielschuurmans@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192e: Make use kmemdup
Message-ID: <20190803174038.GA10454@hari-Inspiron-1545>
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

As kmemdup API does kmalloc + memcpy . We can make use of it instead of
calling kmalloc and memcpy independetly.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_softmac.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index e29e8d6..9b8b301 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1382,10 +1382,8 @@ rtllib_association_req(struct rtllib_network *beacon,
 	ieee->assocreq_ies = NULL;
 	ies = &(hdr->info_element[0].id);
 	ieee->assocreq_ies_len = (skb->data + skb->len) - ies;
-	ieee->assocreq_ies = kmalloc(ieee->assocreq_ies_len, GFP_ATOMIC);
-	if (ieee->assocreq_ies)
-		memcpy(ieee->assocreq_ies, ies, ieee->assocreq_ies_len);
-	else {
+	ieee->assocreq_ies = kmemdup(ies, ieee->assocreq_ies_len, GFP_ATOMIC);
+	if (!ieee->assocreq_ies) {
 		netdev_info(ieee->dev,
 			    "%s()Warning: can't alloc memory for assocreq_ies\n",
 			    __func__);
@@ -2259,12 +2257,10 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
 			ieee->assocresp_ies = NULL;
 			ies = &(assoc_resp->info_element[0].id);
 			ieee->assocresp_ies_len = (skb->data + skb->len) - ies;
-			ieee->assocresp_ies = kmalloc(ieee->assocresp_ies_len,
+			ieee->assocresp_ies = kmemdup(ies,
+						      ieee->assocresp_ies_len,
 						      GFP_ATOMIC);
-			if (ieee->assocresp_ies)
-				memcpy(ieee->assocresp_ies, ies,
-				       ieee->assocresp_ies_len);
-			else {
+			if (!ieee->assocresp_ies) {
 				netdev_info(ieee->dev,
 					    "%s()Warning: can't alloc memory for assocresp_ies\n",
 					    __func__);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
