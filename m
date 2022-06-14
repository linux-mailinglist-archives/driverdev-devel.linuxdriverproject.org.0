Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D2154A8C0
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jun 2022 07:28:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E963340475;
	Tue, 14 Jun 2022 05:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vhJDn9Lchy9f; Tue, 14 Jun 2022 05:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B19FE40126;
	Tue, 14 Jun 2022 05:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A73C1BF317
 for <devel@linuxdriverproject.org>; Tue, 14 Jun 2022 05:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03DEF401FE
 for <devel@linuxdriverproject.org>; Tue, 14 Jun 2022 05:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hixq4rBxOAuY for <devel@linuxdriverproject.org>;
 Tue, 14 Jun 2022 05:28:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09D714002E
 for <devel@driverdev.osuosl.org>; Tue, 14 Jun 2022 05:28:16 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id c4so12120883lfj.12
 for <devel@driverdev.osuosl.org>; Mon, 13 Jun 2022 22:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=5MG5eQp3QW+fTefG7UlY3sQzsiLMr100TCuCUnXvHOU=;
 b=Cf1QZs/kgWUGSd2BDKJb8/+R3kyF9vx4HYpSOPcZMsAXXJStHbS0AmT4nZy0Y5o9aJ
 obpU/hfBvnT9/nqc2Uyc6k29UidP8DLCfHhBFufcSiyREwYXXRyDXF3HHikqBatalBr5
 q9QIY96XF2yILcfVAZXhTmYPyND6UETuDOveIJpWJk+L899uJWsLA/ULAEzYKkpkFoLs
 CVjZr4JKLB2j7SHr84pfHVHiTpN1OW6zbCj641aB5HENKJyH1kBpL0gN3S7w7cOYSbff
 2GUF0KwDbHFNrMcDE+BehIVO8S2+cliDjV8jjCFwTtOaEwiqWhj1Ea08y8VQUPWu7ERr
 Dg6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=5MG5eQp3QW+fTefG7UlY3sQzsiLMr100TCuCUnXvHOU=;
 b=recRFJmgaoQov3sQac10JM0I/R96bUkSIaN9EcU8lHJn676Dz/nU6fP0sNtnpXiVvx
 NfrVOwAXjBqPyaaCiHY3mUIjxO55hlkOKC8U7uZgaNxxk47ZpSytE5fYjdqeAFsB8hI4
 ZQWK694qcoJnXjuGCbbU231f4sfBXJmbKt7sVbmBslP21cL7LuoLnE8BblQPgc8MfvjL
 XJTuWI6638oGt9NUMMYxzaRqWdjjNyamZQXK6hNeueIvlVYe0116J9fgvp5LG+uJeuAr
 LyxRXkWvq+7ieV8MR+d0SAaYOiLluddahah2sb58zUmIUshgUplrRiDY0NQpvCsNQpdf
 OIeQ==
X-Gm-Message-State: AJIora/9/U8k45fVochLUc6zo3DWpE/wcolyziaRLu016fR9YBey2xJ5
 C7UZdt+k2KTI6kY02YhxUNCot4TKVpbSUDpU/iz1xyYeCgTzl/V4
X-Google-Smtp-Source: AGRyM1scOXXXMNbiZz2VkXrB0Pvb6o8hHD9F8NLKkMQI3rFnvSXKSEAQglacFxMPRQXWZI+cHMbG6xYnBSyOcfFq16o=
X-Received: by 2002:a05:6512:3094:b0:479:47ae:a7c4 with SMTP id
 z20-20020a056512309400b0047947aea7c4mr2022636lfd.518.1655184494524; Mon, 13
 Jun 2022 22:28:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:e046:0:0:0:0:0 with HTTP; Mon, 13 Jun 2022 22:28:13
 -0700 (PDT)
From: "Mrs. Serayah Maaly Bob" <serayahmaalybob@gmail.com>
Date: Tue, 14 Jun 2022 06:28:13 +0100
Message-ID: <CALFpWpo6wiPNhWMemb-M1kpT0BmL5KnPqSohCAkzRuzZLEyKFA@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: serayahmaalybob@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I am Mrs. Serayah Maaly Bob. From Australia. It is understandable that
you may be a bit apprehensive because you do not know me; I found your
email address from a Human resources data base and decided to contact
I would love to employ you into my charity work; I am ready to donate
some money to you to carry on the Charity work in your country. I am
eagerly waiting for your response so that i can give you further details.

Thanks and God bless you,
With Regards
Mrs. Serayah Maaly Bob,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
