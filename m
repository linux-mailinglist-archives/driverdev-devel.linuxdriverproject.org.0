Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F82CD9EC
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 02:39:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5436686A26;
	Mon,  7 Oct 2019 00:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5N5Yv1sbCQw; Mon,  7 Oct 2019 00:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D66EA866F6;
	Mon,  7 Oct 2019 00:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 807E41BF95E
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 00:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B17F85C77
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 00:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMIT6qjzyLBy for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 00:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0604585C67
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 00:39:11 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id u184so11076961qkd.4
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 17:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ethHIfH6l8qWDruvEXMFQVRVxb/jgRioUR76fNjnA40=;
 b=pVksOn+hvEDwW5Hob0DZvf59zzN5jo0aOyL8jYZPRDJ9DERpX3SJ+wfncSqWxSWftN
 93LfUDB0JHp0ELnAO4acJcAn1inzqLV3CUMj/iDy/rO1od8p/dk47E5NkLrXmw5pdbo6
 1tTQVDOsmJyAK7A+C05r7CvH/fJVGEYcbbpeZ8nfLlij9TqyXLbviFVhGGC5/Hf73fan
 eoltZVGeg3NlRk4MY2MxsK5iLf7ar/rST08gWG2N/RaOKJMcjrwktNHzua0/XQWphWD1
 pzErbwvtiLG+RORqgdPiufwqJMiQNQwaFRsBRqi+oZHiC2EJAtXXCijSQWkljs+udG33
 LTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ethHIfH6l8qWDruvEXMFQVRVxb/jgRioUR76fNjnA40=;
 b=ASRBpysRx29wQpy5k0dYdY1PiBGhv1QKCa1uKeWMdyhkX0P6hEKnyLZbHrvXPY79Js
 Kg3Qhrk/FCXU8nzT+Zq4LWmfFIPWQD/9dARb3tx3YlIqjdv/Rhp6+UwiBPSpwehmCTTh
 s7YuyjQAp/8GMVwU7f49ngXJqvkZUXA5feGW1Ky01ImP3Key7SymQS0/zEwE7CcQ4u1S
 Sc1OR6NqjT4QmOnc+/av4BtfokWtRjt/kyW4WRCrTqjR5ePQGaYPoY7zljQuXvHe/OXz
 neqw0GSJD/sS97iLKHHhw1GF7hhed/0tPR8Z6aHYfk36S889iiRGuYxrZX1ggZePQaSl
 E8rw==
X-Gm-Message-State: APjAAAWXIjkBuGADp/pi3h1dR6CuSXaNffGZb1M74mIotKH/XJbm15Y7
 /AuocxIjBXxmxgd6bK751IA=
X-Google-Smtp-Source: APXvYqxvcTKkWgBHMUlmMV/+2+yr2zJkomqxQDVxOirKNUF/XyU1G6iFRK1RQ00k8sMrAmkBka/gWQ==
X-Received: by 2002:a37:883:: with SMTP id 125mr20634082qki.478.1570408749803; 
 Sun, 06 Oct 2019 17:39:09 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id m63sm7110774qkc.72.2019.10.06.17.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 17:39:09 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
 payal.s.kshirsagar.98@gmail.com, himadri18.07@gmail.com,
 colin.king@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis in
 file rtl8712_led.c
Date: Sun,  6 Oct 2019 21:39:02 -0300
Message-Id: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_led.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
index db99129d3169..5901026949f2 100644
--- a/drivers/staging/rtl8712/rtl8712_led.c
+++ b/drivers/staging/rtl8712/rtl8712_led.c
@@ -75,7 +75,7 @@ static void BlinkWorkItemCallback(struct work_struct *work);
  *		Initialize an LED_871x object.
  */
 static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
-		 enum LED_PIN_871x	LedPin)
+			enum LED_PIN_871x	LedPin)
 {
 	pLed->padapter = padapter;
 	pLed->LedPin = LedPin;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
