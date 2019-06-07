Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EEF38C3B
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 16:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DE3C87657;
	Fri,  7 Jun 2019 14:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndNycHJ5yqZA; Fri,  7 Jun 2019 14:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 581A48758C;
	Fri,  7 Jun 2019 14:10:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B17A1BF5DA
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7550A20763
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHDL3O1TkO8B for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 14:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B6C4B2052F
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 14:10:17 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n2so1229199pgp.11
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 07:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WviGJBKgEpiJLqccK37TyqA/NvGYOeZQ8PBC4TwGa4M=;
 b=VTn6I4KjwL5gWYewleunXOkbS0NLQfMjEErXokyNJ/coXmNRgEa8xOQsD6gSWor8RV
 uder4DeV9PFezBtB8VwuL8dKxRSEG38yfm2maA4yyxeSEbPW0NSpj0l0FKCo76Fwd0rf
 uSPTsjWzka+Gxo8ee6+ewx/PI6uHCLBF0kgxBbi4nXaezPRhbMuQa3aCTQw2Fk5WfFg6
 EkpbxWI9yDUSOvTifCIbFQhQ9OjGNc7/OnlsXRGKMfmv539fYyUswNtgkfAr7JeuVzkd
 4Zy3+vvjyeRb7YT8bjC99PbolxrTNpCLkaMmfN+ZEQmFw8RAVFkHv3xXKr1fFN0HFUzs
 Z8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WviGJBKgEpiJLqccK37TyqA/NvGYOeZQ8PBC4TwGa4M=;
 b=CvofryM1jqhCtHClMuRbQe+osfurPcaW94purFTlnZ+0dcw9C4IFcJ+gE7actTmahL
 kXopdL71UdkIiHbN6L4an8WS/NyceImN16aSSlGXLoyPYxaabtSPoQbGpD93biA+EBI9
 wc8w1XGbGey6KKDqLM08FC4zm254cB/nkoccf/Qeb7aSFKbuq0QBuUa9SyES54s3O+iv
 U+bIocuMnnwwcaEX1FVSeXQff6XxYrP3G7H6ioFSxrS0Sv/nlsYnczjlRa0Ox7K2yyF+
 0XP1nBf0SPvuJhtvXl36dfqihnzMugVOc/PMBVNNj+YJe02V/VMutU1FFOD6yu4mQQt0
 KnrQ==
X-Gm-Message-State: APjAAAXECrp8bHdTirqiyimFIqKpx8hrDvP3YeCn+XDylpd9AkSy5hqu
 GKqW89LEOjcIBcP22KhJ3f8=
X-Google-Smtp-Source: APXvYqwEekzVMmLl+SOJvzoI3Qwq5rO+7raqy2CKPQml0u9NmV8RXF94lZ0oCE6g1hDEhBYe3EaKWA==
X-Received: by 2002:a17:90a:9f90:: with SMTP id
 o16mr5730591pjp.72.1559916617409; 
 Fri, 07 Jun 2019 07:10:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id u20sm2526448pfm.145.2019.06.07.07.10.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 07:10:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, straube.linux@gmail.com,
 larry.finger@lwfinger.net, flbue@gmx.de
Subject: [PATCH v2] staging: rtl8188eu: core: Replace function
 rtw_free_network_nolock()
Date: Fri,  7 Jun 2019 19:40:03 +0530
Message-Id: <20190607141003.11998-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function rtw_free_network_nolock, as all it does is call
_rtw_free_network_nolock, and rename _rtw_free_network_nolock to
rtw_free_network_nolock.
Keep the new rtw_free_network_nolock a static function and remove the
old version from the header file.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c    | 9 ++-------
 drivers/staging/rtl8188eu/include/rtw_mlme.h | 3 ---
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 0abb2df32645..d2f7a88e992e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -159,7 +159,8 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
 	spin_unlock_bh(&free_queue->lock);
 }
 
-void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork)
+static void rtw_free_network_nolock(struct mlme_priv *pmlmepriv,
+				    struct wlan_network *pnetwork)
 {
 	struct __queue *free_queue = &pmlmepriv->free_bss_pool;
 
@@ -276,12 +277,6 @@ static struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv)
 	return _rtw_alloc_network(pmlmepriv);
 }
 
-static void rtw_free_network_nolock(struct mlme_priv *pmlmepriv,
-				    struct wlan_network *pnetwork)
-{
-	_rtw_free_network_nolock(pmlmepriv, pnetwork);
-}
-
 int rtw_is_same_ibss(struct adapter *adapter, struct wlan_network *pnetwork)
 {
 	int ret = true;
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme.h b/drivers/staging/rtl8188eu/include/rtw_mlme.h
index bfef66525944..9abb7c320192 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme.h
@@ -335,9 +335,6 @@ void rtw_free_mlme_priv_ie_data(struct mlme_priv *pmlmepriv);
 
 struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv);
 
-void _rtw_free_network_nolock(struct mlme_priv *pmlmepriv,
-			      struct wlan_network *pnetwork);
-
 int rtw_if_up(struct adapter *padapter);
 
 u8 *rtw_get_capability_from_ie(u8 *ie);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
