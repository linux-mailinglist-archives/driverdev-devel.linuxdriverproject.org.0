Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC925295FDB
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 15:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6592D86BC3;
	Thu, 22 Oct 2020 13:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RuRAO79ubWkX; Thu, 22 Oct 2020 13:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D848087469;
	Thu, 22 Oct 2020 13:22:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 776071BF288
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7111A863D9
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 13:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_btf4vVUT5u for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 13:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6F0485F9C
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 13:22:22 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id t25so2233316ejd.13
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 06:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/457KlRttwTbzW2IPZucxg6Xez470vGxov79DYd6XzE=;
 b=DIYpmXMqF2xG6qhoXcFf/CXetkWZcoj4lqmNFIAU3y7IxDegLJsSR9LOgdUoOKNvdb
 dNIMvAjwEVKc3WOUY/6HQ5tmbGSkhyQYwaWwFcCuebtPfNKAjt3wGkgC451xlcPYcW33
 jNW8QdWzZE60r6fFIa+LR7kmOte3AtGpOPcINRaHktSigQaWCq1jFflisDVp5CMmaOg4
 clPmoyalzrgw2Bciu/nv6QF3tGgvJvy4hAYhpQn3oi0pQW34rFD5TKcnwoNYfqmj8Yhx
 jj3LGrkwsQUc3bYviYoBEvBn+MRSKEdAxaU0KTAnQY3suNH2sV7SiBTnbs8OspjKump6
 aYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/457KlRttwTbzW2IPZucxg6Xez470vGxov79DYd6XzE=;
 b=cZ4jQGE2RWYCtFwGBmkCTRsAmJOPYuv9LWEz78UoNSrki9KLt+mOqdLwAHuJmu6OZu
 wbeMNWi7zEza8H+4B2+SgVf7s8pVUrwDB0sfnk7DziJulPrqWuPaTYk9ZdIB/nF/3Fsc
 UBzrb2HgsjFnarGVE63zI3kwQ0+xq3wbmIrkdR1gPwGIn5uz8qeYOLN+PQwGZBYtgQCs
 MiacNdDDrFGLnDEjOZ0k9EVqU7gn/vzAx5tJXLBQ0eMlBzYQUdU3/8E1Ocvn29EPH/CI
 6E7zbMGa1CD8zLAeqYKrn3VxdRoDsnWt6zq9kHPqstLQS9mXRbmbQlqquR+uuCSDL91h
 voCg==
X-Gm-Message-State: AOAM533lu3Ft9It3/bY89EhZLdoxAaLcp+TcwdJb+bFePaUtOeAxqIu+
 uiFb+CI0ILtJn+pJO5QatUg=
X-Google-Smtp-Source: ABdhPJyf0SYXMG5Nh6sn3hgkUvvD/GfkrjrIskyaIJwYEVu2Fh8zj2L3JDitzFqucn0CN4+hwnbHIQ==
X-Received: by 2002:a17:906:3406:: with SMTP id
 c6mr2074952ejb.65.1603372941235; 
 Thu, 22 Oct 2020 06:22:21 -0700 (PDT)
Received: from localhost.localdomain ([185.200.214.168])
 by smtp.gmail.com with ESMTPSA id ok21sm909368ejb.96.2020.10.22.06.22.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 06:22:20 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/wlan-ng: Fix line alignment
Date: Thu, 22 Oct 2020 15:22:18 +0200
Message-Id: <20201022132218.235744-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Izabela Bakollari <izabela.bakollari@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Fix code alignment. Issue reported by checkpatch.pl

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index a908ff301707..1bd36dc2b7ff 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -1198,8 +1198,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			if (wlandev->netdev->type == ARPHRD_ETHER) {
 				/* Save macport 0 state */
 				result = hfa384x_drvr_getconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  &hw->presniff_port_type);
+								  HFA384x_RID_CNFPORTTYPE,
+								  &hw->presniff_port_type);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
