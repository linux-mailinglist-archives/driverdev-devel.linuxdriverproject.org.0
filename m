Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB672D21B7
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B64F8778C;
	Tue,  8 Dec 2020 04:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0NPitBD-1kRw; Tue,  8 Dec 2020 04:08:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A39C387C2A;
	Tue,  8 Dec 2020 04:08:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FB571BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6CA5587B45
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bTik0KFO0MFE for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA88C87B17
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:57 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id p5so10634280ilm.12
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HwpMKueyptN2eIepuXOY9cYUJEcZH7sf0NCC3OLkPCs=;
 b=NTyLQ8MXTKKPf/kK5GJm/MQ3UGmGD33SH76jpgZdEs4CHtTL1AcTZzUWVmz9/JFudE
 1l7QfTdd9D44rTeRaPbgv7U/BcKvPDLDpXGKbb0naejr89mX/JpsiynTAaM50qVtv4zr
 sMe5OA9VA5YOFqeq+GiYmd9K34aJYBQ73DbVbUzVZ2MkfRVstYug/GhYCb/FZ0Q5urWk
 FNy4WxKX7g4wUE2AX+jhn/QlBsquAklyygtq3myUVgZcjPd4aNSrr5uFk7HTrAlWauCE
 K4lwtFgKxIY7iBFeCzMhrF3fxrJ0dN5yLJHE2sLNTxvGBVMZJrFjweZezwkBkdxT6ugg
 bTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HwpMKueyptN2eIepuXOY9cYUJEcZH7sf0NCC3OLkPCs=;
 b=Lbolbuikzl9tzifVq7pYCz4U7u+c4WI5LToMlBqQRTFp/K7V/yoDQFy74Ga2iFRZF2
 OrRefyW/xOAVsindxY8r2ltLqZUTy60OFlQyS//ndd5E/0yQQx6ecK+O/MJwVFST8hSq
 nXqf898/TVllbDCclinUktrNXmsCvpydlddjTdhTVtkLs7vKhZYEVC8EMRTs5xn7ZwVF
 aFlubKfP5TBjCqDshYl0MKbpt8v9fbt3JX9AegxjqZHlWJVINXFoxU2LHQzwNvN+qY60
 W8A2kGFvry57TpIymi1O9v/xSp22uZOPAvmzV/v/znvaac12+fUyrEhamfX0/gSEgAyh
 gtWA==
X-Gm-Message-State: AOAM5330IN/TqaG5S43w08MEPn0EuvPHOUWbMO7qI7mgJnEdmoulfCkP
 dZ0xVNRJauaw57Ud1VifBCk=
X-Google-Smtp-Source: ABdhPJwBjrv2hEYo3WZQBfIH8w/A7FOc/lh2pOHiMWPiM8F+1xVTqpoKhGuRhBcmRxZ99brefZZqNA==
X-Received: by 2002:a05:6e02:194c:: with SMTP id
 x12mr8860799ilu.175.1607400477141; 
 Mon, 07 Dec 2020 20:07:57 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:56 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 17/21] staging: rtl8723bs: replace EID_BSSCoexistence
Date: Mon,  7 Dec 2020 22:07:29 -0600
Message-Id: <20201208040733.379197-18-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique EID_BSSCoexistence constant with kernel provided
WLAN_EID_BSS_COEX_2040 from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index e9b14fc8b10f..b6e255f6cdc5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4096,7 +4096,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 		iedata |= BIT(2);/* 20 MHz BSS Width Request */
 
-		pframe = rtw_set_ie(pframe, EID_BSSCoexistence,  1, &iedata, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_BSS_COEX_2040,  1, &iedata, &(pattrib->pktlen));
 
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
