Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D98B8432D5
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CE7C8771E;
	Thu, 13 Jun 2019 05:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IDF-7pDqNn-X; Thu, 13 Jun 2019 05:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53FEB86D6F;
	Thu, 13 Jun 2019 05:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9895F1BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 955732107A
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjqlbeUQW30Q for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BE0B820014
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v9so8539777pgr.13
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vig3SMu5j7fNzcQGElAZitzAEUN9RAM+LdGOH32S0nM=;
 b=ahj0k0BxD9sLDeKVVgKTz+6z6KsPh4DpCUuda+A7grmy9Yss9Aw+1pYL+maJwRluE5
 Lp+mb1YIxd127LPUoheVVgvvXstfM/kRhZvBAuBVdWvYyDOD4VX4FghFedfdfJEC8Ius
 IbbH1rXZyFX3shDLegIjh5qRf97g9pIzYnTtQGLLhQW7A5aYq3ZtAiuHOXlGH8ED33ok
 xgCPo3UXjqJzJxWCGZu5Zsj/Q3gKvvnQ6zrYiREa/Fh79bJqNYd+BGPT6dBsRPeCW+Wk
 8eLQrDEuVd1kJ9E8FznN9i1d8EPJ0cJrbtDfv7vLd5A2UzNJbKyaA32BPV4lXewIxCVA
 hAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vig3SMu5j7fNzcQGElAZitzAEUN9RAM+LdGOH32S0nM=;
 b=Ea0vBrCwtYbqyIjTw+BRSLFM57FBwfBiUtn5lleszCW88M4qqCJnhWxqY0TidHdT94
 iIekrjLCZel1FJpbWdOP1KWGwGQpy2bcKMnkHj17UQUd1ahe8B4RztWpnlNmh2XIkQL7
 BHnD+daTjex7gHXbzykEvSJMTtD9WVmZfhqQnHHiYMUf/etPuCk6zdAz5F7wnzTZ/4Au
 w0MYDNWdW4bHIiO8y2uLRedfxm5jYXySVc14Pc19F6cLOIOVPLNgubc5Av/d1Ll9IGIe
 5GIBispaonhy5VK4OvtnADghhmtrkWHTYdFUnzJY8/EJsctMsZDPWuAi9ez48VuJQiJy
 fVBg==
X-Gm-Message-State: APjAAAX10vSQs3+LnApNhtxJHhHfatzytwbbF6QyKH4LjPYaE2y2hR5I
 qkERtMc2SDQv8HA8Rd9Adig=
X-Google-Smtp-Source: APXvYqw4EwpxMvZK6pX2pQW1ZeBveE4NqyOlZ3T67pQ0u45anpIgLtUzZR7P+pgZzEMyViAd6qhxSw==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr3230487pjb.138.1560404539465; 
 Wed, 12 Jun 2019 22:42:19 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:19 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 07/11] staging: rtl8723bs: Replace function
 rtw_free_network_queue()
Date: Wed, 12 Jun 2019 23:34:35 +0530
Message-Id: <20190612180439.7101-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtw_free_network_queue as all it does is call
_rtw_free_network_queue.
Rename _rtw_free_network_queue to rtw_free_network_queue to maintain
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c    | 8 +-------
 drivers/staging/rtl8723bs/include/rtw_mlme.h | 2 --
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index d26d8cf661df..b42d94a3a28c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -275,7 +275,7 @@ struct wlan_network *_rtw_find_network(struct __queue *scanned_queue, u8 *addr)
 	return pnetwork;
 }
 
-void _rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
+void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 {
 	struct list_head *phead, *plist;
 	struct wlan_network *pnetwork;
@@ -375,12 +375,6 @@ void rtw_free_network_nolock(struct adapter *padapter, struct wlan_network *pnet
 	rtw_cfg80211_unlink_bss(padapter, pnetwork);
 }
 
-
-void rtw_free_network_queue(struct adapter *dev, u8 isfreeall)
-{
-	_rtw_free_network_queue(dev, isfreeall);
-}
-
 /*
 	return the wlan_network with the matching addr
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 2693b554f414..9c9aa9254288 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -607,8 +607,6 @@ extern void _rtw_free_network_nolock(struct mlme_priv *pmlmepriv, struct wlan_ne
 
 extern struct wlan_network* _rtw_find_network(struct __queue *scanned_queue, u8 *addr);
 
-extern void _rtw_free_network_queue(struct adapter *padapter, u8 isfreeall);
-
 extern sint rtw_if_up(struct adapter *padapter);
 
 sint rtw_linked_check(struct adapter *padapter);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
