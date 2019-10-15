Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1635DD7A4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 17:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A7789228E7;
	Tue, 15 Oct 2019 15:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxlMWcV6i-15; Tue, 15 Oct 2019 15:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3318F20111;
	Tue, 15 Oct 2019 15:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49FB51BF296
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3E1EC88252
 for <devel@linuxdriverproject.org>; Tue, 15 Oct 2019 15:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9im6ZqxhGn0l for <devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 15:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4D54E8824B
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 15:45:52 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id y91so18471846ede.9
 for <devel@driverdev.osuosl.org>; Tue, 15 Oct 2019 08:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VmiRcRHmz8DDVB2cq0v7r6/X0JPNcG46yUc4K+zEiys=;
 b=E9mfq/KOFVE0GO0x3b0UZZ1JezhxnKyhaIzvNd3sSr4Gbk3H+JJLK7YLD46aGZCwHk
 0yXSRBXCRg0JFm3f65XtnG4n5KBuRuhOlhhVEh39Moad4HjLxOnqYsbuq3ZDpHQGu2Sq
 /K3OsUMx7veVmqT7mP1Haa8gTLk77WVE4S+y/eB562wtPDMb2FTEBzTkpfhq3jygXnKX
 n+vXIu5J8sxv0BmrxfG24w2TArWPh2dnvx8xY3IEeWZV+M6+nScSsxK0zMOCP/eXmnjq
 kgEzw5GxhefB6Vv1bi0BiUBNKEwhYXhAVNe5Phz/7vIGRZOxPzf6vn7zElYHHmqNqsiI
 koJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VmiRcRHmz8DDVB2cq0v7r6/X0JPNcG46yUc4K+zEiys=;
 b=eDvB/Ke9ffcycnsyi3kdnyy1snZu05LoqdRaBNjxZ0F1or3i3Qzd55Uxcru2ZtOFhG
 MxWM0pPqSbXLwlqIIKqErN22RcvyBZXaf6PzFz3apitFYg0x7KxlVmEFGLO64qaMV1gD
 fCu3QX19qbcojLMYnTkE/F6FNPSGbYkBnqHwKVV0+hlNSy0EEeHIjG/GU0DS6oNu0tEN
 B5vup87WgtKlF+9lYUcsGGizqn7GRwQFr+iPjZGX5kwu0Q8mmt7YCMyX1lW8vfemns9D
 fMw6KoiPyZODgx7BA2J2ZhBUvk0drwAFxVY6rc68t2fWcJ5D8R8+/V+yVC7TUqB8T3zh
 usEQ==
X-Gm-Message-State: APjAAAXoKoieVE1/qwJWyvKNRmEkwkE6hIUTAYr94r84TuEiJ5SoeyF7
 yALgGS5H/gkHxAEC92uLGlY=
X-Google-Smtp-Source: APXvYqwJje6PpKAjIIPrG8T3cNgpwAEubyG9qZshvloANoppnP9GolA5+D50+LSdpYInZJ3Le6bePg==
X-Received: by 2002:a17:906:8391:: with SMTP id
 p17mr33623378ejx.216.1571154350730; 
 Tue, 15 Oct 2019 08:45:50 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id nq1sm2807787ejb.75.2019.10.15.08.45.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 08:45:50 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8188eu: remove blank lines
Date: Tue, 15 Oct 2019 17:45:35 +0200
Message-Id: <20191015154535.27979-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015154535.27979-1-straube.linux@gmail.com>
References: <20191015154535.27979-1-straube.linux@gmail.com>
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

Remove blank lines to reduce whitespace and improve readability.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 1e261ff8f0a0..af8a79ce8736 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -749,11 +749,9 @@ void HTOnAssocRsp(struct adapter *padapter)
 	 * AMPDU_para [4:2]:Min MPDU Start Spacing
 	 */
 	max_ampdu_len = pmlmeinfo->HT_caps.ampdu_params_info & 0x03;
-
 	min_mpdu_spacing = (pmlmeinfo->HT_caps.ampdu_params_info & 0x1c) >> 2;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_MIN_SPACE, &min_mpdu_spacing);
-
 	rtw_hal_set_hwreg(padapter, HW_VAR_AMPDU_FACTOR, &max_ampdu_len);
 }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
