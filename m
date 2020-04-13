Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EFA1A6BC9
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 20:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A355684F8B;
	Mon, 13 Apr 2020 18:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p2pC8Q2baNqL; Mon, 13 Apr 2020 18:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84FA584DE6;
	Mon, 13 Apr 2020 18:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B36D1BF319
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74F2C84778
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 18:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uR-Lsd-5VpgH for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 18:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2C2784495
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 18:01:42 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y24so10841358wma.4
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 11:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uV6IGqg+WAl5sD9tlqG1PW+JWwQKMrghYa4BIYKJU24=;
 b=dJexAu2jDuMX0jl4rYd2sdGDwzHIwdvHk/Lhoatp1rprblsm5mi77X2jzzFwr6oeed
 5f37h6elb3RZjVl7KIvhRhC1BLkkEmd8I2VcGikQfxgisUl2s+jd45Rh3TZB3GhlQMUu
 jh8ppMIGVwcoEYd4L5WlMLfc4uRMLP0mukR5qGtVWhgBqVN+jo8qvO6IUIz8sxXCjL2X
 3CbcynVAVoCbM4TYOZvPY/bdiQZR3xluesyV5tAOjS8yErTs1PqqdbPWty6e6b7EpPMI
 2atwzno6Aqt9eW9yqp5eol/knft3rvIzhJ5Fb8U9BWJIIzN5GBb3oQxEcoxHVFguicwN
 1gaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uV6IGqg+WAl5sD9tlqG1PW+JWwQKMrghYa4BIYKJU24=;
 b=Ici5YenYbVyoZmOu00UihKCxnro8G6QkHdw3X2Tfx8IXqmkv6Q9gyYw4keho52ve9L
 5HcsZCUHoAvBaaZdkL5P3jHYcqS2XG5gnKkzFnOfE1IR54B36DxRgCC5K/y+O2t6mZ4A
 XjHVaSiVm9Pyl6oUHfvOSH9xwGBU6kG+f5nhSaVrKNMjhm/mndfxhJEGdaL5Oi/amEO/
 n5Mmhm25f4w2+AQ29IcciDSxdce1VEuP6LTtOjawcXeEdxVN2eLmHyINVGvsoqztSAlZ
 pLTGXZhTq/x3tAnI1YH0moA8oQoZjy4q5olLdlWE3oJWXPTTxDXjESd6cFxVJBXpLzv6
 trnw==
X-Gm-Message-State: AGi0PuZL1TeEXQpc3WhP07vq1yewrpz6/fj+nP6fMBP7R58RJgt6Bg0I
 ql57I9GERtaNkxQf6DEv+RI=
X-Google-Smtp-Source: APiQypIoqF43KSnGa6mk8iXCnWjpUFXwZc1RhPx7wMxVw/tfrwty0MU1HN5fHTmbCRvw0ITtznnPEw==
X-Received: by 2002:a1c:147:: with SMTP id 68mr20305503wmb.28.1586800901150;
 Mon, 13 Apr 2020 11:01:41 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-241.092.073.pools.vodafone-ip.de. [92.73.54.241])
 by smtp.gmail.com with ESMTPSA id u3sm6476181wrt.93.2020.04.13.11.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 11:01:40 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8188eu: make const char array static
Date: Mon, 13 Apr 2020 19:59:57 +0200
Message-Id: <20200413175957.30165-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413175957.30165-1-straube.linux@gmail.com>
References: <20200413175957.30165-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make const char array 'fw_name' static. Clears a checkpatch warning
and reduces object file size by 17 bytes (gcc 9.3.1 x86_64).

WARNING: const array should probably be static const

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index 432e6bea5ea1..3d1d29e9f8e0 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -146,7 +146,7 @@ int rtl88eu_download_fw(struct adapter *adapt)
 	struct dvobj_priv *dvobj = adapter_to_dvobj(adapt);
 	struct device *device = dvobj_to_dev(dvobj);
 	const struct firmware *fw;
-	const char fw_name[] = "rtlwifi/rtl8188eufw.bin";
+	static const char fw_name[] = "rtlwifi/rtl8188eufw.bin";
 	struct rtl92c_firmware_header *pfwheader = NULL;
 	u8 *download_data, *fw_data;
 	size_t download_size;
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
