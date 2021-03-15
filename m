Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 020E133C3DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82A66834DB;
	Mon, 15 Mar 2021 17:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5Ll9P02fnUa; Mon, 15 Mar 2021 17:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD5A2834D3;
	Mon, 15 Mar 2021 17:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01EF91BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F10D56F557
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WCQtpbIaltW9 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44BA06F504
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:51 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id mm21so67441391ejb.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9I/IKq+QWdt1iVSmn6ULlIKEAkCCPCFrN4a2p2v4cBc=;
 b=M8gnsZjPcCCORwjl4jnV+9XF9fjsz0Wc3ch0x7ewW8pDgEjbckl9PYpt+75EMcKeAp
 8z+L7eAU09QCAFx14Rnus70ekJm9N5cxoLnOKPEhEkMuy5NQJPLLbPlRJjakUXtMweob
 /u/tXCDgSMhpGcPE4Ax9PCzy47HdmCIL5ARXWj+/kHVlsTKaBtt+3K9UqKgmLlORQe96
 vST7Uc2zvZh9MJfKoz2+qqUzWmlQeEFGSxhOxgVCZnS+Vad1mRwtc80m34YZKguBwwP1
 KSWKh6Nbl6XoxFImlom4gkj3dEOYtF4iFIhsIS4+2df0wrinEVCfgP0fqIF++MsATusL
 X87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9I/IKq+QWdt1iVSmn6ULlIKEAkCCPCFrN4a2p2v4cBc=;
 b=ofgNidhJlquNRMvv8pCHC8E8qtsQhfA6ylWKk3m/q9XKU2HXmGmd1G7o80BtwilTaw
 jC6i6yAEygzufBbF1zphh1+NxqQtHPJtQj+I48SixzenLty+rPDZ2iCRqI6vZW401WMK
 6Qgcy+WHiAgsOhNI1rMpYWeNc1Lfzzei/X/hMmnBW6QUhauBPujOU55nbvZVwITDDWfN
 6GgaWX/E8Gn//KRyXA8kVo5bqbiCGym4IKXVgcBF1aiI1vG99m31BPEGTfsbR+BIjM8u
 +5fd9zNC0T0wqCQWm6nOK4IIPJByCwpTkTqfZdTlL8MOC2xF/V3bg90EZZpuYHMeg96/
 yvqA==
X-Gm-Message-State: AOAM530estTR42y4GaLEO0i+6sXE0zauDYW25cYANiT3e6FOATHkAEyK
 P4O8T5zAwCNasFKvp/6WeKaCWDEooBs=
X-Google-Smtp-Source: ABdhPJynNZaVB7uRVE56qZUn/ROThHcnW7Aq/i97FwdcAt4Km3mAZjfrm+PV37o8+H7liLguofEB4w==
X-Received: by 2002:a17:906:eb89:: with SMTP id
 mh9mr25318228ejb.122.1615828009590; 
 Mon, 15 Mar 2021 10:06:49 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:49 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 49/57] Staging: rtl8723bs: fix spaces in recv_osdep.h
Date: Mon, 15 Mar 2021 18:06:10 +0100
Message-Id: <20210315170618.2566-50-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #17: FILE: ./include/recv_osdep.h:17:
    +extern void rtw_recv_returnpacket(struct net_device * cnxt, struct sk_buff *preturnedpkt);

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 82830ffc530a..83330ea98fbf 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -14,7 +14,7 @@ extern void _rtw_free_recv_priv(struct recv_priv *precvpriv);
 
 extern s32  rtw_recv_entry(union recv_frame *precv_frame);
 extern int rtw_recv_indicatepkt(struct adapter *adapter, union recv_frame *precv_frame);
-extern void rtw_recv_returnpacket(struct net_device * cnxt, struct sk_buff *preturnedpkt);
+extern void rtw_recv_returnpacket(struct net_device *cnxt, struct sk_buff *preturnedpkt);
 
 extern void rtw_handle_tkip_mic_err(struct adapter *padapter, u8 bgroup);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
