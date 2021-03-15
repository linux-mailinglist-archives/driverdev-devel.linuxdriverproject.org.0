Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605033C3E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B18BC4B08F;
	Mon, 15 Mar 2021 17:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2RWHTZ4hodI; Mon, 15 Mar 2021 17:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 998094694A;
	Mon, 15 Mar 2021 17:15:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5F871BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C541F430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qeHYeRDGX_sQ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B75F41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:52 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id ci14so67359557ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=cTY5J0VdJQWIMhohRT4+ixiuJjUN3XIJgg6qvR9EJGM=;
 b=B2BCtWbDKqwY/4mx3kHYiE/jwEM5+lF8rL+OUsKOkccM+BlYIpEI3PL4vacPDSzkkU
 u5OXmv9Vj+Cw+MaLsAIf7WFx7+S1eLYkInQvT58IFt+UoMX31TBRL/5a2ab6aPD9xlju
 tfgYo2FpQk5vvxxwhkMZfPUta0DXGaxsganhn6N1fiTAKFaJr04X4cinTiPHOQnsrRBs
 KH3tNX6UJNMAQm5H2mUSPbMk45ei5Jlu9XZl+zqrMOE43lvwIghgJUZk5bXSmIwREo1I
 vM0cVder5qL0MC8ksLgkExs8QtVjL4oh3MumajZ8FRGE91RwseZ1U1ni9NeBrsEjAymb
 HlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cTY5J0VdJQWIMhohRT4+ixiuJjUN3XIJgg6qvR9EJGM=;
 b=dySb/0EKBs6HGaFZQBliUQvQk6gi3Up5Wt/H6yDiXb6ChIqi6OevxhvO4dL+O5Lehm
 bIiVlIGRVAHq0aaINBdLRbrholMfl5Sda18OQfjjoZnK8WDq1OsscPGpvx2CasAGLK8K
 lcP5CnDKTYnTK7YPyKkOsDTPrdwMuP3u8AY9TQmtLXVby9fYZr3l/amd+VjgGotapEGb
 Pq/H20VeypJZ5w/tQABaujttxxd2kczdoNrCGF8z+sa5VAIYlQ6Jjjl+DTVtG/sU1yIn
 3R55r1XsDpCHHCi8dI4Pq/6km09Fr3g24KeXUwnS5VVb61ynLWb5ntftkCNwP7tjD4tp
 9atA==
X-Gm-Message-State: AOAM531tRh7duyfExUCBrjSL41EEaEQuvE1swZBiyW9WcINerwEy2WMh
 jHPuNHtRF2YhqGFS19dxrX41bHIBats=
X-Google-Smtp-Source: ABdhPJyw9iB4+jllDe/H+/WWhSyBuTs9YGSEw60wkVIAON6grtJb4684inLt66DTKbiBesbxUGLP4A==
X-Received: by 2002:a17:906:814b:: with SMTP id
 z11mr24696087ejw.290.1615828010430; 
 Mon, 15 Mar 2021 10:06:50 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:50 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 50/57] Staging: rtl8723bs: fix spaces in rtl8723b_xmit.h
Date: Mon, 15 Mar 2021 18:06:11 +0100
Message-Id: <20210315170618.2566-51-marcocesati@gmail.com>
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
    #446: FILE: ./include/rtl8723b_xmit.h:446:
    +u8 BWMapping_8723B(struct adapter * Adapter, struct pkt_attrib *pattrib);

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #447: FILE: ./include/rtl8723b_xmit.h:447:
    +u8 SCMapping_8723B(struct adapter * Adapter, struct pkt_attrib	*pattrib);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtl8723b_xmit.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
index 45573336ead2..ccadc3d11644 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_xmit.h
@@ -443,7 +443,7 @@ s32 rtl8723bs_xmit_buf_handler(struct adapter *padapter);
 int rtl8723bs_xmit_thread(void *context);
 #define hal_xmit_handler rtl8723bs_xmit_buf_handler
 
-u8 BWMapping_8723B(struct adapter * Adapter, struct pkt_attrib *pattrib);
-u8 SCMapping_8723B(struct adapter * Adapter, struct pkt_attrib	*pattrib);
+u8 BWMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib);
+u8 SCMapping_8723B(struct adapter *Adapter, struct pkt_attrib *pattrib);
 
 #endif
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
