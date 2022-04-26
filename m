Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B836F50FA40
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Apr 2022 12:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C44B826FF;
	Tue, 26 Apr 2022 10:23:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iC7uoywYi4US; Tue, 26 Apr 2022 10:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5390813E8;
	Tue, 26 Apr 2022 10:23:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E316C1BF955
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 10:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFE92826FF
 for <devel@linuxdriverproject.org>; Tue, 26 Apr 2022 10:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ehhC2Ef08QHV for <devel@linuxdriverproject.org>;
 Tue, 26 Apr 2022 10:23:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D530D813E8
 for <devel@driverdev.osuosl.org>; Tue, 26 Apr 2022 10:23:32 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id i186so16950865vsc.9
 for <devel@driverdev.osuosl.org>; Tue, 26 Apr 2022 03:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=y/WwzOufdV8bFjC2XhKxeIddPBCZMNKZVHLfMOMvj6I=;
 b=axjBfIjlEvPdR4FOcX/aVsEee5l9dzHyDOAWPvIdRfD60unQgxWxKvMUh5UXUnKvQt
 ZMRHBcmeMiT/Kime6OilaynUxD0kUlwkKq2I5TyFvCkfYCllgexbxi2Mz42pQ8sm0ufR
 cXSIE5qAZ80kTqOs47NwN+bH4J6fWQHWe3C5mh1GAHv4VBWa0Jw23OptYxcTlNFv9hXo
 UR/usGfUpjK6wYi6zxNrb6be4RoAnLDOrvQdxF11cS7PpPQJh+s4XnhkcSYUITWKwtRr
 FQf72wpj3aUVyc1SbmwzxfII99K6kIbB5B2kSM5kLj27B56q2GI6rUgaOKjsmUO14JsQ
 4NYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=y/WwzOufdV8bFjC2XhKxeIddPBCZMNKZVHLfMOMvj6I=;
 b=1JFpIHlfbTnG+QBrnja9C8mSbD1qYEuJGzV6+UzWh0sbo9YXx8L0wELBacushD2P0k
 q5qSadEPVLcwAyxOtIy9UC/0hq6tDNM1JR1m8yg9TOL0O4kztqjLszpO6mbBCywgNOim
 m1FPHIi9PKtJpdHZfUWAklF+1M6DYukorv0laCUVUFdpJKBKMEZwsm1Hw4tmVMnS2qkp
 qwjg4q4C6U80EH/8Ne+SVxO85wUcO3PMCLflN3pgKfaN83n5ncyEIfJNYvZF2AvOWRir
 awUkt8oMAucUqaIbTi7qKxF7HJUDvAE8VrcpH5gQwMs6x1EwSmLaSoz6oW1EYcnZwpib
 KilA==
X-Gm-Message-State: AOAM533quux9SqxwAN/YT2Jvv53ElF3Wo3gDxMMdwkROdHEQMnZrNYsu
 FFLY2Hd36zGKQlrhG0vGFmFfN+jlSSXceTUtaYY=
X-Google-Smtp-Source: ABdhPJwG6brWX+wLk0AVuNCySbGyAcYk0o2azE83CuaV/kuBA7ADQizDDdNhVvgD8BRzpLb9IM90WAaOPrdMAMCVXok=
X-Received: by 2002:a67:fe48:0:b0:32c:d628:2025 with SMTP id
 m8-20020a67fe48000000b0032cd6282025mr2324685vsr.66.1650968611437; Tue, 26 Apr
 2022 03:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac5:ce17:0:0:0:0:0 with HTTP; Tue, 26 Apr 2022 03:23:31
 -0700 (PDT)
From: "Dr. Tracy Williams." <tracy0wiliams@gmail.com>
Date: Tue, 26 Apr 2022 03:23:31 -0700
X-Google-Sender-Auth: HDxLEOUMbnMvs_V0vJk4c4qqWo4
Message-ID: <CAFqzHfgp-oygvgWoqbKTnHC6D+JZGGJjjF8x83yPG_v1T7jHZQ@mail.gmail.com>
Subject: From Dr. Tracy Williams.
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
Reply-To: drtracywilliams89@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,

how are you today,I hope you are doing great. It is my great pleasure
to contact you,I want to make a new and special friend,I hope you
don't mind. My name is Tracy Williams

from the United States, Am a french and English nationality. I will
give you pictures and more details about my self as soon as i hear
from you in my email account bellow,
Here is my email address; drtracywilliams89@gmail.com


Please send your reply to my PRIVATE  mail box.
Thanks,

Tracy Williams.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
