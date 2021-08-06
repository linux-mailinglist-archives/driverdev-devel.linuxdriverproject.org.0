Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C603E2CBD
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 16:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 411464059F;
	Fri,  6 Aug 2021 14:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FGLzVdFIjJ3; Fri,  6 Aug 2021 14:34:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DF07401F9;
	Fri,  6 Aug 2021 14:34:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F4251C1162
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 965DB40399
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyzbE5lgAol0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:34:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE9A8402F5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:34:43 +0000 (UTC)
Received: by mail-il1-x135.google.com with SMTP id y4so9173090ilp.0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 06 Aug 2021 07:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/oMubRmlLM5EZ/UdY6Fj3wsfS2kyoMzN9ASXgZ3xneY=;
 b=WwtirH+AN5QEGc+PsYDg7GPmicCeAO3NPEqhZC74A3+cGIN9TIFUSUQWVdp/dEeJ0X
 ++0akNbjsW/3xJMMbrUcWsaDb/Yt8FhArvnBGhYYupKONjpXh07T85TTJ6z/R14UeK25
 VfrKT4PbBRG9FpAA5mPltqAa33Oy6oNBbUHIMXxZ8Pb8DDymDVISOJ0z/+FU283l+PC4
 CL/S0Mt/1jGAvk934eTBfkPJMYFqxNe9DmuvxRe6nTQgDgkYbQOxTC8k7gZ9Je0QkKHX
 pj04+ieraICgLCEIDsM+PSxXHeP7MukFzwmFuXJEWjT/gtCn4i9C831/d3PQ2UrLasbD
 Q6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/oMubRmlLM5EZ/UdY6Fj3wsfS2kyoMzN9ASXgZ3xneY=;
 b=GZJAYVouNum29PzvhNxzmBTXGxfg0G3IOL9EtkirYlpdm8Gf/U2+yizV49khY26X/2
 At1MewwQjy5VK0V1WwLlcYIvim4FRQa5WgeSGx3dJZWpcgnRKdguWn2JoCEB8zCITUBF
 XoyjyPY0nkEzrtamFtqKaGAGF+bKHQjw7RqfAstZhRDJ7ZY9hBlWbNQMnSD0L/95cA7R
 lMz6Ohy2EO6U3uNU7+1OhRwW0dz7ajTH66h1DCrFn0SEgXJFYnBCKlnPGFesGqczigOA
 Dp8ujktD0FgMks1i3nSORqq8UiL0nxeNG302WOXgeZAoiljlzfF1rsbKjjOMQoMZ8eEM
 oBCw==
X-Gm-Message-State: AOAM530BKJZ1yZ7BeId2BvOxHO+//Lpmy3CEu8BHlSWUBX66HD6LZ6QQ
 +A1SJsJLectZkHom0BjR2sZzrPBBAwQtdye5GP8=
X-Google-Smtp-Source: ABdhPJxp5ET5L2YTA3wanMtEqCHLczOyx36yHFnFg6UZI0mLKFWZaADmnk+VVmvj6+SDnpgqRgA+ZQp8fhbmG7dX2Io=
X-Received: by 2002:a92:d088:: with SMTP id h8mr67865ilh.165.1628260482824;
 Fri, 06 Aug 2021 07:34:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6384:0:0:0:0:0 with HTTP;
 Fri, 6 Aug 2021 07:34:42 -0700 (PDT)
From: "Mr.Maxwell Watford" <matinmiller89@gmail.com>
Date: Fri, 6 Aug 2021 14:34:42 +0000
Message-ID: <CABQ=EucNt8T50SyY_xMhf4eA-+FY+vTpH5-ztzQHBLq2ww-40w@mail.gmail.com>
Subject: i need your reply
To: matinmiller89@gmail.com
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
Reply-To: mrmaxwellwatford@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

We are writing to you from Ecowas Finance Controller Office Lome Togo,
because we have received a file from the Ministry of Finance Lome-
Togo, concerning an Inherited Fund bearing your name on it, And after
our verifications, we found out that the funds belong to you.

It has been awarded and I will like to guide you to claim the funds.
Please contact me at my private email address
(mrmaxwellwatford@gmail.com) for more information and directive

I am looking forward to your urgent reply,
Best regards
Mr Maxwell Watford
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
