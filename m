Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7481AD32
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 18:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7786F8496B;
	Sun, 12 May 2019 16:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cCu1sFmagmJR; Sun, 12 May 2019 16:54:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 498EF84870;
	Sun, 12 May 2019 16:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46D051BF20F
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 16:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43E3A215DF
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 16:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V1GZmfr1urvT for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 16:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D289B21509
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 16:53:17 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id n8so5189130plp.10
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 09:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pUkqfemPvj4U8k6I42VkBU64ojbl3SFKE12XTRr6nbI=;
 b=f6lmQ0g5Dsaclu3LMgF/xUHC4LOXFD+rMnCi2sCWxkWNG/zOnY40KTn/HzL2/b4z+b
 FcDmVU9vTZZTSjOOyRcLUytpkPekVuLT5bingKQzfpymJeX4qGjlVAHG4/RZxK4Qj6/+
 W7epK0SRK/tU2M1KUg4l9+2sZN32VHS3eeyv3jF+PAszSLJO0hyiix2pkfHNXIzTMksS
 7E6PugJ6NbXetbCGdw1tVGtvZyQm3tRFtIH1qhbmZ405RVV+tHC3J5jOsv8hGXCz2E5s
 y+ehkhh2uKFA3ErVvOzht/oVAo2MfplvDgrvHYZxbJL9+ow2JgpbmohA+QV8ZiTbwv7r
 Eh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pUkqfemPvj4U8k6I42VkBU64ojbl3SFKE12XTRr6nbI=;
 b=l27ye2U7P2lexW6RIYx1P2+2I1fMyin6jWtRYFTufjHpsD9UCuXUSgPSWZ5NHRkHOq
 VI52iQZDMFPpo9eThiS/MgJc6gdD7rxodcJKcbPB/3S9B/DhJKCRi+7/Ph1UoA+LB0tQ
 3RBPYQC5gESYTXXgWHjqba5KiP9pbub4BXMwHyGkcxVGEn68kc/CjukBb033cbEkui6s
 8XLWiDwNWW6ReCO4nQJMe26RLbSJEzmRrSJF5ueW8T/AVz5XRBNZjBBaAGxVhEMQn1Tx
 vK5QAgvWlMRDMutS4dg+KRq5j8pI7l05PBUaxp5SDKn+Dp3Ob4h3orIgGq18Jd97LOiV
 dsdQ==
X-Gm-Message-State: APjAAAUv7jHIw6YYv7py5oXqEnqQSciyzhvBv3V68WlmMX88YLwhBpcg
 In90EJTiDT9C026JSmL+yKfRQQxG
X-Google-Smtp-Source: APXvYqwYCmX6Tq5bub63pCJHg/4b2SzIuKopJVV/+vqJXE6oUFHkbrlbInsKjC40nnm1qMbnMJltGQ==
X-Received: by 2002:a17:902:2bca:: with SMTP id
 l68mr24857776plb.301.1557679997486; 
 Sun, 12 May 2019 09:53:17 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id g24sm17472311pfi.126.2019.05.12.09.53.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 09:53:16 -0700 (PDT)
Date: Sun, 12 May 2019 22:23:11 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging :rtl8723bs :core fix WARNING: Comparison to bool
Message-ID: <20190512165311.GA27289@hari-Inspiron-1545>
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

fix below warning reported by coccicheck

drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:181:5-40: WARNING:
Comparison to bool

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index 5c468c5..c337a528 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -178,7 +178,7 @@ void rtw_ps_processor(struct adapter *padapter)
 	if (pwrpriv->ips_mode_req == IPS_NONE)
 		goto exit;
 
-	if (rtw_pwr_unassociated_idle(padapter) == false)
+	if (!rtw_pwr_unassociated_idle(padapter))
 		goto exit;
 
 	if ((pwrpriv->rf_pwrstate == rf_on) && ((pwrpriv->pwr_state_check_cnts%4) == 0)) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
