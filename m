Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653986EFC39
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Apr 2023 23:11:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38A34405B7;
	Wed, 26 Apr 2023 21:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38A34405B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rznkw6qUTe1h; Wed, 26 Apr 2023 21:11:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D18F41C48;
	Wed, 26 Apr 2023 21:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D18F41C48
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8474B1BF5A9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DB63822DA
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DB63822DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7nCAIRl7015B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:11:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC11883BB8
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC11883BB8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 21:11:30 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-506bf4cbecbso11356762a12.1
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Apr 2023 14:11:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682543489; x=1685135489;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=MGEwvRcLdJGWvMDxrfmSem4TOWStu1iusu5uXr0wZo4m0NNTiWpNSNaQlwzLfYlePJ
 7v9xAGRMip6cO8hBYyTcMcf70Zlr+ItT7bUSJGCYjCU4baptVa6ILrQi9I4dZn5XW7jo
 JZO3V6/bgezpVmYT7lEdbkJLT0V5pQt8l6anrBilCyjtaEUEBbECOIKfdtnAWnB2GqA5
 H0fM/JM0YTA5ESwd3AkpgtTpZv4g0gE7IwfHOQZFrpyMYEEdB+zjbnrbERE8HwUa7H2u
 1eLbfG4pGo7QE4t6pL/ElCLKRHLlMas2TRN1KEKfzBmVEqiRlXCPmb+viHkqD/Tv0Yt3
 YDIg==
X-Gm-Message-State: AAQBX9fBq4JNnsF/Ek8I12hIx3+UFefC5QK5Xi9ziWxWFOSwoE/AjYMB
 PxMc1+YPXZFe3eQxs4zAwo1gSDw+AvGbK+PdpQE=
X-Google-Smtp-Source: AKy350ZhaqHbV1J9IH9WqHo1dftrvpAV3weEMW2rvJ53/RZRgMsoijRniV9/ruRlkItD+GtHKL0mzRvHVzmu9yA7igs=
X-Received: by 2002:aa7:db55:0:b0:501:d6c2:7439 with SMTP id
 n21-20020aa7db55000000b00501d6c27439mr17677271edt.37.1682543488724; Wed, 26
 Apr 2023 14:11:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7412:4783:b0:c6:d649:3a3a with HTTP; Wed, 26 Apr 2023
 14:11:28 -0700 (PDT)
From: Mark Klassou <jamesjanneth27@gmail.com>
Date: Wed, 26 Apr 2023 21:11:28 +0000
Message-ID: <CADCRY1eukCwu=unqsm5QQj64YGSQjSQpRyo0tc99KOmvhWBQpg@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682543489; x=1685135489;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JL3yT3Q33W5/BCQtgOVvz2cK4S2v0dqNTi6RS5aes9g=;
 b=pmu4mJR6TWou8IRbIyXXolANpXr08vmumllLHlPTM5PmJqUftwH0O+NKoHjtQrUbJu
 MMrz9Y0i6L+8898t7uWzc7/0cRaIW0hljTTXx4gESLV95H0tG2eiKGT1MkpBzci+u2TI
 l5NLtAv9rkb+rMoXJrx1EgfDOqNWMlHY8m80GfX31fDC0YQt/r6VUNnx0hJi4hXcOT5X
 4XGO3xFvZlahTp17wJ3sghK5Ml3aHG6v3fr8Gb/YO+sangfxK3Ubm7ArrIBfU8+xgu6C
 OqN0bYCMfJDeDG2QsAr7FMk/t937+f12PCyHEXDJqG1q/GkDMojQwCTyoa/Qy4KEs/g1
 2bNg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=pmu4mJR6
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
Reply-To: klassoumark@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good Morning,

I was only wondering if you got my previous email? I have been trying
to reach you by email. Kindly get back to me swiftly, it is very
important.

Yours faithfully
Mark Klassou.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
