Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 388EE3E2CBF
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 16:35:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E75C60AEA;
	Fri,  6 Aug 2021 14:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 13BKFDq-Uk5Z; Fri,  6 Aug 2021 14:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22A3C60783;
	Fri,  6 Aug 2021 14:35:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 094491BF321
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 14:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED8D18295A
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 14:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcQquhnTuVXg for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 14:34:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8886825E6
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 14:34:43 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id i9so9138679ilk.9
 for <devel@linuxdriverproject.org>; Fri, 06 Aug 2021 07:34:43 -0700 (PDT)
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
 b=a/FtbWORDXz1zNVq6MnCBdRndaz9hbLfk5GlmbxtaIpZ2fgcw07jMRCsFAXgINz0VY
 FAV1mLvsyKfJNSXLAnAiy5EzwNdpMKMs42AlNjvMXGwUIrHzYi3+mlh7IKPEuX282RGF
 DEQszxY2qnHeNqeq04T0T2g6BWZBM3JtCcg9lDgJ2oEaeQtYlpjpUbU4Q2uQXUZMFytp
 ekaAfyPb7xYZiIo6zfIRsARF8wiMmIHBZOTgE5KYhm/gOjbSuyMIyS/8v/+jerfn6PxX
 V78Sl8+C/bVZ/Nj9emD7evNjNDzBHru7lZ4PXpTXLBfT8z2u4Pvc/etOJ/cpjKVKebE6
 3sRg==
X-Gm-Message-State: AOAM532HMre4SxqSKnKILZEUyRlbooXWdOwPA3JwCi5eV8VdKabsBiZh
 UHMhUX6HJeT7YvGQgBtzDMyKdNAy8JBjMp+IQMA=
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
