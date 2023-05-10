Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B699F6FDEB7
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 May 2023 15:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4439960B9E;
	Wed, 10 May 2023 13:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4439960B9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYESIppoabKD; Wed, 10 May 2023 13:39:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1600C60625;
	Wed, 10 May 2023 13:39:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1600C60625
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C886D1BF321
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 13:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94A1184177
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 13:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94A1184177
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HggN65L_t_UF for <devel@linuxdriverproject.org>;
 Wed, 10 May 2023 13:39:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F82584022
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com
 [IPv6:2607:f8b0:4864:20::b31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F82584022
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 13:39:34 +0000 (UTC)
Received: by mail-yb1-xb31.google.com with SMTP id
 3f1490d57ef6-b9a7e639656so10804027276.0
 for <devel@linuxdriverproject.org>; Wed, 10 May 2023 06:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683725973; x=1686317973;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
 b=HGcwZmUVHGunSqNk6AkRdnfj0uA4Nxi0AMg0JhpPkkgedL48OdGfVGZlBPOpNHx2ZS
 BResJuf3eeIf80nzpJ27kjUW1HyKn4yfSbS8ISK9OUdAgNRxMb8OAjarnia/TJen2An7
 fJ2/64HAtuzStvQ5MSckrI7DFPTGfXIAW4T0VuO0Bb9vVxHbTxpM3ptkClbKRsLtVMSf
 2lr9VYhJ5RT+HsRjfD+WTTWuK7nq2ql512W/W0TTFjK1HwAws0RG1inHVYiPtZ3b1i0m
 CLmnWhWFjL1rAvkx9FJbyFucEY7fOkXf8NNRR2+6sp/vfD8HLm+nGe3Lm9ljkB6Aj2hr
 zxVw==
X-Gm-Message-State: AC+VfDxAeOwiOw1uQCE32In8NeDY1pJVy3sH91I5c+09vqQySHx6Ux/m
 Whi/3bF7fUay9ATaQLMRqCtgbBEdSbXxelORXTQ=
X-Google-Smtp-Source: ACHHUZ6mUBDTXiyxPRfxYoL6NXruEvwQFS8f03RP9eqzLE/zdlV6LhsDwW0zgXhCn35oFRt4ejzl9Jt7rq815naVy2Q=
X-Received: by 2002:a25:1944:0:b0:ba1:86ea:9b04 with SMTP id
 65-20020a251944000000b00ba186ea9b04mr14748152ybz.39.1683725973190; Wed, 10
 May 2023 06:39:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:19d6:b0:4c8:31f6:3644 with HTTP; Wed, 10 May 2023
 06:39:32 -0700 (PDT)
From: nina coulibaly <coulinina15@gmail.com>
Date: Wed, 10 May 2023 06:39:32 -0700
Message-ID: <CANZxeNNg+HtqvgxW=oKdY0wRDw_gHv_Shr+UQMDu4JhqM-ftXw@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683725973; x=1686317973;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CmlwvXEoimVTfsyyyYai0GQlqo3zzXGhdH5Gfvmx5TY=;
 b=D66YDajc5ueNRysImYFvp5amkMdUgF1oJXYBnBcgeqVVuYV67a4zONhdWKAmfVNwkb
 JzKkiL2VHBF7WguLu++tBX/GJXYtf9sSPbP7InQ5IHq1fw5984S8Av9bZLO7uTu8aXWO
 jujRgllJozUWa6rhOQ57easz/jLimsQkPaMKYKOPtD4MaYoQF+X4dlAl/sRkUeymYPlW
 DYpvKA3FaoHMtjgFNO69IKZA0Wu7jCzPpN6mEZ/jCKfhecMlNVRGUccupdm+lj1N/pYy
 lwabjEZ/6gqk3aLcAXcYj9f9E3ZFwQmyLoHMrtB7b5u0O7aTHPOZj80pSBbqirpU8tZ9
 erIg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=D66YDajc
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
Reply-To: contact.ninacoulibaly@inbox.eu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear,

Please grant me the permission to share important discussion with you.
I am looking forward to hearing from you at your earliest convenience.

Best Regards.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
