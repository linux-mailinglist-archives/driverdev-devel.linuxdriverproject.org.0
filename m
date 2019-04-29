Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED660DCF6
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 09:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D48A86CD7;
	Mon, 29 Apr 2019 07:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vNXnICrkZKHe; Mon, 29 Apr 2019 07:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABE91864E6;
	Mon, 29 Apr 2019 07:37:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1E1E1BF593
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 07:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BEA2D81386
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 07:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GIzmGziPAvfx for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 07:37:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AB2481279
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 07:37:25 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w24so4679980plp.2
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 00:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JVE5mmezCRxz6WW+z9H8b28By3jF0TFZuCkFOKjspBU=;
 b=niwBPwvEkClbDRK9YJuSfR/YAnw/h5dMpYBXnWsjBRo9UdkYLnka/aYR5Q7xahnsIb
 as+f30ARN/KtCMGevNIB0IFhdEVlRioN0ls7/DgVufSsEhcD3pPvCOkX+kR7wurJgDQ0
 AfpgLTNON+AQhxtN2jqk62c+TBCuNXyFrjduyVWOcpFE9NWYjqpJ0QLhiOGOFgry51RF
 xKXS/VhlJkxeMb+81VBqOogBaQZjisJZMKVJ2CTFOY464h+3H9sNR06XsK3URQxdDtgB
 CzRm8dgt5mRLInnpfk2i29EgagbmkXCDUfrlSQFnhEhyouzfrwunzNGSvkchDUFV406W
 kdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JVE5mmezCRxz6WW+z9H8b28By3jF0TFZuCkFOKjspBU=;
 b=Uc1P30HfSHi5Ql9ouHlB8FUOh8VJqXIZOt4BC3AE0wZSGE34mDRvk2Zo64wSqzU6Uz
 Rg/jdHrKZdYlHFvu1QU+vqNIONe2dvgLycafPVJv048Psl+/FgslRNg0rKxy/zWXGU6E
 0a8OYvnWLMMZiFtXQDuHmPPVZHNzUrEooB3o4OFPRx+yP6kEGZ8glCVT0GIfg795B2V5
 2oiD21zxnvMpiIm8Q9EPcOE0gIa++VqcrdzF9iqPju4KAA9t2EDrgtzMPDfJfJyCPp5T
 2Ho2SGPbS8KMZw8RuON0uSGvzVvi2GH8v7Oxh06hup26vg+MZxqqANY37mD2yzKTYHLB
 M7Dw==
X-Gm-Message-State: APjAAAUC3PHVCWIT26vFLxQcaB4gtHKb1VerdXgdxWbQs801m3Dvxxap
 hv+FQwTSjpMGHQN8Dzv+mZ4=
X-Google-Smtp-Source: APXvYqwZzhRLIoaP5LpqWQUbjpD0Ir8YyzDeEPPahuxhn3iNg6BmuHDKJjh9YnJwHCLE1BExK5KxAg==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr24800187plo.198.1556523444886; 
 Mon, 29 Apr 2019 00:37:24 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:12a5:ab58:559f:ec82:1c85:ce7])
 by smtp.gmail.com with ESMTPSA id
 t24sm43485198pfe.110.2019.04.29.00.37.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 00:37:24 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Date: Mon, 29 Apr 2019 13:06:58 +0530
Message-Id: <20190429073658.32009-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, julia.lawall@lip6.fr, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Modify return statement and remove the respective assignment.

Issue found by coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c9b6346111a5..cef6d5b758e8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1507,10 +1507,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vchiq_mmal_port_parameter_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
-	return ret;
 }
 
 #define MAX_SUPPORTED_ENCODINGS 20
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
