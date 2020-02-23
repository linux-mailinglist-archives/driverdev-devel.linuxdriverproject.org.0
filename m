Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BD21699C3
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 20:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9457B20414;
	Sun, 23 Feb 2020 19:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lxNZmBVsBd3v; Sun, 23 Feb 2020 19:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2CE02039A;
	Sun, 23 Feb 2020 19:32:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 444621BF473
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CFFC8544C
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yesprJfsVOHj for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 19:32:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48FD58543A
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 19:32:08 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id m13so3164756pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 11:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ycAvVlhM3IO/JQS62drEKBmRbhPxXEBTGHsInI3waLg=;
 b=TitZxSaBobT9tPfdZrNZvIHxzF+BBxBy5IunhWGvp860IEAs8/nzK+TLG0fYoK0DBg
 jrP956ZuTjKZW97+ovKYFsGK5VDKGYnjfMPdWbhINqHoy/rAc27Nwbnp3kxqn0jT26tN
 kvdb8ZOxcAVE6d42mGTSe5nic07NoBjLsKyJlbBzjO9Uiy5uPbFnd1WAFHuXqjxAYhGa
 FBUGcFj6W5GPK6jSKvXEWZYlj5pvMQhy7yrBtxdemhU2n2CY8uwSzVZYLXKBw/yLYGu7
 Pi/CWxphvgdaT/iyQ90ut1Qog5Xc+o8HJZw9ovLD/29AqdmYvcxO1Vxl0dijKwY9goFU
 ut3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ycAvVlhM3IO/JQS62drEKBmRbhPxXEBTGHsInI3waLg=;
 b=VAWcfHN3N8VsGLEWy9o4HmHx4HwIJLqpVaxeFa0luSPQp9tGizX8pBSEwb20TnQaJ9
 3siIgSEj9Xhk5aiAKMf9uGV/33h2X6TyqAQ1itTSmLu+xb5z+qlo4uB4UO/sy03tN3/W
 ydbbwobT5NvI/2utftclJBGnNUD0ks+Ygz9zGF6Qrg6sRKt6Rcba6IRfF2VyQlMoBf2j
 rgRW8p8fazNWmwDxfbAzkTOwfqq+mXKJ7rfbZGkxC2DMA/98hkPWq3V2/vvV6KeBpxnt
 8gZ6lIDNhH8JMlztgIh0ZtUzK6EWm2hjZHyabMdJtO6erT7jAN57BqA+liFrvAwUdmhj
 uSHA==
X-Gm-Message-State: APjAAAUukMFzBMOqKnzkMdYr9JGkmvDuRZ08SL7jxtttdYZpNXiXjUur
 Jk7kbHxGp+zooUTzpOzY+45AVA==
X-Google-Smtp-Source: APXvYqxJR0Ts6qfEF5vjfPugyC9xbDtHJaUVC5LSOBYdcnYOK7L0K+xJCiO6VWQOXsAOy6mA4Ngfkw==
X-Received: by 2002:a17:90a:f013:: with SMTP id
 bt19mr15959661pjb.47.1582486328414; 
 Sun, 23 Feb 2020 11:32:08 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
 by smtp.gmail.com with ESMTPSA id p4sm9667513pgh.14.2020.02.23.11.32.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 11:32:07 -0800 (PST)
Date: Mon, 24 Feb 2020 01:02:01 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: match parentheses alignment
Message-ID: <20200223193201.GA20843@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

match next line with open parentheses by giving appropriate tabs.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/wfx/data_tx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 20f4740734f2..815fde0913f5 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -300,8 +300,8 @@ static void wfx_tx_manage_pm(struct wfx_vif *wvif, struct ieee80211_hdr *hdr,
 }
 
 static u8 wfx_tx_get_raw_link_id(struct wfx_vif *wvif,
-				      struct ieee80211_sta *sta,
-				      struct ieee80211_hdr *hdr)
+				 struct ieee80211_sta *sta,
+				 struct ieee80211_hdr *hdr)
 {
 	struct wfx_sta_priv *sta_priv =
 		sta ? (struct wfx_sta_priv *) &sta->drv_priv : NULL;
@@ -368,7 +368,7 @@ static void wfx_tx_fixup_rates(struct ieee80211_tx_rate *rates)
 }
 
 static u8 wfx_tx_get_rate_id(struct wfx_vif *wvif,
-				  struct ieee80211_tx_info *tx_info)
+			     struct ieee80211_tx_info *tx_info)
 {
 	bool tx_policy_renew = false;
 	u8 rate_id;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
