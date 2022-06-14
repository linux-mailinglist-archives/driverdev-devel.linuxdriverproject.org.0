Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AF254AF71
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jun 2022 13:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB53D41295;
	Tue, 14 Jun 2022 11:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdnB10LCyY14; Tue, 14 Jun 2022 11:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94A27410DB;
	Tue, 14 Jun 2022 11:45:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 360B31BF5DC
 for <devel@linuxdriverproject.org>; Tue, 14 Jun 2022 11:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D8F4608A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jun 2022 11:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eImakfJIFqTL for <devel@linuxdriverproject.org>;
 Tue, 14 Jun 2022 11:45:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2AD860864
 for <devel@driverdev.osuosl.org>; Tue, 14 Jun 2022 11:45:45 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id c11so2674263vkn.5
 for <devel@driverdev.osuosl.org>; Tue, 14 Jun 2022 04:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=S4zvj4NczpydmduK3hqss0eAqxvs+DZNyjOzLka0Nhg=;
 b=I931gedJzVNvE9GUnknzHILpsh3HeRI3bGrmDEHFhBmYAszpfOA+ylovO92DBAqGou
 TmpTNkvdgKhSvSBUhqwOi4/Ne9S+DYC9GWcDWvTqgbPutGNFfZ3fxdWN7PNXoUVD0fXy
 a/wLljvkNYgtIU08Esf3HLN2XZQO1B4kncDpJApEB1NUJVxXXCqZ94krh3p6xQPShc4O
 Th8ArY5eJmzfG4i/nA/qu5tcfpyorsuUqvc/Tm0eBn3r62gV9U7Yf5blRjxPGoKNcHQG
 MIuKSySL+Y86oC/8LZiI4k/Xyj8rtFHXQ1OjLX+oDZuAc46kjbgvIcecRe/VeG3Gclnq
 EunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=S4zvj4NczpydmduK3hqss0eAqxvs+DZNyjOzLka0Nhg=;
 b=WTTSLe14m2yb8wuwsmNjjAV1SEB3ZSbJyJiUVAZI3GXIhA7jK/+R2lCYcgxwxN3j2T
 NraDaTWm4bMRt0/BilK6ueOmvXv3QrECy5vxJmFQJzhVt+Sgl6mnTVCqlaR1I5oGHjOK
 yld/6pNqD83kS/YBCxQGHMnNzMirM7v17uSv3/IMS4HuMc3eHHl/phcOlUpT0h+XmwY+
 HqsllNhDOnujFjy2Udm+oSCFAcG9zfKFzhF9IiWIw2oSKeu6kJLcq0U+35vfB8KTaMBB
 5re/xU1YEOoCXzqyNc/EcWjfI5z3bpciy7lNxjEWGTEgqi1Qv5HFe31BWC/UE4bDXXew
 VtXg==
X-Gm-Message-State: AJIora+eElG06JNk5AV2flRw1fptK7oc6npRZEyR0o8i+m6fffMCqpDR
 nN2HetAZccJYG+ja1vA3ShUjMEDZ0AFBTAGNNoo=
X-Google-Smtp-Source: AGRyM1uXD9iP5HVvNgQU/njYlfZx7ssLtXK9rqWcVrf7LntzOLBp4s81DQwl16RiYo8ZpkQ6wdalfcrbAlIoiUM9DOQ=
X-Received: by 2002:a1f:accb:0:b0:35e:629b:1a34 with SMTP id
 v194-20020a1faccb000000b0035e629b1a34mr1662379vke.16.1655207144665; Tue, 14
 Jun 2022 04:45:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:612c:2413:b0:2bd:1787:e601 with HTTP; Tue, 14 Jun 2022
 04:45:44 -0700 (PDT)
From: "Mrs. Bill Chantal" <williamssmith01212@gmail.com>
Date: Tue, 14 Jun 2022 12:45:44 +0100
Message-ID: <CAJX8iidUMasUy77ybivdyfAmpnP6BADW3zk60QaaijhVZZFKXQ@mail.gmail.com>
Subject: BUSINESS PROPOSAL
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
Reply-To: mrsbillchantal2023@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend

You have been compensated with the sum of $5.4 million dollars in this
united nation,The payment will be Issue into ATM visa card and send to
you from the bank,We need your Address, Passport and your WhatsApp
Number.
Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
