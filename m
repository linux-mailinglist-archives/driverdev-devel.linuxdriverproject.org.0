Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E99133C3F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:16:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A324B43105;
	Mon, 15 Mar 2021 17:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B28UASrAAkFa; Mon, 15 Mar 2021 17:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03E8C40170;
	Mon, 15 Mar 2021 17:16:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 184381BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 152BC6F59F
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OGEFmH78t8bT for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44E3C6F579
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:58 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id bm21so67504371ejb.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=197iP1ypKA/3TYKMYUYtoUBkpvsNf90scRIsKgwzJMM=;
 b=IfVgqiWMPgWFWf+2MLIYAlGyPbXRX6JaXEum8a02vUGkaYeuIewjGM3X9ftiUZ64l0
 EhkGlQNEQr5TIZNrqBEwC6GJnIR2NB0I2b4NheqnITavUgg77SHG1Es/QCEcZzC2fkJ8
 c7dln0pH6WP8B2Vr+YHDQKVnvkXsnPrh97gzddoFvxcMITTLsC8Q8pSZPRPc0Toz0sQ0
 S7HHQyxRj1L8hGt8zwMAv9cvMwF7DAyMkYCxFPtxYejczwHt/nMtamy9/6yokN0iJLJ4
 7g30eq6mwFQBtkHsxA3E+4D8jnPcmND8frg7RF+GkXp2R5q26ft4EHrLbM35sdDWunu2
 7vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=197iP1ypKA/3TYKMYUYtoUBkpvsNf90scRIsKgwzJMM=;
 b=TggJhRINJgeV+V+BErz0CdGwHamJDq674LgEBww/hoN+O+qEEYLXQcqLL5SNFut8uy
 hDtYNd4uC9RUOqPCTYkmIIlKgLNJeuWlr8UZ6Cr5myzDZVuIqRPHgq4Xu2EcmVmD7LL3
 iNWGYY3B3lrrSRDWr9qU4YHIRYLurGdSTR64MZrGs77TAW2GJah3HBMUAFZEwHLPiZ/L
 RzWJU5BwS7neKxBEtTHEwOEt8ea1pNz4B90V40VaFXexccxweocK0wtP1qH5Sx4n4zoD
 Ed6zrA2Y3OIX6cXUt/TK5K4bhpT4D977PMoL91yqfUPUcjH/K3rQ596412uJOe2v3GYF
 vFxw==
X-Gm-Message-State: AOAM533p6EdmTiOT/58agoaJub/E33qkgr4DJGkx1PWxBHZessdP8OIa
 l8I3MG9d/j1pzVXS6o0yUkmLBNu75Ic=
X-Google-Smtp-Source: ABdhPJzs4dunrqC4kNczV22Q3Q5RfH5ehuegckqMvSr7bNsxe8JdVQ/I2Hgg/kWwj1sqtzWjlp7OrQ==
X-Received: by 2002:a17:907:2bdd:: with SMTP id
 gv29mr23929292ejc.259.1615828016589; 
 Mon, 15 Mar 2021 10:06:56 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:56 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 57/57] Staging: rtl8723bs: fix spaces in xmit_linux.c
Date: Mon, 15 Mar 2021 18:06:18 +0100
Message-Id: <20210315170618.2566-58-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #192: FILE: ./os_dep/xmit_linux.c:192:
    +int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #247: FILE: ./os_dep/xmit_linux.c:247:
    +int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 83d7cbbcdf93..a3b6584ca0d0 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -189,7 +189,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	return true;
 }
 
-int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)
+int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 {
 	struct adapter *padapter = rtw_netdev_priv(pnetdev);
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
@@ -244,7 +244,7 @@ int _rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)
 	return 0;
 }
 
-int rtw_xmit_entry(struct sk_buff *pkt, struct net_device * pnetdev)
+int rtw_xmit_entry(struct sk_buff *pkt, struct net_device *pnetdev)
 {
 	int ret = 0;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
