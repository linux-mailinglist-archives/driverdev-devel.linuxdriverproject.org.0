Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 567711283AB
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 22:16:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 468168836A;
	Fri, 20 Dec 2019 21:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkwQQT7KYeQw; Fri, 20 Dec 2019 21:16:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13CC088365;
	Fri, 20 Dec 2019 21:16:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7D6E1BF358
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C43E522718
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 21:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPnWo2Q8ehZR for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 21:16:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id D467C2036C
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 21:16:02 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p17so10613713wmb.0
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 13:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=zideRvbQya3S6yG2bNBBG470vEvEA3jLiVBYuDsMFeM=;
 b=g7VP7YDeKo02oWgqpA4AvkZ2F9tzOvpnZVkfBVHwPBpIW9h33WCWxyt2e8kHuV/6rA
 BLCy3tep7X5/J3NSMHgVKRwfMUbjXpiGLbFS3NbCHvwP0nDMiZeaiQ1nu8vlc+NR0fiD
 mSVhL73fKwXE0oM0IP6lUXpQ8y2opZOIFZdu2bim4KzVmxmd8qAgFaFbUBk31PIsMh86
 56MNnUjvhw/t1PKcqMZ6+wQO1skBpaCAKJemXY2OpuCFDR2TBTnEdI/A7DyzI0b1QS06
 7g+21aT3AMlwFSWQBl9RhjLuoM6KCGgQZbFkcNp16MF3k2hV7Qs7rPPmybOdk0ASvyE6
 HLvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=zideRvbQya3S6yG2bNBBG470vEvEA3jLiVBYuDsMFeM=;
 b=DhrvrqP+oCk16TtB3WE85mYZEsJHhtFoG0f2Xl3Tde+2C4evC08Sxhd0GqfcplPpwB
 yt2jo05Z2SmnZY0iPJbawPnlYBE/R1B89iKYZU5w9aRhfEOR43jspuJg800mItGgtU/6
 sAArGvH4RusWqwEQg1ghB06C6cFqTlVwOvLDtqsNBMx6jvZZmxdCxYaSlbhmwfH/ZMsn
 USoVscS91KEumjibHTJqb+3dkxlEQwaEAM7F+DS7XOw9oklbDa/bnmyh88nMky6otqMb
 I/58BPiqvgUt6oINkaDRGLQutSIb4Lrv9bHoqReqf8JQHnbI3RydKuK2coXaiPLwyb3T
 4mkw==
X-Gm-Message-State: APjAAAVm57aXe5oZu7M5C5KfNmEXMYLP/x8NXN2F3Q5YJ+8Z2aVri+uH
 M30Yyppya2dVFEoBX+Y/vnK9e2oT
X-Google-Smtp-Source: APXvYqzAbrRAKoMNr0uA0TaX4Tsvd0x591QShVQode8m8axXVTfwbDZHRip3f+IjdfU3X8fM1zkX1Q==
X-Received: by 2002:a1c:8116:: with SMTP id c22mr17965072wmd.27.1576876561238; 
 Fri, 20 Dec 2019 13:16:01 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.136.threembb.co.uk. [92.40.248.136])
 by smtp.gmail.com with ESMTPSA id
 o7sm10564701wmh.11.2019.12.20.13.15.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 13:16:00 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 5/5] staging: vt6656: set usb_set_intfdata on driver fail.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <6de448d7-d833-ef2e-dd7b-3ef9992fee0e@gmail.com>
Date: Fri, 20 Dec 2019 21:15:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

intfdata will contain stale pointer when the device is detached after
failed initialization when referenced in vt6656_disconnect

Provide driver access to it here and NULL it.

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   | 1 +
 drivers/staging/vt6656/main_usb.c | 1 +
 drivers/staging/vt6656/wcmd.c     | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 6074ceda78bf..50e1c8918040 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -259,6 +259,7 @@ struct vnt_private {
 	u8 mac_hw;
 	/* netdev */
 	struct usb_device *usb;
+	struct usb_interface *intf;
 
 	u64 tsf_time;
 	u8 rx_rate;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 4a5d741f94f5..9cb924c54571 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -992,6 +992,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	priv = hw->priv;
 	priv->hw = hw;
 	priv->usb = udev;
+	priv->intf = intf;
 
 	vnt_set_options(priv);
 
diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
index 3eb2f11a5de1..2c5250ca2801 100644
--- a/drivers/staging/vt6656/wcmd.c
+++ b/drivers/staging/vt6656/wcmd.c
@@ -99,6 +99,7 @@ void vnt_run_command(struct work_struct *work)
 		if (vnt_init(priv)) {
 			/* If fail all ends TODO retry */
 			dev_err(&priv->usb->dev, "failed to start\n");
+			usb_set_intfdata(priv->intf, NULL);
 			ieee80211_free_hw(priv->hw);
 			return;
 		}
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
