Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EBC355139
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Apr 2021 12:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD69A849B2;
	Tue,  6 Apr 2021 10:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-XykzUqa_Ws; Tue,  6 Apr 2021 10:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C24284876;
	Tue,  6 Apr 2021 10:51:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 682011BF28E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 10:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 633614029A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 10:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qzSnxGu0j52f
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 10:51:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69E11400C2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  6 Apr 2021 10:51:28 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so7065043wmi.3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 06 Apr 2021 03:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a9jWO01eQCvaSALTaYkYaRpgTZuO0r7x7rAnN4myhxg=;
 b=B3Ep+wExrgNMtKa8EakKLL7kSl/7DSbnkWpxxMYEK/oxjgbZMOvAqWvKpIsing3zxu
 s/npRS1/OSQ7QHLFmo9WBHjnBYyR/bDsGAhqJl7QNr/Sud+rYToJarxr5T8+Hc4ryr/0
 9AZsOP/HlHrK2zB4vfvN7ZYFmAWuYqdBNrlh6aXuefzF/G1/qxOorPfPT0Oq2TDETgKZ
 D5iWK4t92EXRlKNVBANM6GuCqsNBiHgKYIjxXaWt72JFg7Zn/OMDc8608cOa2JzREgMb
 k8+6Aa09jjGL/mcik6of57bEFbKnArDko3tnTriMdAtAsHG9HFcSqdrOh7j2md/tvXQe
 GoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=a9jWO01eQCvaSALTaYkYaRpgTZuO0r7x7rAnN4myhxg=;
 b=PQCSoEz/BTKinTuQW1IJfwNFzPclFXh7GBQafMvOo58xIstf7Phj7JzzfqJXPegCmB
 IRyBFrpdQiPwpHenmfnIEil988EfvRAEZZNPlEnT03Kw8lRi5W9W+Bqzf79YI3Xm+ebo
 cKV6Dtk+GOX667cXpmhY1sY9h0GjqLm2BnojcsbmqJk3HdCXKawloA+wO09+jsKbTcJN
 jMwGHk56N/Ni1QCsTN/2GWRxAZCWF0Zbpf1TKdJ2n9RkuXCtpEdt6OUfml7/mFVo3zB+
 SDWzKpL+Y+yRmgun4ZZ1b1jLF9llopNJjqXp1DyPOPo9e9cIGzo/99Xtb3gi6bLKwZ6e
 EVHQ==
X-Gm-Message-State: AOAM531cEyPV+syA785GDFwArq9JhTiHIKr4zwERuaNeNtkT/5Rc/QdO
 MpcgW1sUOmKlGn2rMt+hmwY=
X-Google-Smtp-Source: ABdhPJxQOjyaK8Qd7dD5gHn2A2Ngxdpd7HfM815L2u2CG0SAVMPtVYJI53J97KTVwnSCHf9CetMUcQ==
X-Received: by 2002:a1c:4686:: with SMTP id t128mr3467097wma.156.1617706286497; 
 Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
 by smtp.gmail.com with ESMTPSA id
 c18sm5044229wrp.33.2021.04.06.03.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 03:51:26 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] drivers: staging: rtl8712: align arguments with open
 parenthesis
Date: Tue,  6 Apr 2021 11:51:24 +0100
Message-Id: <20210406105124.78498-1-martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Clean up checks of "Alignment should match open parenthesis"
in file mlme_osdep.h

Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
---
 drivers/staging/rtl8712/mlme_osdep.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/mlme_osdep.h b/drivers/staging/rtl8712/mlme_osdep.h
index 9eaf94f072ff..a02c782588dd 100644
--- a/drivers/staging/rtl8712/mlme_osdep.h
+++ b/drivers/staging/rtl8712/mlme_osdep.h
@@ -22,8 +22,8 @@ void r8712_os_indicate_disconnect(struct _adapter *adapter);
 void r8712_os_indicate_connect(struct _adapter *adapter);
 void r8712_report_sec_ie(struct _adapter *adapter, u8 authmode, u8 *sec_ie);
 int r8712_recv_indicatepkts_in_order(struct _adapter *adapter,
-				struct recv_reorder_ctrl *precvreorder_ctrl,
-				int bforced);
+				     struct recv_reorder_ctrl *precvreorder_ctrl,
+				     int bforced);
 void r8712_indicate_wx_assoc_event(struct _adapter *padapter);
 void r8712_indicate_wx_disassoc_event(struct _adapter *padapter);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
