Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A79FD23537E
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 18:47:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD1BC85F5D;
	Sat,  1 Aug 2020 16:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXeVkT6Mnwm9; Sat,  1 Aug 2020 16:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A07B58614A;
	Sat,  1 Aug 2020 16:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 315391BF3F4
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 16:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DDD88840C
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 16:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id asgOvnhGGeAl for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 16:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 46E0E88409
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 16:47:28 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id x9so35508239ljc.5
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 09:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3DYnTPT4/sYGcNhT4ZL721tJCBoXUCz3sR7pfzy1uU0=;
 b=c/tnSkc0+P8PGPhCHlwixhH5M9Che6g4W8HnOizbI6Bpixtff5DuH18eT/ljOHzTZ/
 t+eDhWKmmPKLNMad9VH+bRBcXXeA8swopsk3kr3VSmj3SuOAAQSGWuCdLNIuVTqVGMIl
 oPyohLjcoZsQBIAYmyRHnDwPn7bXnAAy7duzbgP0hHiXTYLyj9QFz9VPv+u1cbl13ob+
 18CEdaJvjCpt2JU8yAmexPZA4+Oc9B9foDs0lo/X2XwhlftUZj+kHWQ3zLp1cnlbpU1n
 NJsrS5Uk2Y9BkyK/mQMkW9zjZaTFm2yw++QbEKwAKQ6NKJZ+1HqH9F6/VI07Y4w4p9oT
 wjAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3DYnTPT4/sYGcNhT4ZL721tJCBoXUCz3sR7pfzy1uU0=;
 b=OvTr6Y8gmRmtOdQCyZGD5VVHcPWjwkBEXhUe62AZLLYdbi3yvANMYOe/ANUxp15k8o
 3U2He0qW7nK6xOqz29i8Zep3TVeCFaH3UoZZv+WrHjDc+mqIDx7WaZH1zjOXrucQSRsW
 +Q8E8quaR9tOesbmEpGHtLnEQn9vX/maI6tpt8OB0+tHHcUpsOEaHsWbyZ3QykLjV3O6
 3UQf9ZaTBUc3npy+IhWLoqeo1M2KKJiN8tPOQEQ46nTdMg/RhEv5fXK5e+lwhomrZul0
 axhRiLo4WQlEct7wM1ayCHmtJ7Byk/M47hULKc9LhN4LiNxW4LbofR/UzBLKgsPKPS03
 +5vQ==
X-Gm-Message-State: AOAM533OvggMfwe7O/AIUsjQh4FL2rmvzidXx1IVxExVnHOBUAnFJrLx
 fb/f1fQMjiqunv7wVT8kLAc=
X-Google-Smtp-Source: ABdhPJzLHuK/EGTjnr1mOGNp3uIYy6X9Kb7gQhzwVs1jqCpxMaVoelez70TMWpA2JnrgK9HfLqbhcg==
X-Received: by 2002:a2e:9f10:: with SMTP id u16mr4362676ljk.130.1596300446230; 
 Sat, 01 Aug 2020 09:47:26 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id e12sm2452360ljk.74.2020.08.01.09.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Aug 2020 09:47:25 -0700 (PDT)
Received: (nullmailer pid 29254 invoked by uid 1000);
 Sat, 01 Aug 2020 16:52:33 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2] staging: r8188eu: replace rtw_netdev_priv define with
 inline function
Date: Sat,  1 Aug 2020 19:52:20 +0300
Message-Id: <20200801165220.29208-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function guarantees type checking of arguments and return value.

Result of rtw_netdev_priv macro can be assigned to pointer
with incompatible type without warning. The function allow compiler
to perform this check.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
Changes in v2:
  - add blank line after function definition;
  - improve commit message.
---
 drivers/staging/rtl8188eu/include/osdep_service.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
index 31d897f1d21f..6ca79b5fb638 100644
--- a/drivers/staging/rtl8188eu/include/osdep_service.h
+++ b/drivers/staging/rtl8188eu/include/osdep_service.h
@@ -71,8 +71,11 @@ struct rtw_netdev_priv_indicator {
 };
 struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
 
-#define rtw_netdev_priv(netdev)					\
-	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
+static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
+{
+	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
+}
+
 void rtw_free_netdev(struct net_device *netdev);
 
 #define FUNC_NDEV_FMT "%s(%s)"
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
