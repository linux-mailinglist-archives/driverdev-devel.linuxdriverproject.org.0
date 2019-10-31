Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD63EBA24
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 00:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B87E38836C;
	Thu, 31 Oct 2019 23:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9feJDdB5wXe; Thu, 31 Oct 2019 23:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 183EA88363;
	Thu, 31 Oct 2019 23:03:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 128FB1BF27A
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0754787C16
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 23:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CeE320bL5Jh2 for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 23:03:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A4AB87C12
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 23:03:32 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id y39so10815450qty.0
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 16:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w1lv6i5WMZhr+LJHUYk12uXR0Zf+Nge4dShOz7QCLY4=;
 b=gMivkkZ54O49XnNT6ktSMTgKwQeUd9Pjiy2DBrSJ9BCNsak1LylpmxHg8bqyZaBJBq
 fAXl5C+HkhUS9PBr7QFiApn1HVtf1UKky3vnp1q/FfTM6nsfDLa57Ugzkt+KRmjk7BI2
 eljn/NRnMtydKl2yk9BHWAOpVNodeDERcwWv6I5obW2farhTreah+/1gC4iAVuYa6Vuk
 FkPNhjXYAwTUtNdwyQNUA4TDPBtJCBFTj3zJtxq9YCbBfb9+q0X1I926tSdPwuVqoYa2
 An8hZjAhbIiIleUo/lC2P3NLHqdtKszSqc9rg82KLDoGoLgVY4ytoGx3h9dF5nSRmPcj
 EsPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w1lv6i5WMZhr+LJHUYk12uXR0Zf+Nge4dShOz7QCLY4=;
 b=rWD+4HGnYPuV8irIduUVQNMCdSpCW+fP0MtJhflNVAUVFFm5eUubXW8tQKRF5iW6QF
 RCkalSZPzKvsKZVM4RY3hgLhTFDLZPEOmYfPe1TjSQxmanutAw8eWCEZvFfxcvDc4QF4
 LfGEDVyh+hViP7vFLgumNSYm/+SsuGP0ZgO914kqgRLFQQjCyPymGbZY4Z4gTzMsPvfH
 ojMgp9uzIzlUrRwJ23gFRj1BT1B9e3QL5ZNx1ajBW7znVYK+UdNtNesAyBf4mGSjRqCg
 KeHocPmTyV9165pA+iCw10tr/pBhjgpzAnW4ppGkm1PB7MSIZS3/4KotPF7DaVVOHzSB
 AUXw==
X-Gm-Message-State: APjAAAVyKCM6UuAcQUPIdI2j92XIUtlzmddHIS4r+EYU95jcknL6/k/g
 G2teCS91WZGZ/iBFA/E+y6c=
X-Google-Smtp-Source: APXvYqxnW2g3AzvIUkcvZbFqLXCygMYsIlDZ1TD8IYQ0y48FZF5RQ8h5I08Rno3FcRXBeNUBY7KUVg==
X-Received: by 2002:a0c:936e:: with SMTP id e43mr7260553qve.73.1572563011216; 
 Thu, 31 Oct 2019 16:03:31 -0700 (PDT)
Received: from localhost.localdomain ([187.106.44.83])
 by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 16:03:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 kim.jamie.bradley@gmail.com, nishkadg.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH v4 3/3] staging: rts5208: Eliminate the use of Camel Case in
 file sd.h
Date: Thu, 31 Oct 2019 20:02:43 -0300
Message-Id: <20191031230243.3462-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
References: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
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

Cleans up checks of "Avoid CamelCase" in file sd.h
Even though the constant "DCM_LOW_FREQUENCY_MODE_SET" is defined and never used,
it's useful to keep it because it documents the device.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---
Changes in v4:
- Explain the reason of keeping a constant that is defined and not used
---
 drivers/staging/rts5208/sd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index dc9e8cad7a74..f4ff62653b56 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -232,7 +232,7 @@
 #define DCM_LOW_FREQUENCY_MODE   0x01
 
 #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
-#define DCM_Low_FREQUENCY_MODE_SET   0x00
+#define DCM_LOW_FREQUENCY_MODE_SET   0x00
 
 #define MULTIPLY_BY_1    0x00
 #define MULTIPLY_BY_2    0x01
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
