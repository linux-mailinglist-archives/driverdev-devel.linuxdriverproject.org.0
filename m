Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA4C44EEA0
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 22:29:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47B25404D5;
	Fri, 12 Nov 2021 21:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HLsQFS06t2Xx; Fri, 12 Nov 2021 21:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 297024018D;
	Fri, 12 Nov 2021 21:29:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85B481BF3A9
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 21:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 817BD4018D
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 21:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wE18dUt2ZKVb for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 21:29:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 99F7840103
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 21:29:37 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id k2so13528973lji.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 13:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=rlMLedUP6ai+RLLMrsfsnbn8KA2hfHHQKD0cQsk8eao=;
 b=ZBZclZMlB9TbtthktWqR5rhIH5jsfROjpPZc1fLuRfKXAJiY+ZDkAJvtKadNNRTHuB
 J2eSWqI+tkNIIEsjIezju7oNs154mW1mWBQU6aQNFeVRqatiHRRfM4w3PxQpLjo9Zqe9
 icc3zdGIh8c7SbFnX0t2Yon7tUFLDqe2FICRAPlIGdyWC3CG19DLjByOVk7Wh5GuCJeP
 ReuDYre9SJ3s41gTirPcCQMQpH+3iVQVH/nYS3PA/86BIrd7fmHT4gUEm0fq7jCiH0I2
 mI/cwqLIUxTuYVov+0huIyleLtzVJ7FyPpSRarWuKmDif40OO0vSvPF+OGkOKbGw0x6J
 iUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=rlMLedUP6ai+RLLMrsfsnbn8KA2hfHHQKD0cQsk8eao=;
 b=XQrGGdh1GFBN/X62RaC2BXPFygDJ7/pVmjXpf9ZCidJp/ChZpfnDt7zp3o9x0eIn8r
 vDvdhfs9WGwhH0jJeEd1UNGxpJK7d0gElb9rgf60hJRgXzrjynV9IJJar6KHE+LPnY2U
 0Nfq49UDKf1vDLU5T/h86/Nxauos1U5ixi7xRrheCScho0pzaN4gMTYwI3b6g7qDG2/2
 PH01Ao7VYgUhHns6yZaf/5lIMzYEefnCaxnoxZKPEpJyt5iVpyDd4swuzoRcsbgT4bW4
 j+QO1XYW0rTe9RRgzqLFB9qdHrLKT/eebTzYCJo23OkW9lgHdj6l9KBocETfGWUeoxod
 rKfw==
X-Gm-Message-State: AOAM531JNYxhmpMD0FXTR2NvC/UUJk5kxpR2ehmUBrXv+8z0982HAV7l
 EGdy25VIQXWExBIFMnSqIM0fLjoD71AeKdSFme0=
X-Google-Smtp-Source: ABdhPJwbWUN/udHCHMahYqwBDU1Q5M3TzSYKBDyabU4zlBYKuXaXbHVe/IJsLyPxSPcRWrGeWbAEJedKrhtbG6HAdJg=
X-Received: by 2002:a2e:740b:: with SMTP id p11mr18144706ljc.215.1636752575350; 
 Fri, 12 Nov 2021 13:29:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:3ca6:0:0:0:0 with HTTP; Fri, 12 Nov 2021 13:29:34
 -0800 (PST)
From: DTB Bank of Tanzania <nspector205@gmail.com>
Date: Fri, 12 Nov 2021 13:29:34 -0800
Message-ID: <CABJaD1gp118FY15U_vZbbe1KHzB-=CHsd6+y9gNYB61Ff2qh6w@mail.gmail.com>
Subject: DTB Bank of Tanzania,
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
Reply-To: bankdtb160@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

We write to inform you regarding your inheritance award winning check
of $2.8 million USD which was issued out from DTB Bank of Tanzania
last
week, although the check has been cashed & converted to ATM Visa card,
reason, the check was cashed & loaded into a card is because the check
may get expired before it gets to your possession, therefore we have
to registered the ATM card with EMS SPEED POSTAL SERVICE company here.
So you are advise to contact DTB Bank of Tanzania through
E-mail;bankdtb160@gmail.com via their info below,
please be sure you send your current home address where to deliver the
ATM card to avoid mistake or misplacing.

Contact the Manager Mr. Abdul Samji the Executive Governor Of DTB Bank
of Tanzania
E-mail;bankdtb160@gmail.com
Telephone:+255 8983 0023

Regards,
Samuel Brida
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
