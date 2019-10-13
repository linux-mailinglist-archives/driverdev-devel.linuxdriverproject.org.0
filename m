Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D76D5659
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 15:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 301AD87C9C;
	Sun, 13 Oct 2019 13:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uj+3VbomUrKE; Sun, 13 Oct 2019 13:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 783A887C2C;
	Sun, 13 Oct 2019 13:13:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFA5D1BF23F
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 13:13:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3CD586B90
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 13:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMajTdVTQiEh for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 13:13:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDBAC86BF9
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 13:13:07 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id r18so802312eds.13
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 06:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9jSePMrNOPVfUktsu+z0HK6zACURlJM3IWN/zSmsSyQ=;
 b=jwiZ/6IgOGV/zKKtpKYw5tL4i/alBZHyx+XyUyLn13u+I2YtSB5xp13Odo+3f5zRya
 Rdps56gkm0JpAA4r6fV6SV6OBk6qCVM4YnnwrgrGTAeWlDhvGc9+x1dJhtJFhsrhz/re
 F3n4g3B2uTdFWATBQbyA+i077azBTu2BoJsGs7UGW4hl8kfl1ipyPggCulcq6eWpOLvZ
 hqbdrLG34pkFWmMYZXToje7SJVZfujQZExKDYYLtxTksfq4qYGBfcNez5KxdbTA27CCl
 7e5kZ16OF2VsRO1HvtfahYXBN3QDP0GXQ+MLals5jvYOOz+rlbWNC6fXGCUkf8ygVGPU
 03jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9jSePMrNOPVfUktsu+z0HK6zACURlJM3IWN/zSmsSyQ=;
 b=efMcBX/fxutgtq6Tu6O8zenzl4iH0BMkOcbqIffrF/a0YwiDOKrmAUDQkJJ3Rh4WFO
 iUZ2Kn1oMbv+LIRJf9M36vjDgzSkTw2+VDqEY/MEMJWXo9Cv9lOSmioLugXecVIsvY7w
 pCdk3Y1SLRoKdJEiEJsc7QohTfatp2LjRO+xdwSV/NBd53pSO3zXVUcO4mb0H3N3g69c
 5wYqe3jFf208hvuMZNX2xQ+QU28dm+pgcwGJ91ipU5LFEFOYtz3jBfPG64OvSFOc9ax6
 Qh9eoT0BMSyvC0Im17S6d4dnMvGPWZS5Hv5kSZRsHQv5q2yF66D9ZBtCLJHUegqYq5MI
 Jrzg==
X-Gm-Message-State: APjAAAUqpnPGsn03xeL1rdIEPxSJBVWP5v7jzc4Q/xJhc02ULMR5UFHp
 tTqfzZlKZadpT4k7C53Mmf0=
X-Google-Smtp-Source: APXvYqxWWqA5UWry8XyE0fcHakoGUWdBcpzyDV86cVZOdeo/x5sdE213x1k5SRcM89eNuzKC6ylDNw==
X-Received: by 2002:a50:a781:: with SMTP id i1mr23527070edc.17.1570972385970; 
 Sun, 13 Oct 2019 06:13:05 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id u30sm2580520edd.18.2019.10.13.06.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 06:13:05 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: remove braces from single statement
 if block
Date: Sun, 13 Oct 2019 15:12:48 +0200
Message-Id: <20191013131249.34422-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove braces from single statement if block to comply with kernel
coding style. Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 1ec3b237212e..e764436e120f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -2045,9 +2045,9 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 
 		while (1) {
 			do_join_r = rtw_do_join(padapter);
-			if (do_join_r == _SUCCESS) {
+			if (do_join_r == _SUCCESS)
 				break;
-			}
+
 			DBG_88E("roaming do_join return %d\n", do_join_r);
 			pmlmepriv->to_roaming--;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
