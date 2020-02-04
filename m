Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC6D152135
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 20:34:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A1C5203DB;
	Tue,  4 Feb 2020 19:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2jfsufBz6eHB; Tue,  4 Feb 2020 19:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2364120534;
	Tue,  4 Feb 2020 19:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 459911BF4E6
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 19:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3301E8710D
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 19:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRX5qxuNYXM9 for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 19:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E873870F6
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 19:34:06 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z3so24647723wru.3
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 11:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xa/VtTU0vSVS5LXqAKxKyIRX2SoYCDqOHmaanbAohys=;
 b=ni1Zc7mq56v+achnR0h9YpgMhDx7Q4ZtWxkaYlWr49GiO7iIGKTyqKIfxYScGb4sXB
 uTell2I8s/iVksVtuM52vYjgBDKGBgflF3TYUWl3YeqVi/vtFZyBEpjboq0dkDg66n55
 NJSqj4RG1jsf7w1m+RfwNGIM3uDgX2YcbFAsMyeuCYUOS3VP69M3QaZQzIc6xXVmRYn+
 YhTCghnGUyytH4H/tXJdJgueDBNRH0dmrPyoMz6Z5K98C4d3/j9i5LNkpUWZiZ+UDxzE
 dbcHHa3x+mX/0Dq4hPD9R0hYcrStpHI14WjfngDkglYFdZeyjB6Zpt9Gi05JXnJZ9MI6
 Bx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xa/VtTU0vSVS5LXqAKxKyIRX2SoYCDqOHmaanbAohys=;
 b=Lra6Ex47r0mkPUdmZk5agS04c8aohvV/thOy0HKMuSyqlNDct9s+2IFIlbvIKUGGmo
 0KR1D2BllUkM3xCoGjK/Kx0QGVQIJy5BHYNbIJcux6m66GvnkFrIkOnfoPTX9FXR2nnV
 X2TVgaHIIVVBUfQQkdu8xB3uDZDhNpc/E/CbvcViGU0/MdauWqWWOgIKWB+JWGsfynde
 fECeswimmmfZ8wRPwh5oShkmy1kLQn+OqhfnSi3if80mbjdynY4d/orj+K6E0rSfvOKp
 a3nczU6Tsz5wyYnaCwCjayW1U8iKlqkZyPPSmHEO1upnmmlFelCZsgR+4nWzPG7b5GL+
 DyYw==
X-Gm-Message-State: APjAAAXuiy9qoNpbc8NVCmC8lB1ZIHyrA9CL52mSH2SBN3g7Kwgd30sy
 OekKso6n+W320by5jNeXmIU=
X-Google-Smtp-Source: APXvYqw3lGO1nuq8adpOUmJjHG/88maQx+MQRwdR8qaRacZrl5Wz/2oNS/WHkPisVaiYJ8qeUWzKQQ==
X-Received: by 2002:adf:f244:: with SMTP id b4mr22485206wrp.88.1580844844592; 
 Tue, 04 Feb 2020 11:34:04 -0800 (PST)
Received: from [192.168.43.57] (94.197.120.219.threembb.co.uk.
 [94.197.120.219])
 by smtp.gmail.com with ESMTPSA id t131sm5075977wmb.13.2020.02.04.11.34.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 11:34:04 -0800 (PST)
Subject: [PATCH v2 1/2] staging: vt6656: fix sign of rx_dbm to bb_pre_ed_rssi.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <9b3b92d6-3672-00be-d0b5-ccd222236ba9@gmail.com>
 <20200203094222.GM1778@kadam>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <aceac98c-6e69-3ce1-dfec-2bf27b980221@gmail.com>
Date: Tue, 4 Feb 2020 19:34:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200203094222.GM1778@kadam>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

bb_pre_ed_rssi is an u8 rx_dm always returns negative signed
values add minus operator to always yield positive.

fixes issue where rx sensitivity is always set to maximum because
the unsigned numbers were always greater then 100.

Fixes: 63b9907f58f1 ("staging: vt6656: mac80211 conversion: create rx function.")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
Added fixes tag

 drivers/staging/vt6656/dpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 821aae8ca402..a0b60e7d1086 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -98,7 +98,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 
 	vnt_rf_rssi_to_dbm(priv, tail->rssi, &rx_dbm);
 
-	priv->bb_pre_ed_rssi = (u8)rx_dbm + 1;
+	priv->bb_pre_ed_rssi = (u8)-rx_dbm + 1;
 	priv->current_rssi = priv->bb_pre_ed_rssi;
 
 	skb_pull(skb, sizeof(*head));
-- 
2.25.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
