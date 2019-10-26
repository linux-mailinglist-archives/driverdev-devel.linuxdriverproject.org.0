Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7018E5A66
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E38BC8788D;
	Sat, 26 Oct 2019 12:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mX5HBxuR7Cro; Sat, 26 Oct 2019 12:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15A2587082;
	Sat, 26 Oct 2019 12:12:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC3E31BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A7A3A8737E
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVjgMJ+17PNi for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D654687082
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id n7so4841946wmc.3
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sv48Bpld+S8ENWGw0IO9+9etbMm5gapIqiSKDckP1q0=;
 b=PMTXYAG2F+dIWW1dp/rANy+vW/rCk05UQ4NxwIHricgk80t0jgrQwdrFVZC9xILtdL
 DtY2BnQMx6/iAN/qcfVeusxe4whV7lbjZ5r8NgWWG6+MHAFTcyi8kmobRmGHGvM4OfKy
 mhoBAPPGD+fw1d76X8dea9nFH4L+T1cxU7xsoxjzqQEEZyA2PHOpOGCMuO78rFgDdhHb
 XvIizagsosP4iWNv6JVbGOimaI3dIclzOpR9udq5K3RyliiWp6wrm2kgW9b9JFOMLzvi
 cCn32cpknHWjwTkIjxLaDOPvjz8G3VxCe1OMJzu/P3zuBHHUshu97hpmO6Td/hXlg8jl
 qcIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sv48Bpld+S8ENWGw0IO9+9etbMm5gapIqiSKDckP1q0=;
 b=ODsJx/+GvpnMsl9WKsnghB9HK8f+npuA0TxvfYbybTosKlowTZMcmnZLlah1mQNe9H
 /ImgRqnnw3Rp1X39zeigoSCvoX51j7xeUwPkrZ7mpu/A7q/L/G0g98BcdL5GTjfkBfCg
 Vm3P/UAZLbm+UEiyvciWuiECpUFXq04iYO4rMlGGTqIZzjnoquI+KXKnF+jcVxmXMIJP
 sIKoJJJvTvCZiLkuTcO1KyVMfqoVtGZRuKJPd5SHztlwKm92si1DZhB8hH4hgwoBNpMi
 ipcuxXjI8OpoZhsJOrBBoMtZNObdp8cjd2W8WJRR2UuBIBfhygr0JtRDaBA1ABFz9Y77
 D1gQ==
X-Gm-Message-State: APjAAAVAcpyD2v+4xn4kQVGmTSPRLrtcuiZ+YMddk/qY0D2ykgy6X1tp
 eIkIFXC5ypvB142HK9Rm9b8=
X-Google-Smtp-Source: APXvYqxoAC2iy/8fqgTsidv12j+N6zvpRu5Z6WZQ/dD7eJ73TYwYPSZ2XlM5Ro6No4yIPlUyakkMMQ==
X-Received: by 2002:a1c:39c1:: with SMTP id g184mr7639457wma.75.1572091915456; 
 Sat, 26 Oct 2019 05:11:55 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:54 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/7] staging: rtl8188eu: remove ternary operator
Date: Sat, 26 Oct 2019 14:11:33 +0200
Message-Id: <20191026121135.181897-5-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026121135.181897-1-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
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

Instead of using ternary operator to set variable res, use the value
of variable match (or the negation) directly to simplify the code and
improve readability.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 282c835a635c..3cadc46836e1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -504,9 +504,9 @@ bool rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	spin_unlock_bh(&pacl_node_q->lock);
 
 	if (pacl_list->mode == 1)/* accept unless in deny list */
-		res = (match) ? false : true;
+		res = !match;
 	else if (pacl_list->mode == 2)/* deny unless in accept list */
-		res = (match) ? true : false;
+		res = match;
 	else
 		res = true;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
