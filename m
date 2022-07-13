Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CCB573E42
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Jul 2022 22:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4512E4035D;
	Wed, 13 Jul 2022 20:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4512E4035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y10OTKlh_P5x; Wed, 13 Jul 2022 20:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED4D24160E;
	Wed, 13 Jul 2022 20:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED4D24160E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4284A1BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17BAB424B8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:53:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17BAB424B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Smq7KgM-B0rX
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:53:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B31A424B1
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com
 [IPv6:2607:f8b0:4864:20::442])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B31A424B1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 20:53:50 +0000 (UTC)
Received: by mail-pf1-x442.google.com with SMTP id 70so55283pfx.1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 13 Jul 2022 13:53:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
 b=MIHRFoRikMUalyOzOOLTCBy9vgQYQ855n0JQFWMcDj6R2YUCmk+OeaBidxujRfEJ15
 4BfTCnaUsdtyTMZ5rQ18Cn8a+xLFrd5rop7B74vlMO1qHhXJsG7x/Hs4P/QwfrGIBnOH
 w77mYxhw5JSlWi5iY+gdE/4i7XY6c0mtqmkc8UTnV6H0ra1znGxKC4fcEKy58NO2oFZx
 eUPULKXxtrptNewMPqvG1zU2MWLkrPeJIE+yKqv2IAxwQCeq5nj+PzOxzaiZR5gv2WId
 JaY41b5FXZhcaZ6u2L0+mwuuuuFHqO63IWFWZXKv9l0PyWUCCj2qwvBrsGUaQpTlOohe
 CPGw==
X-Gm-Message-State: AJIora8fz72/oAVk3YbYTB1VTt4uGBDELh2i9XSZfOxxfU1/FXSk4Bhm
 eajW8FQyVY9gs5A8OugRtDqEdg230LFOm44mfYY=
X-Google-Smtp-Source: AGRyM1u1t+yJZPXlR0vLFCwvBuAEzfin9jYDm9joUWoCvKb3WzF0LVju3nRFdRDsJoaJqQTtLkO54rjGsjuHi7mknRg=
X-Received: by 2002:a05:6a00:16c3:b0:528:1ed:22ef with SMTP id
 l3-20020a056a0016c300b0052801ed22efmr5026798pfc.0.1657745629650; Wed, 13 Jul
 2022 13:53:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:626:b0:42:c3cf:981a with HTTP; Wed, 13 Jul 2022
 13:53:47 -0700 (PDT)
From: Lily William <savadogoidrissaboursouma@gmail.com>
Date: Wed, 13 Jul 2022 12:53:47 -0800
Message-ID: <CAA6zzokbJaXJRRH5yGRj5A4JhU2DDZmg=ARFyr5ZvcL6hCYDYw@mail.gmail.com>
Subject: Hi Dear,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
 b=GSycO9ajjEFpI4ZKO9XQLfFe/4Y7qsIlI0/++t9GYZc2bxcktgwjZJK2laIbmWlT4g
 Tv5fjZphpVR2pjroqCls1vV/d7zs8eCBvp2P2TdDG3w8ZC5v1gkWFSNDmSOtkfFBi6Ie
 r6RPxMgoRPHXS31adriLJPenubk4BUYJHGbK/huJ0CqX7I9/Nqrq9IqJmGA7U7FKscbG
 ZRMIOTeEza0yEXziI2E6br1ZJJeIUdQVCcRWzZRafReOiNulSIqdY3pMi0FVy2NT6NEa
 QLLuEN5uxMtX8Rq9Hd9juYqpfms2yrFzetmu/WbakHapzTbx8A9DVeDeOktSrKNinG2w
 HnvA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=GSycO9aj
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
Reply-To: lilywilliam989@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dear,

My name is Dr Lily William from the United States.I am a French and
American nationality (dual) living in the U.S and sometimes in France
for Work Purpose.

I hope you consider my friend request. I will share some of my pics
and more details about myself when I get your response.

Thanks

With love
Lily
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
