Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59419433D35
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Oct 2021 19:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A06040680;
	Tue, 19 Oct 2021 17:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HU2l_DED2kKQ; Tue, 19 Oct 2021 17:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB97540408;
	Tue, 19 Oct 2021 17:19:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC8E11BF4D8
 for <devel@linuxdriverproject.org>; Tue, 19 Oct 2021 17:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC20F40408
 for <devel@linuxdriverproject.org>; Tue, 19 Oct 2021 17:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CaE-4y09yD11 for <devel@linuxdriverproject.org>;
 Tue, 19 Oct 2021 17:19:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67D6A402B2
 for <devel@driverdev.osuosl.org>; Tue, 19 Oct 2021 17:19:50 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id f5so19965915pgc.12
 for <devel@driverdev.osuosl.org>; Tue, 19 Oct 2021 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=fWbRtmwSvpw1bfC84j16Ls4FeCWDLyhXIFPNaloLQIk=;
 b=Vl4Ha1FoJrVRoR/SGdK6/T4dfsNvCMqBFZ78fJ0fDKQxyGb2ZKG6UR2aMBjQz8/ZWh
 9Rb5/TJexUvUeL+YDOOB521DcATuE0RXl0Z4EZUCJuQObN0vA/bbEYUOGb1N4Vnc5+Zc
 XLLUFMAkFaxb8BPsiLxYoERi/iaX4tAWR7FCHlRcj8+CSEct/KHW4HWGrzkPk+/GG9Oe
 cOuaQ8v1g1TLu2H9fypJI02ptnPUdy+2vILFbHI7zOZ1YSG6+z56pmXd0oOUOL1JkXQP
 TKukSpYB1uacHYtJ+X9rlFhJ6Ob/kNtvWeOmPXmlNCwX3jrX3gyhBE+BavWtTcfehWZp
 6cGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=fWbRtmwSvpw1bfC84j16Ls4FeCWDLyhXIFPNaloLQIk=;
 b=nKyDXInq0x+if8nsk0I4ottro/AvqVANic2E5MxMkZyHwwN1qKB1S3U+CB4QG682Vo
 Ooqi9P2SVKTzOntudDyk3HiJmYDj48m8i25euZaB3WllEGMHWWlrSOfWSpQfSwwnFYm1
 MvxuQjtr9toGW67x9O2MX89xCWMvLxXViymbr4WmxJ+bzTiO/JCGR82u8PXx3oR9Fxm0
 gYPKbANzWksboRzjGWkjr/zaLaC2ebqvkkVmfatW+Id0qtp+nNATsZeyEAKB3Fd1h2+S
 s0y9KDqRikKdGi02BX9lES1qPD3+EFnZyAIWfxWpAKtZfvgnGnw9kkF9UpbQaGsnQ8ew
 WFLw==
X-Gm-Message-State: AOAM5317BuLyz9jMspNko8DeywJhk0aG66HMRpBo8Qu5Gq2qNPdncT9+
 vMSbETe05c2xTWUqeM03e3y7oO4NbZaioe0Jf0g=
X-Google-Smtp-Source: ABdhPJwlvo7W/NEBE0hrE73JXe9mYTYuDa7B7ruCE2h2wHuks7EP+Vk06KDdhGmMqDSjU/tsqqCMUivKg3yIdMsxjkw=
X-Received: by 2002:a63:ea48:: with SMTP id l8mr29661322pgk.99.1634663989295; 
 Tue, 19 Oct 2021 10:19:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:a809:0:0:0:0 with HTTP; Tue, 19 Oct 2021 10:19:48
 -0700 (PDT)
From: MARIE Hamidou <gitaopinath@gmail.com>
Date: Tue, 19 Oct 2021 19:19:48 +0200
Message-ID: <CAH3o63R2d3TUYyUJ4TnRFJ_Y9qq6B3i60Vts23RJh1hTYCYSog@mail.gmail.com>
Subject: Urgent,
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
Reply-To: mariehamidou0@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Urgent,

I need your assistance to validate your name in our Bank System to
enable the Bank transfer the sum of $ 3.5 million Dollars, into your
nominated bank account to your account for onward investment,

or any profitable business in your country and you will take 50% of
the total  fund , for your assistance.To commence this transaction,  I
require you to immediately indicate your interest by a return mail for
more details,

Thanks for your anticipated co-operation.
Best regards.
Ms.MARIE Hamidou
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
