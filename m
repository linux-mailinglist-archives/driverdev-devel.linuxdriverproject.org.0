Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E379E5A64
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1758D864B2;
	Sat, 26 Oct 2019 12:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id suqQ8rcPX7eH; Sat, 26 Oct 2019 12:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D376386457;
	Sat, 26 Oct 2019 12:11:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDB9F1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA8298574A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sZHSqqJ23bQ6 for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15B5885653
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:55 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g7so4837657wmk.4
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vrtKL5FLpbI/Kv7Prf5m0FfT7aQNnb/mhwX9jm5QzjY=;
 b=H1bmO+672auiRTfi8IzBBR6BG5Jt5CFw062RwUFwDum/lcoEs9XE23YdzDFaAqaMSF
 YLMPnz5YbAcFNzy2VJFwAwhgFaQFMR5QpkPjN1b2id87MGj3/DstA3VA50XDtBjCuFoq
 aI0uNLnmGn2o6unYPsaelDgvS1/DZz1862Pp5d02/mBSZw9uhTPU9Wulp7zovuiqg8Rb
 VSxuJTfxuo0MpxvuhaK2oqEsFG7LScgAgh5KfS0FdipzVJDtJHHKAt/eQ5AyMUxtBDdn
 b61wvgww0H06JQxW0nCPFlTIWf3zm66/ox5p4Nl3PMVFkBnCioiZF/Mc3lmHIdv5bRJO
 pDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vrtKL5FLpbI/Kv7Prf5m0FfT7aQNnb/mhwX9jm5QzjY=;
 b=hEr3ZFgPlh+UnxYqwxVYN/98+MRt/DxXYxlsrUXrOQbvDPVM/Wnx+i0o+iL8a7AsIa
 GBkn+jcDyfbp5r6FSpjizMR9b2swkuGbkmQW+0niaiLAjZA8O0Q78hJM2Wu+WaHSzXt9
 pFhm17T4kR1GPDZivuoJH6SiJjQMCO/JBmT96J6ccewQbr+wgDsaoGy7vqnW+H995xwi
 HDRAlLbvogRqGti3flGUnc2XiPecmX3c70wkXT+fiq3LPQZRIG/axjITagse9BT2uARo
 cXIoFzCv/CRcj9o6Yz8mn9Ej7NpVzDAdP9NDxgSV0ZyKicVzHQeRkmPCAcLRd4zclDQP
 1HHw==
X-Gm-Message-State: APjAAAWG/j77M4b04O3ET1TwVXxzqeVFGPlwZig4vfq5sI5AYMty6ok+
 X04rfI0cn/WxRMuQPFuEezk=
X-Google-Smtp-Source: APXvYqxZ5yzfpPVbuUPCYjGomhgeFgFlBsrzZPBDEVPojOXP6teEwPbm5tR+XMI+HsB5KNkTFkZw0g==
X-Received: by 2002:a1c:5459:: with SMTP id p25mr4218343wmi.109.1572091913616; 
 Sat, 26 Oct 2019 05:11:53 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:53 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/7] staging: rtl8188eu: rename array bcast_addr
Date: Sat, 26 Oct 2019 14:11:31 +0200
Message-Id: <20191026121135.181897-3-straube.linux@gmail.com>
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

Rename array bcast_addr to be more consistent in variable naming.
In other places in this file buffers for broadcast addresses are
named bc_addr as well.

bcast_addr -> bc_addr

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 394b887a8bde..157ae2f355ff 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -450,10 +450,10 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 {
 	struct sta_info *psta;
 	u32 res = _SUCCESS;
-	u8 bcast_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
+	u8 bc_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	psta = rtw_alloc_stainfo(pstapriv, bcast_addr);
+	psta = rtw_alloc_stainfo(pstapriv, bc_addr);
 
 	if (!psta) {
 		res = _FAIL;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
