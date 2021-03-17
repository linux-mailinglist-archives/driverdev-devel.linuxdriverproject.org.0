Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA09933FAF6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82E5A4EDED;
	Wed, 17 Mar 2021 22:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsEUvAvU1mWl; Wed, 17 Mar 2021 22:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E96A4EDD3;
	Wed, 17 Mar 2021 22:22:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73DC11BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6019D4EDDA
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIvucZ4XECjJ for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A60F4EDD7
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:24 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id l4so816928ejc.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Gui/V8wbaO8wRrP00fAld1CSQJx8ObioEHMKYaG9F74=;
 b=V2aD0abN18wI97eTW4uqEtaeimQ0HroyixcyQqs+fNmTSYl105tu74t7QWxSzu3ZB1
 2H3uuv7Jd79Ot/nOYzds7tcIf+OzRblUsCZSPD5nmEcog72/5QURwJVqMFnFonr5sP3Q
 oKIi5BeWpz9LAUZNks+s4AQCwZMOsMu4NjI8+5gWxGJKdSRcnHt4SiYXCCdr3kaS0k8d
 IflA72yXuIPzhA88R6ZdRL0Zeq82nblUyLHMk3VhrsiiCcqwpHowatXbdaMfn+6aH+JT
 Hgzts1rXpktzDECM+fWIjXbpw11+iFafUwqK/JFz4lvvlC4N5Rejr9XPtRTfqkG705VY
 6swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gui/V8wbaO8wRrP00fAld1CSQJx8ObioEHMKYaG9F74=;
 b=IWhTCbgMQufu+yq07/CZIj9ZigCyjkfS1gXhqQ/7rI57G2AfaI6mto4i7vaDWxhyif
 ypNe4YcS0TYsEL8KKGJCTKvYo43HKZcZLvPceUM5HGqlLuLMJGzV+DWFxBjRtFpS98RL
 xnsteScvD5euzdrtQ7zP1XPsNfmZ9KzxHyvW2KDxpAbdyN/XUGpKSChilSQoqm3T+faI
 vaCrF+H3KbQ9nFMIrtt2n4Nl6c6AGmpCRYmLtAxnVPDWKFKTZqje9coTf0XMXTIh1lO1
 xUzN3LB5gCRp4VborTyVWv5hY4zxnVYDhvqjceMxmLcYTTNGIiVn7AtMGE5lwji3RPpd
 Ab5Q==
X-Gm-Message-State: AOAM5327gm9JzicTUus8BrWIiRAci300zHqvOjCdqH0Qd2jNl9I2Jma7
 hNHRDGlhdBEmB3zz0IsPt3M=
X-Google-Smtp-Source: ABdhPJyu5f2MEkFyRPWxYuj/g2xQaiL+kFgn57/M+D3nv3y8o7emDraIM1Altkbb1jJYvyXwnSXYmw==
X-Received: by 2002:a17:907:76ed:: with SMTP id
 kg13mr35925782ejc.99.1616019682751; 
 Wed, 17 Mar 2021 15:21:22 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:22 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 06/43] Staging: rtl8723bs: fix names in rtw_recv.h
Date: Wed, 17 Mar 2021 23:20:53 +0100
Message-Id: <20210317222130.29528-7-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in include/rtw_recv.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 0a56c3a66ee8..1439158829ac 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -369,7 +369,7 @@ union recv_frame {
 
 };
 
-enum RX_PACKET_TYPE {
+enum rx_packet_type {
 	NORMAL_RX,/* Normal rx packet */
 	TX_REPORT1,/* CCX */
 	TX_REPORT2,/* TX RPT */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
