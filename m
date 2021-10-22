Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F39CB437708
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Oct 2021 14:23:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31EB583B7E;
	Fri, 22 Oct 2021 12:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TqYUtGMEFsuk; Fri, 22 Oct 2021 12:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A5E983B35;
	Fri, 22 Oct 2021 12:22:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 214761C1127
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 12:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E6C483B35
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 12:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wP1f-BRCGwvO for <devel@linuxdriverproject.org>;
 Fri, 22 Oct 2021 12:22:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7347283B21
 for <devel@driverdev.osuosl.org>; Fri, 22 Oct 2021 12:22:39 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id ec8so1017018edb.6
 for <devel@driverdev.osuosl.org>; Fri, 22 Oct 2021 05:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=EabbjzyBCsHP1Pqryzjhoy0dM3xlyxLmmpO8ACgMTo8=;
 b=l8vptWc5Ky7l4svCrZmA1/+YOu9Rj5NS1qveu0gC14BaYR6sQ6UBUDLTzIww4Mz3Nm
 UZbQmCVF/qA5QJxDvSXZug8OALKet3OLBmsJqC6K+B6nt+ntU9sWIgPF52q2ApsflQOH
 k7fInxIpy7a9VY8xIm2JbuWbQrt2fzFgiDgP+bKUWSunxzK54475wcUo9LXD/QxjBm/T
 mnaZVRPTTXlbU08lNiMKbkeJHfQRP9IxF65fE5Q8oNP+EeFFAI3BsHHpDDP59Bijete/
 fX6VoWEOaxqacPGxb8cq1GhtCAOK2bzVcZZR6R0u9ehPAvg8XL8wj8F6PKVvzfjJHB0T
 9XJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=EabbjzyBCsHP1Pqryzjhoy0dM3xlyxLmmpO8ACgMTo8=;
 b=DLEdDEPKjPsyQZ1U+YnZgC/HmS3JGzP6vk7vKzSVGoSoEK0Im3o1DaFgTyL2002/TF
 ZxESbKZc1RXX0LWdhOPmweTsrgBIivwo35VthXdpAfyiJxBYb+0/XVL9W8X9YaKZWTo4
 k+eMTFy088lQoMsX2KaP+sYDQvX7uM/Slv547lY4yAX0/cXdhjsvWFbnDQ5413rZGNrN
 s8xvqy9kWPiJJw+n1d+ePFUAh20k4iK5Hy5ZcUThZgEgycFN0bWGcFv4BubZItxHC4Ir
 ItlyjSNQuhoabfudyzyOMZGIWweWVgvE+jH12OQHqXorndHirbZV9DtNVoWpsmKr15Lo
 /VwQ==
X-Gm-Message-State: AOAM53154vonfuYqqSL382m6/R2rdEh//ZXsN/iN3WEhjxhA3PIPrBX2
 xFiTyGCmVnaMT9n5+EnqUMxQBdb7zKCfpHCjFyw=
X-Google-Smtp-Source: ABdhPJxw0kPE8queRl/OJCi4xEWWGOytEkRqO9Hcg0haH9BQfIQtcEMMc/8+PBh8nITOCeRz8AWf6oYWRvkYTkaOfMU=
X-Received: by 2002:a17:906:d937:: with SMTP id
 rn23mr15018849ejb.101.1634905355963; 
 Fri, 22 Oct 2021 05:22:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:7fa7:0:0:0:0 with HTTP; Fri, 22 Oct 2021 05:22:34
 -0700 (PDT)
From: Ryan Bahadur <dr.philposman7@gmail.com>
Date: Fri, 22 Oct 2021 05:22:34 -0700
Message-ID: <CAMOT=VSU-bb0=2v+L06Sjpm-ujHqg5uCTAMGEiCzL2X7fohH1w@mail.gmail.com>
Subject: CAN I TRUST YOU
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
Reply-To: bahadur.rayanby@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Greetings,

Firstly, I apologize for encroaching into your privacy in this manner
as it may seem unethical though it is a matter of great importance.

I am Mr.Ryan Bahadur, I work with Cayman National Bank (Cayman Islands).

I am contacting you because my status would not permit me to do this
alone as it is concerning our customer and an investment placed under
our bank's management over 5 years ago.

I have a proposal I would love to discuss with you which will be very
beneficial to both of us. It's regarding my late client who has a huge
deposit with my bank.

He is from your country and shares the same last name with you.

I want to seek your consent to present you as the next of kin to my
late client who died and left a huge deposit with my bank.

I would respectfully request that you keep the contents of this mail
confidential and respect the integrity of the information you come by
as a result of this mail.

Please kindly get back to me for more details if I can TRUST YOU.{
bahadur.rayanby@gmail.com}

Regards
Mr.Ryan Bahadur
Treasury and Deposit Management,
Cayman National Bank Cayman Islands.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
