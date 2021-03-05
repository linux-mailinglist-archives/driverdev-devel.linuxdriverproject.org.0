Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5019A32F3A7
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 20:17:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F80F606D0;
	Fri,  5 Mar 2021 19:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upI4QaslDGGx; Fri,  5 Mar 2021 19:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C432A605EE;
	Fri,  5 Mar 2021 19:17:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5091BF34C
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 19:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 388D9605EE
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 19:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jP3SY6f_9Fh for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 19:17:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A238605ED
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 19:17:20 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id m1so2383725wml.2
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 11:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IUbT1zmuEif6gXHUXSht41xJpgFrGQqg35onE4jbGCA=;
 b=IFWHQoDzfiBa88b0bv5dhO328KQhLqJ1TyPOTh6klAnYn9IarWDYad7FJRJFGb7tsI
 7B6RMLEnObBUq2GvcsQqE7cYXnhqWYo7vBcxrUpxSOdNLp4cV3FGA91AKPdKRoX31uRS
 3/IG4M2h64hej9nG7zsnw1LgTWpgUTS94FYigUC/KU7jAME3Up0CspP5LMdlg/H4Xi4E
 l7MzaJCJvSeVCebbvDjux93r+hMocEhpjwEaQmLiCXk0HFs3DUys+HcVfuSdhYBlXL5a
 TNUnxJMm1agooNybpYrvVJ20iJ9ZXUuWrex3r8v1wIA1aaLHZZ/gMlVRNJBLWyM6Wyfj
 wkow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IUbT1zmuEif6gXHUXSht41xJpgFrGQqg35onE4jbGCA=;
 b=F2Tp5FWsXPAA5+gyntOnbPLF11MCS7OxLtWFW7GhVeFfi26cdyw+qR5LiVzJVnInM8
 cebDi3S+Hp1EgpL3HKERkFgVUCLik9mNdvPX6/7BCLMbU8NtKSkLb8XoZOShup8lo0fb
 jsi9gqt2i4rzl61azCuisq8zLnRE8lrHm6yf0gPZNl9lKT0zICxzuBwIiiacRnbgtUM+
 ngzX7Mzeqr7JTf+5u/56EkkCtChIgQBQQeVslEEChAjI3JdHVd46CNIE2LgJpkosL7/D
 M0cWRm+13bESoTaBgvs5nW0Ox3QQUP0lSbdlqCJnoW9sdMlAr5w9iAVYnK0TBVdwqCmL
 iW1g==
X-Gm-Message-State: AOAM5310PrwgJSus+Vtk5/6Q05XVVy8CtD0IkEx/o6lrHkO31gZ0vlI0
 zFXbsSEdeXtUqzbRqcDuN0C+EsFyQyxsGA==
X-Google-Smtp-Source: ABdhPJzKH7zZX+w1/CASV/hsPLF789vKTPNChepV0A8YkSwDeqrptp1bQ7mY2d3qx22qc7Un4ogTKA==
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr10307101wml.96.1614971838913; 
 Fri, 05 Mar 2021 11:17:18 -0800 (PST)
Received: from agape.jhs ([5.171.73.233])
 by smtp.gmail.com with ESMTPSA id a75sm6034433wme.10.2021.03.05.11.17.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 11:17:18 -0800 (PST)
Date: Fri, 5 Mar 2021 20:17:16 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8723bs: removed unused code block
Message-ID: <20210305191713.GA2466@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed conditional code block checked by unused CONFIG_TX_BCAST2UNI

This patch does the cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 1c23fbe58881..a89b88eaed39 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -212,9 +212,6 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 		&& check_fwstate(pmlmepriv, WIFI_AP_STATE) == true
 		&& (IP_MCAST_MAC(pkt->data)
 			|| ICMPV6_MCAST_MAC(pkt->data)
-			#ifdef CONFIG_TX_BCAST2UNI
-			|| is_broadcast_mac_addr(pkt->data)
-			#endif
 			)
 		&& padapter->registrypriv.wifi_spec == 0) {
 		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME / 4)) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
