Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBAA808E9
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 04:48:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD53A86FEF;
	Sun,  4 Aug 2019 02:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3HE3Muxjoh7; Sun,  4 Aug 2019 02:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47989869BA;
	Sun,  4 Aug 2019 02:48:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B14721BF336
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 02:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD7BA85DCA
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 02:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkRrCkzIs16U for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 02:48:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6A4885ABF
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 02:48:37 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so37882419pff.9
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 19:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=//GfN3Tbw0iv5naNbxPygrhfLkS7hy9vXqEmA+ERuTo=;
 b=jWH0xTg/65qp8vQiXDVhWNKmPIRchShll3kyPuLJ0T1HSLWmsqStAdcfAFEJbQGPJB
 TRbV2ehDZ1w+s4qtip8bQt32gi+URtuRkaRz79e/Epp4XCKc7GeL0axSdAwMauM7Mi7/
 PoB5LboeDtzanpCpTIhVxGcN4BQUVfbpUMHPaixfaDFHUYXo4dR+WLHaM2J9Dww1bmwa
 wWKvH/FjMS4BgtzWiO7VlPlN9PcyadiRE7OpIj7jrIR3EbT5/VSfaZ42HLMk/jqDNvL6
 o+Sp89FIyJoXr2NKo/W6NrAV9GA/VV7GdclMVFEajjekO25ZJJpXq12OKbaqYnF/aPbd
 SpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=//GfN3Tbw0iv5naNbxPygrhfLkS7hy9vXqEmA+ERuTo=;
 b=VJ0yHnFiodT6Ky77qVBDuW3jQvX+XckKKVSA6cbiMP6uKeb+Y2IKrumJnRkAJi+Pkk
 GlPLNRcvfsDOOlLWxm/ywwtDfNm5TOi8inslwfhbMYDi3A2AQlJ8db8lylDmKtZBkSjj
 JDEgj00L91KQ0gO8t68s+aX74KkJJcO8YXzZsWnssYiS0rDMkK6kvRE7iITEZoWhjs64
 q/9LOybZWF6nrtp5KZNFGUpqHsnh116UC0rln3wYP0miHzqBWn2wBDxox/a4LhKRV1wS
 D5q6v9f4BiqWWe8/NGNcOCeJjSVbHWy1CASDFejenKiJsHejGwGA4hZc15okOoGvngxC
 +ttw==
X-Gm-Message-State: APjAAAVozQSjPtHAimbHgCca8dShq+OeMKFqhS8f8DtbDMq4YgRtZ1Kz
 Kqz6extGCnKLDs/Q8Walstc=
X-Google-Smtp-Source: APXvYqxkqMIr3gd1UerXuwiuO6nIs3V0SevBtiYxmIFJNu9y3PmizlMcRVTekpQOlTtIydziFx/nIg==
X-Received: by 2002:a17:90a:3aed:: with SMTP id
 b100mr11734655pjc.63.1564886917381; 
 Sat, 03 Aug 2019 19:48:37 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id u128sm90686772pfu.48.2019.08.03.19.48.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 03 Aug 2019 19:48:36 -0700 (PDT)
Date: Sun, 4 Aug 2019 08:18:32 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: joe@perches.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Michiel Schuurmans <michielschuurmans@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8192e: Make use kmemdup
Message-ID: <20190804024832.GA14352@hari-Inspiron-1545>
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
v2 - remove the netdev_info() uses for allocation failures

 drivers/staging/rtl8192e/rtllib_softmac.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index e29e8d6..f2f7529 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -1382,15 +1382,10 @@ rtllib_association_req(struct rtllib_network *beacon,
 	ieee->assocreq_ies = NULL;
 	ies = &(hdr->info_element[0].id);
 	ieee->assocreq_ies_len = (skb->data + skb->len) - ies;
-	ieee->assocreq_ies = kmalloc(ieee->assocreq_ies_len, GFP_ATOMIC);
-	if (ieee->assocreq_ies)
-		memcpy(ieee->assocreq_ies, ies, ieee->assocreq_ies_len);
-	else {
-		netdev_info(ieee->dev,
-			    "%s()Warning: can't alloc memory for assocreq_ies\n",
-			    __func__);
+	ieee->assocreq_ies = kmemdup(ies, ieee->assocreq_ies_len, GFP_ATOMIC);
+	if (!ieee->assocreq_ies)
 		ieee->assocreq_ies_len = 0;
-	}
+
 	return skb;
 }
 
@@ -2259,17 +2254,12 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
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
-				netdev_info(ieee->dev,
-					    "%s()Warning: can't alloc memory for assocresp_ies\n",
-					    __func__);
+			if (!ieee->assocresp_ies)
 				ieee->assocresp_ies_len = 0;
-			}
+
 			rtllib_associate_complete(ieee);
 		} else {
 			/* aid could not been allocated */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
