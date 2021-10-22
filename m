Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A2437704
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Oct 2021 14:22:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD91860859;
	Fri, 22 Oct 2021 12:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XGLFgNlXCmUo; Fri, 22 Oct 2021 12:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49DAA607F0;
	Fri, 22 Oct 2021 12:22:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02DC61BF479
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 12:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4B5340257
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 12:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKT0BbxljL3E for <devel@linuxdriverproject.org>;
 Fri, 22 Oct 2021 12:22:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22115401B7
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 12:22:39 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id l13so1077761edi.8
 for <devel@linuxdriverproject.org>; Fri, 22 Oct 2021 05:22:38 -0700 (PDT)
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
 b=NDgq8Q3/C+/bG8ZNTceheh+5RcBPyoGxm8FutByWd0Qvub4PxGL25FQLi2Xr+gjna6
 iszay8AQNc9lY1DYO3pPmjn1h39OhnSsqRo/FEkQOSd8T6RAIq2qT1g0YY0ss97wKOYw
 880/8yQ2j2t/a343/nl8M0I5a7dx9UQEfh+f5RJwi8TjWq23QYJx3Y6MrdtBEwGcVRdv
 ZtrRUovPb8+UvOkIKiWVuCOh3dRuV3bJFbytNzPMsGJA4AS87Ny+0oZ9xD6UvT7le6Vz
 jNNF+VxHJI/24DHYX/7W0kJMMs2QuJt6W/PRVebRnvk8GrpfnWpQdg2ffdMaCnAoRrJk
 GPBQ==
X-Gm-Message-State: AOAM5328AcRi+AfgYNVRbXe2ScMZLMShSw2IqcZclm4JU3AniDPGHiQC
 8K0voMIQJC3NB8qrnNBRBK7bEBkYiFPJfVQBKTQ=
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
