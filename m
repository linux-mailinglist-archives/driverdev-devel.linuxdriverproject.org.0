Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D43225B0A
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 11:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E299086FEF;
	Mon, 20 Jul 2020 09:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l38FDWlgTbad; Mon, 20 Jul 2020 09:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12D7186473;
	Mon, 20 Jul 2020 09:14:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAD2D1BF2FC
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 09:14:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B76708653D
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 09:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6ZVj0rPbWUH for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 09:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 558B086473
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 09:14:49 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ls15so9920302pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 02:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=OgGatn92pn/mnj6HtZstu6jkm6gd4UA0RdQ6VPZ+TmQ=;
 b=ORFXjj2peS1SWBYqeUz/r7LE24pHwRsT7JPbfVH5mFcqrhoaN2VaPtjoL8nkwzOySk
 zxoLTupZcFLfRAyHU32QRUsPLAVJ+FATtKxtkPL2wJ+Z4Pexien2UZBWRMJcnUhxGjaj
 AsKkGlbbX94dWxrc3TLBH54mRxZoI9Cs0loEJxPJGA650ol7C2FFM/D7RTGfn4IqRx52
 oLPHVoglWudrxthhhXOZzkwJ/9XqKyhOttot/Sp9toFv/yCwY5EzJmECihM9JvONgHYk
 zmQPIxPvUFdULB5auiQgL3eMCV1uP+/YHigcto7hprR+wN3qOh+Ql4wuQ0mDnFpw9ZsT
 5JTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=OgGatn92pn/mnj6HtZstu6jkm6gd4UA0RdQ6VPZ+TmQ=;
 b=eVIVUT58iKD34JuVhH2TAxQmUyl89Xby3e79W45wH0SEMgRaaYJdCxuXnU4UdHeL0Y
 s5ixh2l0Wl2al8Jy8V7Ytx5SIETb95p2h+qEJUYz5QsFbPmSXJj4jJHbWDXn0eV0TK26
 d3DiERNyoo5UrMP6CCzXZJMiEEQzt+wBUJj9JXfYZiJNJk19DSWVO+TSPy5k37A0RNgN
 /ZPJYW5aZV2f1kd7bEJAK8RyFhrO+DjvnCfksSLROBKna0vE+yMmirbh6f5LW2RNh75d
 5fWo7JMb2EwvfvqVRr/GHQUes63XzamUC4oZCsjucCAMOQmwKvyi26/4myhgIv65hfNW
 E4Hw==
X-Gm-Message-State: AOAM531rYQSSCjxSo/J5jGUBD6CP5g/gpkOeCB+LAflgPbjZ6VpfdPeY
 hWHR4fRKNvN2AM6I0hAKXGY=
X-Google-Smtp-Source: ABdhPJzM+4thIezZhVyXpy0+FfrJpNjkiinA17WMz2ifXMSx/ZTjIapWv8xXyQjatRoREGNSR5cF7w==
X-Received: by 2002:a17:90a:26ac:: with SMTP id
 m41mr21877321pje.169.1595236488926; 
 Mon, 20 Jul 2020 02:14:48 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id w9sm16276548pfq.178.2020.07.20.02.14.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 02:14:48 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 1/2] staging: rtl8192e: add space before open parenthesis
Date: Mon, 20 Jul 2020 14:44:41 +0530
Message-Id: <20200720091442.19532-1-darshandv10@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the coding style error by adding a space before
open parenthesis '(' in a conditional statement.

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..b2af802b9451 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
