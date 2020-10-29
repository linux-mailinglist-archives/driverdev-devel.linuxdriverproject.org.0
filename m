Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCE129EC4E
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 13:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA578875ED;
	Thu, 29 Oct 2020 12:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c9q9j334CB0q; Thu, 29 Oct 2020 12:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA458875D5;
	Thu, 29 Oct 2020 12:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 42AC51BF3E1
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F82486403
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mJgJEY6yaeQf for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 12:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE789860F9
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 12:52:39 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w21so2253280pfc.7
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 05:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w6cYmcLzWqn8t2raSoU3UXP82vHv3Ts4/10s9DiA55o=;
 b=Wgs/1kG7yeta/HhuEd68GrCzeCJmFrctToJX/UfKovkLcp28DQFYM2BNWCWmUMNmnI
 ra+Ymuvx4utk5pduPoce4EHZupGHys5WwNaIsGM+mXKfhJvcazzet10rJ+yZxhmHEayj
 0FCg0vBxxixCvpQmOFsAMunZb0NhIYGlAPGsW8uXeLGmJu/jJALyeJhg+CXE5CUccgiS
 KsEat9DmRWpbFKoZDkWLZVMitWTRNtZNYCeAvrRa3rbq0x+bFF8N5CI2/iBRb8WwJOIG
 2AJmYjOZd0ZCBNFzLzfXJBC6fKRsobfAQNRCLaf0v9z07sNebJ5aJ1yUsUQxwiex6MBa
 nFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w6cYmcLzWqn8t2raSoU3UXP82vHv3Ts4/10s9DiA55o=;
 b=W6aShj4EkSHDqN/31YnPhqaRNVphXtzC0C6o66NvuTFLsiXaPr6CNJNY21pJPxz1oJ
 YXJb6oV7Pm8UOnhXUXQYOV/KMZbvXLjO0HbSScualUXGBo0jEpkgDFiPou73zj4V9QIo
 k7kZYeSyxyTxPkuGI9QKBwwXssYlix+gLfopUafhsx35gmcZO9B9t5HWA7AjI7T2JzSG
 7ZLXh8EY1mknGxPUPGXtzKFsW7dxTO9w5m7OgLsopqGSPn1Kild0vWJA6vhG650cIQnj
 lVIWJsrsYHra9C85mVPrbpkbtRuz5Aj5Oot1NnY4g3qRrSOdxd3Jvl/+8CHB7SdvSnQK
 MWtg==
X-Gm-Message-State: AOAM532yBbF5Wc+kVGhVcnjDDTkHX2i6k7Mn0IAa7AzaSsNsipbXbhyw
 CiDurROWKY4oUJaH5Ei/nrQDNVzwnV5dPBiQ
X-Google-Smtp-Source: ABdhPJwIFu3QhVL1EyTJYlcUSbYFJu3rXpJRiIlfxXx6/WUz+QZGannT1zfXk5AQiA0ifgK+uBBkYA==
X-Received: by 2002:a63:da57:: with SMTP id l23mr3808579pgj.390.1603975959273; 
 Thu, 29 Oct 2020 05:52:39 -0700 (PDT)
Received: from localhost.localdomain (sau-465d4-or.servercontrol.com.au.
 [43.250.207.1])
 by smtp.gmail.com with ESMTPSA id h26sm493641pfq.139.2020.10.29.05.52.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 05:52:38 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3] drivers: staging: rtl8188eu: Fix spelling in two comments
 i.e defalut to default
Date: Thu, 29 Oct 2020 18:19:53 +0530
Message-Id: <20201029124953.3957-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two spelling in two different comments.

s/defalut/default/p

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 Changes from V2 : version change to reflect the correct one.

 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 1af919ff6d93..391c59490718 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -52,7 +52,7 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

@@ -109,7 +109,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
