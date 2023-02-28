Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC766A58EC
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 13:20:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65D6F40B70;
	Tue, 28 Feb 2023 12:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65D6F40B70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TvBaNlYn4T8; Tue, 28 Feb 2023 12:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4784640144;
	Tue, 28 Feb 2023 12:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4784640144
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 271F41BF94D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E2F081AF5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E2F081AF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GEIuGztGnDQR
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:20:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF28B81AAB
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF28B81AAB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:20:09 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id c11so7808670oiw.2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 04:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=Qvn35e0Y0gfAxbf+hhY2eTLyDaKcF/Pk49VagSOmNIUC1TjmgE107pI3poeSIqYecW
 C3Y9U5dDSvhTYGAmLBD9ozmbNzUHgwfXEBmYPcWB/7WADOQS36d77RAy0zlpgpTv12rv
 kpbVi761tlRXHgXXpEGuxkNixplKupcAwtJGsm453uffPWKYjUYbkd1ldNiXU5p9g0mf
 kFKzbMMUBXtsRQwjy2KoFUCNJXqDDkRH41OK3Ha/wYIygZcPYgjJ42+FzuRqwl3+p53/
 D9BtmZ924vWSVrjkmcZYKvhJHIueddpCqZG/mqVVJBvxWxU0ysRDilGX4hPmahbbUkjJ
 njxA==
X-Gm-Message-State: AO0yUKV3EQVUToDCN1+OfhfkIWo9HWakkOgjrLV7kQ/z9fNViiqamW/k
 aHEzNsOPDfVzrbSxs5eWExv93SE3FZjST0jNxJs=
X-Google-Smtp-Source: AK7set8GKk9hob6Rp17/6j/4dar81IJ6E5meqOzQft5xgSwqCE5fYHAHCHXmyKyj6qzXm4YMBGAWokrZdIVOPOp05Gs=
X-Received: by 2002:aca:2809:0:b0:384:11ed:a879 with SMTP id
 9-20020aca2809000000b0038411eda879mr797255oix.10.1677586808690; Tue, 28 Feb
 2023 04:20:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:3065:0:0:0:0:0 with HTTP; Tue, 28 Feb 2023 04:20:08
 -0800 (PST)
From: Rita Clement <abellaurence999@gmail.com>
Date: Tue, 28 Feb 2023 12:20:08 +0000
Message-ID: <CAHtS4Z4pAS4FfjK9tYsdRC917RJQ7ssXR4SK6eu7fZskouqFpg@mail.gmail.com>
Subject: Greetings to you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=HGhleMJNeL3HMV/lDOcXvT3CsPxOeiQL6LlogStFT0bXLo+5PmTBCOgpRexAyXEA0Q
 UX9HeFa4TUR2dnUH7lx+NixM7x72Xbup6xpXfad3ueD791e5rqk/+ogNeIEFUUM1nzER
 lN/H1hbhDzhyhqrnfgtMyvQM8KnY8BECWI6dSZaGLy+CGxmNl3DhMAPH8FEGHhcdXNrP
 p1EnHxasLxfzH4WTUu/sTMhf9Fg7uXqwCtT5PRCiciXKT7v4SucqtpfEGlCYPTmH3VZz
 Am6tcp/hbCNUWpzqlXMFy7PzGzIeNDTZagon547OCO3Gpva0CSkW6FAxMcDtv+rvvu5f
 Qreg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HGhleMJN
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
Reply-To: rita.clement57@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings
I am Mrs Rita Clement, I am seriously sick and have no hope of making it.
I have a donation of $3,300,000 which I will want you to receive and
give part of it to charities in your country.
Please get back to me if you are interested.
Regards,
Rita Clement
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
