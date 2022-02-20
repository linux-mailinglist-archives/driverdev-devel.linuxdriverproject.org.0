Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BDE4BCF4C
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Feb 2022 16:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ABFC81458;
	Sun, 20 Feb 2022 15:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VRt6bDn19WLD; Sun, 20 Feb 2022 15:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2989681451;
	Sun, 20 Feb 2022 15:17:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6CE91BF303
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 15:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 941DC60BAA
 for <devel@linuxdriverproject.org>; Sun, 20 Feb 2022 15:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hfgbQ-Qy3jMb for <devel@linuxdriverproject.org>;
 Sun, 20 Feb 2022 15:16:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA8A7606E7
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 15:16:57 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id bu29so14256634lfb.0
 for <devel@driverdev.osuosl.org>; Sun, 20 Feb 2022 07:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=SBsWmq+eSNqSrsYsyWCWH6gXGL5bAwqHKbMciEKnQI0=;
 b=lE0/7drF61gzB65SZJm81g+itzOOKhzscvu35InoHmUdFKJjO6V5Z50hCnKH+jZm54
 U+BJZRW3hialXcyOqzR/vx/0t7Rzs2lBoYJp8IHClhWIxfxxAGXNm5J2Ro3qWnvAxpDc
 7ADGcxQrqGGVK4YrCOkNFOpChehIzJZvuVhxOeHtKqb4p+oe3OGdDQtkR4kBFmQlcBap
 mlTg7rfPXxqcUvib+qbx8sTiV4ErH7gO9+67juHQGlMwf4mL6J6feOW/J/3jSF2kRjnh
 cFKEpOhLQtPm8ZxRXldDyHauKocYTbhHTBWtL0CWFdqV7qmb4z+GK3C6+tUdx8eMJGWM
 kkdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=SBsWmq+eSNqSrsYsyWCWH6gXGL5bAwqHKbMciEKnQI0=;
 b=s5i3AsbRmQpReGdymmlvu3fGu6oT/UxkKPW22xsiHD98mPRyMrP1WqcziNbc9aDOcF
 nOuZufCujtIIAbE9mn+XPO3YTIh2yS59P2lrXTRf+ndGcl6pvtpx3aJDPrDbc06Rga6e
 LZ2Apq2A0HLMvRhk7xItzsnoX0Xc0+icrqoxncRDNaO/jKMi1BKfaLKSJ183F8ZR5eSP
 3bXl6ZvxdrvTMbzvD0PEcwR75AS9Z0sIEoEmPtMucyJqwY4a2J5nYzfJFu0/ZDq9fCZG
 hurOfhwawI3XhJTC23jucj5okOJEZv5DfwAmTy4X2MT5tVizoFMsoqnCIfumr1YXlO0M
 TUaA==
X-Gm-Message-State: AOAM532TFs36WM/WpVbPk85FwzxPeydWbyXRMKtTAGPHNbkx+OFciVZH
 fE8F9WZog5ZWeVao3Q39bI4v6yvvG30CoovYs2Y=
X-Google-Smtp-Source: ABdhPJyQQCculooHW1S/KoQ8nNu14FnKdXN0BJs4+zhp5E9WnDH59YhGIE05FIXZD36oR/SgD4+x0G3FfJh1qzVJcns=
X-Received: by 2002:ac2:4254:0:b0:443:3d0e:990c with SMTP id
 m20-20020ac24254000000b004433d0e990cmr12019033lfl.347.1645370215344; Sun, 20
 Feb 2022 07:16:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6520:3693:b0:19c:ecd5:195f with HTTP; Sun, 20 Feb 2022
 07:16:54 -0800 (PST)
From: Mrs Aisha Al-Gaddafi <w1e1ndy@gmail.com>
Date: Sun, 20 Feb 2022 07:16:54 -0800
Message-ID: <CADc39_xDXYAg3wYa6XWBQqFJ3itm7zUwt1mpz5QPwt_c2ughRA@mail.gmail.com>
Subject: I NEED YOUR URGENTLY ASSISTANCE
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
Reply-To: mrsgaddafiaisha@homemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dear Friend,

I am sending my greetings to you from the Sultanate of Oman,
In the capital city of Muscat.

I came across your e-mail contact prior a private search while in need
of your assistance. I am Aisha Al- Gaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Gaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate investment/business profit sharing ratio
with you base on the future investment earning profits.If you are
willing to handle this project on my behalf kindly reply urgent to
enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated
Best Regards
Mrs Aisha Al-Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
