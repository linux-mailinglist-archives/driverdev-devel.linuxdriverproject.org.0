Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD0E1D09DD
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 09:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C4B786BBD;
	Wed, 13 May 2020 07:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLLE8zcMI5Ym; Wed, 13 May 2020 07:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69DF386B85;
	Wed, 13 May 2020 07:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8E231BF296
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 07:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E25A38836D
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 07:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-QiT1+SVcWQ for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 07:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 244358836A
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 07:24:38 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id n5so12309637wmd.0
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 00:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6nqb/odvCbAMcAZjupDiJo4HqnEb1Zq0i9Jx0IEifqc=;
 b=u5pVIY/CdD3Jp/CTwB6NZoNN4X4jlHT5wtxLxfp0+oPMSuYkffgSimjy+A3EZqyfYU
 cgtaM5NV8DBaSaJApPV6/UTw0pm6+wXTFgnQTZaNo7c9bmdRz3gTNIGk6oZqbBMLhFS7
 F6K+7j2Z/FBqtQCAdhpeGrURg3Nt5wm6APiX94oBVjNI5YQHSeMi0v/Y/AWzPuDUMlZV
 as9jrDI928Wm8Ztd6rnKU6vCnpBkpB2NzmlV/npfeesyk2xgYJ64pnwKMUQqh0oaTA8d
 x/jUc1T6oGT8KBm6F5HJ5mL/L4Qd7qIQKPERq/AunN9oiebtXz8LBkx7XnKhcMq1D2xQ
 Xv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6nqb/odvCbAMcAZjupDiJo4HqnEb1Zq0i9Jx0IEifqc=;
 b=FV9NEfi4EcYlCdoLU/opidD8m3kL/NTInAFDJfC/dPgQRzZhUEO3unYyKq4UADdEYV
 tglWKCCsnyffoib/N10hXFJmeolAQiWHLdSHugYjtYRIVC1Q01Hikg1qxg1hLWODNrQs
 IKnAc46whYIT5ce1WWTP+0u3S1ZDsNZXR73LJ1kytdh89bCZG1R/zM2fIgh57kp2DDj4
 6qdIhODYx4UBLM6K22zH+mCvk4LZ7kSAA104wnG+myP9Odofp5qhi0TqBC9H+Ujm0UnH
 p+K41FfAFYWv+YH05M2GCJYAdpUq+BlL7eSy4ZcQdVy7xi8RRjs5D+4+BUsINILZIfwt
 hTnw==
X-Gm-Message-State: AOAM530ftvj2tCqjSvV2CfmghxhWYId0DchGoiqM8ibvc41nZE48r2rW
 x7253c06IpuHCKOO/VzPumg=
X-Google-Smtp-Source: ABdhPJzXr4pHGzBpFE/OXC0JgcJnU+47Ys7s36mKb8av16o/Kd3SAteYBkU8Zr1cty3ebI681I8wbA==
X-Received: by 2002:a7b:cf14:: with SMTP id l20mr7614598wmg.100.1589354676439; 
 Wed, 13 May 2020 00:24:36 -0700 (PDT)
Received: from dinux ([102.186.189.183])
 by smtp.gmail.com with ESMTPSA id a15sm26491972wrw.56.2020.05.13.00.24.34
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Wed, 13 May 2020 00:24:35 -0700 (PDT)
Date: Wed, 13 May 2020 09:24:33 +0200
From: Mohamed Dawod <mhm.dawod@gmail.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] wfx: typo fix
Message-ID: <20200513072433.GA11560@dinux>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fixing some typo errors in traces.h file

Signed-off-by: Mohamed Dawod <mhm.dawod@gmail.com>
---
 drivers/staging/wfx/traces.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/traces.h b/drivers/staging/wfx/traces.h
index bb9f7e9..80e131c 100644
--- a/drivers/staging/wfx/traces.h
+++ b/drivers/staging/wfx/traces.h
@@ -32,16 +32,16 @@
  *             xxx_name(XXX)       \
  *             ...
  *
- *   3. Instanciate that list_names:
+ *   3. Instantiate that list_names:
  *
  *          list_names
  *
- *   4. Redefine xxx_name() as a entry of array for __print_symbolic()
+ *   4. Redefine xxx_name() as an entry of array for __print_symbolic()
  *
  *          #undef xxx_name
  *          #define xxx_name(msg) { msg, #msg },
  *
- *   5. list_name can now nearlu be used with __print_symbolic() but,
+ *   5. list_name can now nearly be used with __print_symbolic() but,
  *      __print_symbolic() dislike last comma of list. So we define a new list
  *      with a dummy element:
  *
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
