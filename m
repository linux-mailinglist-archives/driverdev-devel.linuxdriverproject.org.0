Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 966407CB98
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 20:12:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E13D585BF7;
	Wed, 31 Jul 2019 18:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uN+i+SIfz7wd; Wed, 31 Jul 2019 18:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEDBF85810;
	Wed, 31 Jul 2019 18:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32E041BF2EA
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F9C88569B
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 18:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8LVdGEoLqayS for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 18:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D09C85682
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 18:12:06 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id y15so32327587pfn.5
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 11:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5NI/Y5dFZFuaNgPcp4QneIfH5xBadepsGHb9N4tpny8=;
 b=c/PURujRSFmt4W56yEkkPJiMiLnSy+I9hHk4F3krR3jiDTeMD3vnK854bzL5miffpD
 QyqEi96wVR/L7sLF1YWZqnH+B3ELUU6mWNiYM1gnNc5qMpVUqrffFNXCH5MD5bVTWeSr
 XtKKissxyuiVW9qPgegvAaUhsSVblAfMRRMS3jCtI1pLuMEgRg/bvKSAc6noAzQfz5Q9
 NBdCOlt2KTeyv1bmHh88T0G4D/uorDXNYkOMqxjlgTGbzdl9xI2oipsRjUjx+Adc5eBA
 idLYGCAlvPUKSIJvvUvyaVl442CByscJX6eRbqMJv1jOoGIbKiAVVzxKzLF6qPi3vqcL
 T8Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5NI/Y5dFZFuaNgPcp4QneIfH5xBadepsGHb9N4tpny8=;
 b=ZCR8SpQ/TtO0WcdJ+rkUFQibLrGi2MKB6nkzlbZ8mjX/Pyq8OayAms5rlojUl+QEJ0
 R3Nrm0J8C+i+YUbrzEg/xsMYuPDBtxNNvE13LUMnL4GgqBPuS4qq8hhX3DmUYTeNh67M
 GolcNVpDhcJpeMX4sCQVkIrXbn/mbFJJYD6320777ZAuXvnE7QmAtC7Jc5rbjSbyv4lg
 t08S0VHDWR1b1IgpYzO2uMRYJAZtPzOMNfN0daybw3dDKrtX/SOq67SA5dmXOoVgtYZi
 /HREiXXIQ7iIng5Pc9RurUu9h9jopyVC+cTgqWzZpdZ+Zl6wmrbrmDtIdJa55v66KpYj
 rj2Q==
X-Gm-Message-State: APjAAAWNA4EJ1N2aoyzIbx0D69l0KYvXK9fWQHNdqL6wkvrvrpZPDQ7c
 89yQFrVC0s6bMuUfUgO7sL0=
X-Google-Smtp-Source: APXvYqxz5v1naU0oUETNREfYLZSjsQDGsXJJpUUx3FIVW39CHx8SXGwdAOqAFau1T9wg33t31Nfp7g==
X-Received: by 2002:a17:90b:f0e:: with SMTP id
 br14mr4203159pjb.117.1564596725725; 
 Wed, 31 Jul 2019 11:12:05 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id n17sm73058821pfq.182.2019.07.31.11.12.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:12:03 -0700 (PDT)
Date: Wed, 31 Jul 2019 23:41:58 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 hdegoede@redhat.com, Larry.Finger@lwfinger.net
Subject: [Patch v2 01/10] staging: rtl8723bs: os_dep: Remove function
 _rtw_regdomain_select
Message-ID: <20190731181158.GA9051@hari-Inspiron-1545>
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

This function simply returns &rtw_regdom_rd . So replace this function
with actual code

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
v2 - Add patch number

 drivers/staging/rtl8723bs/os_dep/wifi_regd.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index aa2f62a..bbd83b2 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -115,13 +115,6 @@ static int _rtw_reg_notifier_apply(struct wiphy *wiphy,
 	return 0;
 }
 
-static const struct ieee80211_regdomain *_rtw_regdomain_select(struct
-							       rtw_regulatory
-							       *reg)
-{
-	return &rtw_regdom_rd;
-}
-
 static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
 				 struct wiphy *wiphy,
 				 void (*reg_notifier)(struct wiphy *wiphy,
@@ -137,7 +130,7 @@ static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
 	wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
 	wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;
 
-	regd = _rtw_regdomain_select(reg);
+	regd = &rtw_regdom_rd;
 	wiphy_apply_custom_regulatory(wiphy, regd);
 
 	/* Hard code flags */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
