Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 025EC2D21BB
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF9D587B4F;
	Tue,  8 Dec 2020 04:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vam-Xlc1lrfQ; Tue,  8 Dec 2020 04:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 021DF87B5A;
	Tue,  8 Dec 2020 04:08:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB78F1BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8C578768C
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:08:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fg2rCX1wlBx2 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E11B3879DC
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:08:01 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id d9so7078000iob.6
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C9YK23rigNo4fAHt5FAnHz48ScTShF2RcQD5zdVR6cE=;
 b=Wcn1Juryu3qkMZUKfIfG170JSh7UMKXs12S4Ml8pa09DSqzulQHnxGPi5zfs+lzueV
 kkr9Or9sHHxs8REwiJcdAHg4N6TehE5EZPtwYfGPSodtqgvZHReseyIG6ouT7e/KGW6h
 iog63eQumvX1bnGwoqhFK4NI26AkjHZRzKhNNWue1llPOvzcF+sSFyyENMjka5MjzMhQ
 3CBLEaTiUht2SnG0oTV3EGGDhOvQnD18d2dKZ82zriyQxNap3/wePAtBq8SN3QselckJ
 YbXCqn1ZiRosMq9u7jNrHMnp0afvvbEtI98NFCzmUiuFgRpzrNK9NA6lmlOg5+4AfOUu
 mniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C9YK23rigNo4fAHt5FAnHz48ScTShF2RcQD5zdVR6cE=;
 b=sBYyBp4NlzRVymvamwEQ+5mqhDimlGxqTTkT6pyD0qRDSs2QXudUE4pMoila2B5k0Y
 /uAVdHA1ypOH29yWCLM8L2eXnhNvd4dWASBgEnw9XIgpiv00vHsinGI9uwCpaQhiUbA/
 zp+ksjN7cbyL2GlUo5QW0x+wJeS9F/8CUNnNhoN2mRlD8ZJ3jLcqGo/++T2Ik6jqMvjt
 80R4kFvMuEKG4HQ+TH+WCCeKNoScOXuCZ0qxlBd9G3cMB8dX7Ig23mo2M0HFdDw07QsW
 3A+IZAepT0NdJrPCNkVOt7l/m7r8EGlnhGGZh9+3wLOybe94gC24y1fo96xkmrNk16oI
 YfOg==
X-Gm-Message-State: AOAM531dlhg3IygUZOQ7dC2BVssMw6YZ35hshClWhsP9BAViztw4wrjZ
 FFpnw1ZDCYcXu7P79X/Zlok=
X-Google-Smtp-Source: ABdhPJxWb8DUiF60yGXfPP+EaqbFAuy3gs56WZmQ+rKN9NG+Xm2chom1s5shL8zHfpUS+Tpa3zgecQ==
X-Received: by 2002:a02:93ac:: with SMTP id z41mr24939609jah.127.1607400481315; 
 Mon, 07 Dec 2020 20:08:01 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:08:00 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 21/21] staging: rtl8723bs: remove ELEMENT_ID enum
Date: Mon,  7 Dec 2020 22:07:33 -0600
Message-Id: <20201208040733.379197-22-ross.schm.dev@gmail.com>
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

The ELEMENT_ID enum is no longer used, remove it.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 76 ------------------------
 1 file changed, 76 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 7f482a45705b..fe984fcb66a9 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,82 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-enum ELEMENT_ID {
-	EID_SsId					= 0, /* service set identifier (0:32) */
-	EID_SupRates				= 1, /* supported rates (1:8) */
-	EID_FHParms				= 2, /* FH parameter set (5) */
-	EID_DSParms				= 3, /* DS parameter set (1) */
-	EID_CFParms				= 4, /* CF parameter set (6) */
-	EID_Tim						= 5, /* Traffic Information Map (4:254) */
-	EID_IbssParms				= 6, /* IBSS parameter set (2) */
-	EID_Country					= 7, /* */
-
-	/*  Form 7.3.2: Information elements in 802.11E/D13.0, page 46. */
-	EID_QBSSLoad				= 11,
-	EID_EDCAParms				= 12,
-	EID_TSpec					= 13,
-	EID_TClass					= 14,
-	EID_Schedule				= 15,
-	/*  */
-
-	EID_Ctext					= 16, /* challenge text*/
-	EID_POWER_CONSTRAINT		= 32, /* Power Constraint*/
-
-	/* vivi for WIFITest, 802.11h AP, 20100427 */
-	/*  2010/12/26 MH The definition we can declare always!! */
-	EID_PowerCap				= 33,
-	EID_SupportedChannels		= 36,
-	EID_ChlSwitchAnnounce		= 37,
-
-	EID_MeasureRequest			= 38, /*  Measurement Request */
-	EID_MeasureReport			= 39, /*  Measurement Report */
-
-	EID_ERPInfo				= 42,
-
-	/*  Form 7.3.2: Information elements in 802.11E/D13.0, page 46. */
-	EID_TSDelay				= 43,
-	EID_TCLASProc				= 44,
-	EID_HTCapability			= 45,
-	EID_QoSCap					= 46,
-	/*  */
-
-	EID_WPA2					= 48,
-	EID_ExtSupRates			= 50,
-
-	EID_FTIE					= 55, /*  Defined in 802.11r */
-	EID_Timeout				= 56, /*  Defined in 802.11r */
-
-	EID_SupRegulatory			= 59, /*  Supported Requlatory Classes 802.11y */
-	EID_HTInfo					= 61,
-	EID_SecondaryChnlOffset		= 62,
-
-	EID_BSSCoexistence			= 72, /*  20/40 BSS Coexistence */
-	EID_BSSIntolerantChlReport	= 73,
-	EID_OBSS					= 74, /*  Overlapping BSS Scan Parameters */
-
-	EID_LinkIdentifier			= 101, /*  Defined in 802.11z */
-	EID_WakeupSchedule		= 102, /*  Defined in 802.11z */
-	EID_ChnlSwitchTimeing		= 104, /*  Defined in 802.11z */
-	EID_PTIControl				= 105, /*  Defined in 802.11z */
-	EID_PUBufferStatus			= 106, /*  Defined in 802.11z */
-
-	EID_EXTCapability			= 127, /*  Extended Capabilities */
-	/*  From S19:Aironet IE and S21:AP IP address IE in CCX v1.13, p16 and p18. */
-	EID_Aironet					= 133, /*  0x85: Aironet Element for Cisco CCX */
-	EID_CiscoIP					= 149, /*  0x95: IP Address IE for Cisco CCX */
-
-	EID_CellPwr					= 150, /*  0x96: Cell Power Limit IE. Ref. 0x96. */
-
-	EID_CCKM					= 156,
-
-	EID_Vendor					= 221, /*  0xDD: Vendor Specific */
-
-	EID_WAPI					= 68,
-	EID_VHTCapability			= 191, /*  Based on 802.11ac D2.0 */
-	EID_VHTOperation			= 192, /*  Based on 802.11ac D2.0 */
-	EID_OpModeNotification		= 199, /*  Based on 802.11ac D3.0 */
-};
-
 /* ---------------------------------------------------------------------------
 					Below is the fixed elements...
 -----------------------------------------------------------------------------*/
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
