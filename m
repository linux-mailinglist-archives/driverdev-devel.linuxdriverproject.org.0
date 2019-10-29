Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E58E9381
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Oct 2019 00:22:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99D4E836A9;
	Tue, 29 Oct 2019 23:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4pXevX-yfACA; Tue, 29 Oct 2019 23:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F99F834CC;
	Tue, 29 Oct 2019 23:22:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5366C1BF31C
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4F9D620519
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 23:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F4V138BIAQoG for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 23:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id AC49C20516
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 23:22:23 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id 71so762880qkl.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 16:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3hCkAbcriS9RlIsXdXAS7BOo4yVJsRg6vFvTMkZt0zA=;
 b=Iyhf2LDwrJ7hlSqQSnW+N75bzt41kj0wuqTEQk9se2IajbQTHLaDrxokn885sBN/SG
 QDs82ykMG2hcooPX+0+ClpV4v1Ckjo55y7ad0Nb457PVcWBoxsnCaL+hsHY+Nw3mgEXr
 jMx1I0D+pYVWIxa1C7cyLlfvHslI05QVnR+tnEjLlg4E3pybl3tLLoSecAboypaGK8fB
 K90T5UU6H2/71o1vDPdKH6AOR6BD9TFqGT88AWiPU9C8Qk2XwxC3oU5EjMhQtztPIlFq
 R7sSGwM9Z7gqLUxhL/OBEt3OcC88zSqQj23cH4185GKtF5GmX5FPgTgvIB1hC2fpNg3H
 Y6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3hCkAbcriS9RlIsXdXAS7BOo4yVJsRg6vFvTMkZt0zA=;
 b=gX6VwZiSMtZZ2FAOcMtqXvhIKxPYc/Ejpy+TfS3HSqlYXSomqbXFLLelFEuAelfCU2
 e3BxXLWZpp1Veb7GtDcGuwhl87bx1dibtMuklH1Nl4OnWRLInJLzLYX4f8gXmRiIAFz2
 wx2PVni/oJhbgOBKF/qHMNvRDOT95RLNHl9eKq1V1nEz9VD916j9WwJN/lVa1gdDnny8
 NB4Ay8Vq1j1Is8e3B+Exffz5WO/pbMJZCMnHXM9buspFm0+kX83GN7vdauyO5tujT2hO
 7TwbaLLibV6RPLKV0OS13PdswiE6DWzezJ0odndv4fUlITJMFYbxyp656Vm0dJ1Wt+z5
 4bBw==
X-Gm-Message-State: APjAAAUryhweFLJWL8j+1qg4CbuiF4ya1IzPUDaJb9C8QmAt9j/L7auR
 wsxPFs9BjR0AB7SAfEblo7w=
X-Google-Smtp-Source: APXvYqydRj+JqzSe1lo8kT/qY5ObG6pT9Xzay4uNdB8RCD9jFojCS6cRXQU0KLWJdH2LeYyf9N/rwA==
X-Received: by 2002:a37:6891:: with SMTP id
 d139mr24311946qkc.213.1572391342722; 
 Tue, 29 Oct 2019 16:22:22 -0700 (PDT)
Received: from GBdebian.ic.unicamp.br (wifi-177-220-85-136.wifi.ic.unicamp.br.
 [177.220.85.136])
 by smtp.gmail.com with ESMTPSA id a18sm633940qkc.2.2019.10.29.16.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 16:22:22 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 1/2] staging: sm750fb: Fix typo in comment
Date: Tue, 29 Oct 2019 20:22:06 -0300
Message-Id: <20191029232207.4113-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
References: <20191029232207.4113-1-gabrielabittencourt00@gmail.com>
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

Fixing typo in word 'and'.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 645813a87490..5925d7c7d464 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -224,7 +224,7 @@ int sm750_hw_copyarea(struct lynx_accel *accel,
 
 	/*
 	 * Note:
-	 * DE_FOREGROUND are DE_BACKGROUND are don't care.
+	 * DE_FOREGROUND and DE_BACKGROUND are don't care.
 	 * DE_COLOR_COMPARE and DE_COLOR_COMPARE_MAKS
 	 * are set by set deSetTransparency().
 	 */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
