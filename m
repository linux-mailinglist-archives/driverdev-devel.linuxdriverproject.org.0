Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBCE47D29E
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Dec 2021 14:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EB1B4163A;
	Wed, 22 Dec 2021 13:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hKVUWICLM4Mo; Wed, 22 Dec 2021 13:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB207408C1;
	Wed, 22 Dec 2021 13:06:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE1571BF591
 for <devel@linuxdriverproject.org>; Wed, 22 Dec 2021 13:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACD0C408AA
 for <devel@linuxdriverproject.org>; Wed, 22 Dec 2021 13:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7v5fb7Ptg2FS for <devel@linuxdriverproject.org>;
 Wed, 22 Dec 2021 13:05:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FFDB40457
 for <devel@driverdev.osuosl.org>; Wed, 22 Dec 2021 13:05:49 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 b186-20020a1c1bc3000000b00345734afe78so1474126wmb.0
 for <devel@driverdev.osuosl.org>; Wed, 22 Dec 2021 05:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=uIyGGl7K0UT6xNfDrNc2jMQ14wmAjPSA95qEnA7pUIY=;
 b=LxwAiXR5HfB/cPnWAlLx6/6WyAl4+oRUs+dw4Cff6KI1yCuAP6Z2aRi8WlrxBVUAMA
 /ziKwqj3ecJihWGrieaixeq6bvQepAKEeHCn/13JNCh8b+4mKmCOE/jzquSDd9m1mMfe
 wFUwSHJxJV7YxttqSxrcPN+t2C9O42f3BKfgKFn+oOJoz2xhuo5L6I0iSlovTlcPBRPJ
 Wv3i5TsuN9YeWwgl4DGl5b18iuVvo4zo2FLZ+oYZRKS99dntte9uCXeg1iY/r/oBunEy
 9RHRPJH9OkLymCAfK2euf7xtECyHCboyVnK2UWcxIJy040HngDyNu+JA1T6aayGySOYc
 vdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=uIyGGl7K0UT6xNfDrNc2jMQ14wmAjPSA95qEnA7pUIY=;
 b=UGqm2YN5U2NcNiYQfGMs1AkNJVhTU6JG4c0+0sZM7BMvADyl41HNbM0d243INJHV6u
 /ZEo6jLCzdxXQnxlV/QmXcaxa/rfr1TEZY88tIfl8ao5nac/donrDAoGOxa5Kn4IxujX
 zd+CuSEpxTD9nA/tn0ecQdiYS5MI1ppvqSLH9U5AD9UFz5MkvyJgWKRA57032RhzNB7C
 3uKmayHGd7Pk1DPQM9OPxVzx1Wx03ko2ZIdbZEwDq4+xqJEe3RFo3LDg1/+K6OLiNEu1
 yWBu8upQ2KgCtd/rmKG19nSxiIjzv4Q4KNEV8MoTmoQcV5EqqHZ3Uqynjgx2jb01o8R2
 yxhA==
X-Gm-Message-State: AOAM531h0qvW1JPKsbbptUsnLhJ37FoKM7WEFpe1/oszrRhtoK9IMU4T
 2FvlerQODkef19sVAK1u9vgWxn+DjmgYgVh891M=
X-Google-Smtp-Source: ABdhPJxNfFZUIsIc0lEygyzDq4GU02MT+WtCuhksfpy475XQKGJSRlPEpEtlexio6beoiENFw8r5vX5/LKHark3ZOR8=
X-Received: by 2002:a7b:c1c2:: with SMTP id a2mr890964wmj.120.1640178348318;
 Wed, 22 Dec 2021 05:05:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a7b:c00b:0:0:0:0:0 with HTTP; Wed, 22 Dec 2021 05:05:47
 -0800 (PST)
From: "Mrs. bill Chantal" <etimbukudo345@gmail.com>
Date: Wed, 22 Dec 2021 14:05:47 +0100
Message-ID: <CAM63EMcXwu0Zm0G0wYS11YDJ=-7QaaFmRu5E8CHAhJBv7uGy0Q@mail.gmail.com>
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello my Dearest
You have been compensated with the sum of 5.4 million dollars in this
united nation the payment will be Issue into ATM visa card and send to
you from the bank,we need your address, passport and your Whatsapp
Number.

Thanks

Mrs.Bill Chantal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
