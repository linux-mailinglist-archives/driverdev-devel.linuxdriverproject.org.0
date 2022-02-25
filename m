Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 417804C4AAF
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 17:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D5FE612A5;
	Fri, 25 Feb 2022 16:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rNUbD-5JGx_G; Fri, 25 Feb 2022 16:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B7B60AF2;
	Fri, 25 Feb 2022 16:27:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53CEA1BF2FB
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 16:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BFB36129C
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 16:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YZ85j21AoHvl for <devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 16:27:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C01260AF2
 for <devel@driverdev.osuosl.org>; Fri, 25 Feb 2022 16:27:23 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id f37so10268245lfv.8
 for <devel@driverdev.osuosl.org>; Fri, 25 Feb 2022 08:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=oSxlQJZCxfJ836iMC5HFvtn2oJVroAAO7tMQRu4fV+Q=;
 b=aNFC+0q5al8E3pqxzyqgnjZcDQAsRDEtBB8J2mDjqEgJGGXmYD78ktEwjbWO1iXLoB
 JiEDm0AB3aqHnsV9tQJpQPIWUfPUm8nzTqQ07qpcjExZ4mq+OkKjTjKpn/prGaVQMhbq
 oFOIRNua0BUBT2FxqKYO+UQOIAdS3J7p+6CmJz5xB4zTREtBSg3hBMZlMNJXS5GYOU/+
 FXpyN+D0hdwqWMiB7wgkhStsE7winIfdJOCnPDbm2TpRAfi2D7qyTkhY0YUGq8thA9yH
 FvUVMRCfjW47LdncjtGDTuW0sSShxePSEfKKwYunEYRAF79X3EpcYBgFBEK0bSW+jQMR
 f5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=oSxlQJZCxfJ836iMC5HFvtn2oJVroAAO7tMQRu4fV+Q=;
 b=ASIKuL/9rTAdWLUY/tjrYpThBgK2yh22f+B7GaS0SQ7Y4aGpOPMDrv8jjrws+LtAjW
 +G1ERa517e8eu5VA03Pq7mjwwatC4rDdY3v5tOivCLBgZGpxtcAQb6yw2sR20Hf4Avq5
 ecs8ghb+DrCkDKwc6pjrHlyaO1icX/OenfBYqLtwJIwGZGUfBmPWw9XOzuenLypGrkIR
 hYg3p7FJS/1nKPHTiJzMAWTOnpdYsyylos5sTzs0snR3bVhrTWB8Bh9krtZpRhPmW/A+
 8iLAAFN6pWfpMgAXw4Kve6Wgn9Fcxs2P7xm1uLghjTzBBWMm3v5PhTaro239/g9GEZ0I
 8spQ==
X-Gm-Message-State: AOAM532JiNWwyuk0VrOjP1Fq4DauxhiIE2OJD1RRh3+asB3BCCrGb97K
 pBTuXwyHylVQzStuJo/HssY+IqBDewGxE4IxUC8=
X-Google-Smtp-Source: ABdhPJyMXSpLcl8CpEwmxjIfy3fPZcAk9CQJ8go6Ir085dDrVcG9z9lKcYPudvUMq/HIQDdB78+3tkl+GdRBh1kP780=
X-Received: by 2002:ac2:562b:0:b0:443:76b5:cb35 with SMTP id
 b11-20020ac2562b000000b0044376b5cb35mr5231351lff.208.1645806441629; Fri, 25
 Feb 2022 08:27:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:11ed:b0:1a0:c444:1e1e with HTTP; Fri, 25 Feb 2022
 08:27:20 -0800 (PST)
From: "Mr. John Gabriel" <sstjo232@gmail.com>
Date: Fri, 25 Feb 2022 08:27:20 -0800
Message-ID: <CAHq4GDKBRzqbkCbr4vhpBaiZBPhMkOtBDVV_PcmYg0ViS2YH=Q@mail.gmail.com>
Subject: My Offer
To: undisclosed-recipients:;
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
Reply-To: mr.johngabriel22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Hello,

Good Day friend,  My name is Mr. J. Philip Gabriel, I work with one of
the leading security company here in Germany I have sent you an email
severe times but I'm not sure if you received it, because I have not
heard from you, this is the reason why I repeated it again. I am in
possession of documents that our late client made deposit of one
consignment box that contains five million Euros and ten kilogram of
gold. Are you ready to be my partner? As you can see, this is a deal
that can benefit both of us as I cannot fold my hand looking our
company management to benefit what comes to my table, please if you
are ready to partner with me to transfer this consignment box to your
country let me know so that we can proceed immediately, bear in mind
that the deal is 50/50% no risky involve.


Thanks
Mr. J. Philip Gabriel,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
