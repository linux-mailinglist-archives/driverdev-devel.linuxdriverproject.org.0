Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E486447EDF8
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Dec 2021 10:43:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA57860ABC;
	Fri, 24 Dec 2021 09:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yztTn68zI2Sm; Fri, 24 Dec 2021 09:43:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D27FC6059F;
	Fri, 24 Dec 2021 09:43:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 629781BF372
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 09:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E9E56059F
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 09:43:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPNXVHhGatsS for <devel@linuxdriverproject.org>;
 Fri, 24 Dec 2021 09:43:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2EFF600CA
 for <devel@driverdev.osuosl.org>; Fri, 24 Dec 2021 09:43:24 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id m2so6283727qkd.8
 for <devel@driverdev.osuosl.org>; Fri, 24 Dec 2021 01:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DA2RfWm5BfTc8dY4tRUxJejPvziWb2AgHmDwtjqgqi8=;
 b=P5Qd+BPKTr3I+Do4OC70tdf0v+QiBCg7MTdO3Md1Zw9sg2dl/5Osd3vwjgi4sUbJMj
 Hc6tHdBTOxud3jyCq3u5P9OE3vEioW4SLBGJo8++XSTQBofztcLCQ8kybgg8qtP9CSuH
 4f9krOekkhy2eA2S7Rz466KDQvgZLCb8xGis/gZgz5Hi9JEaYcC5wo72XvSz9AQDU1D+
 7S43zxju9VCRZPUFhoq/m9XGCad0b4ssi6GyvXslcwZvlM4zsQqtDWXAOanz/4WPK4HC
 g0QvseeHBtUrsay0q/aX/8JHX5cyHvoqkK/rw3wuDFwhh9yJ8lRl2qAMSkFUSx60SPOQ
 /DVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DA2RfWm5BfTc8dY4tRUxJejPvziWb2AgHmDwtjqgqi8=;
 b=E6MHjKx5bK/CGoEMLokvQggwISV2tQxhkytG8f+nDJIbFhup+5aEc1bHYn75p3W6bm
 JSruftfQ9f/su2thv5gWfYq3CyGfnwYRaeP3BwfFlWhzU8PZDQOiojXwjoJsUdeplbBr
 FxsJcp2w//AXDoaAMgQe7vRkrKRb1stFryEbzLQIpn6RBvIuqtzdWOuYQl4YMGf78Z7k
 YdgWLPTuNhOx03Mp6HrWWYXta3KgOGd+UBNFiMRJo8xCo+WQ6kBEayKkCFGnWhlnAtUO
 /JsvUOiGe49Z+ugdcCLbmlulB81Enaokvz7wE4vgDA5WzFiOvubbFgJtwxqyJ1sn75zK
 T9dw==
X-Gm-Message-State: AOAM530MXvKh920B5/xv/AFWY2UTB0ILfwUGInNH6lQRwAPqOkRy66d/
 0hcnrUxU8DcE6WCxPEppLAkPKlWWoV1C4vIyKik=
X-Google-Smtp-Source: ABdhPJxOFyIbcuUoQkqLEOD0blyfPHbVzcVEVXfZHHcBczjQlF33Osl6/5XOvTNmqVfOAoBi95lYkCmhB5ab67zHpAk=
X-Received: by 2002:a05:620a:12e2:: with SMTP id
 f2mr4119057qkl.343.1640339003339; 
 Fri, 24 Dec 2021 01:43:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5c62:0:0:0:0:0 with HTTP; Fri, 24 Dec 2021 01:43:23
 -0800 (PST)
From: MISS WILLIAMS <info.turvateealfastar@gmail.com>
Date: Fri, 24 Dec 2021 01:43:23 -0800
Message-ID: <CAM-qQYZEpxxSx8D5OgQgnR0TbPk4tRuWJk3JOO_rqk2_US+_sA@mail.gmail.com>
Subject: Greetings Dearest One,
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
Reply-To: williamsreneta2019@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings Dearest One,

How are you today, together with your family?Hope fine.I would like to
use this opportunity to introduce myself to you. I am Miss Reneta
Williams, From Benin Republic, West Africa. And my late parents are
Mr. and Mrs. Dikko Williams; my father was a highly reputable business
magnet who operated in Benin Republic during his days.

I am writing this mail to you with tears and sorrow from my heart.
With due respect trust and humanity, I know this mail will come to you
as a surprise since we haven't known or come across each other before,
considering the fact that I sourced your email contact through the
Internet in search of trusted person who can be trusted and will
assist me.

It is sad to say that he passed away mysteriously in France during one
of his business trips abroad. Though his sudden death was linked or
rather suspected to have been masterminded by an uncle of his who
traveled with him at that time. But God knows the truth! My mother
died when I was just 6yrs old, and since then my father took me so
special.

Before his death, he called me and informed me that he has the sum of
Eighteen Million Five Hundred , United State Dollar
(USD$18.500,000.00) left in fixed deposit account in one of the
leading banks in Africa. He further told me that he deposited the
money in my name, and also gave me all the necessary but legal
documents to this fund with the bank.

I am 21 years old and a university undergraduate and really don't know
what to do. Now I want an account overseas where I can transfer this
funds and after the transaction I will come and reside permanently in
your country till such a time that it will be convenient for me to
return back home if I so desire.

The death of my father actually brought sorrow to my life. I also want
to invest the fund under your care because I am ignorant of business
world. I am in a sincere desire of your humble assistance in this
regards. Your suggestions and ideas will be highly regarded.

Now permit me to ask these few questions:

1. Can you honestly help me from your heart?

2. Can I completely trust you?

3. What percentage of the total amount in question will be good for
you after the money is in your account?

Please, consider this and get back to me as soon as
possible.Immediately and confirm your willingness on this my
email(williamsreneta2019@gmail.com), here is one of my Picture and
also i will inform you more details involved in this matter.

Regards,

Miss Reneta Williams.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
