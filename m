Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A9347EE0B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Dec 2021 10:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FD0860D57;
	Fri, 24 Dec 2021 09:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P40A3rkoZVz8; Fri, 24 Dec 2021 09:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57F1660B1E;
	Fri, 24 Dec 2021 09:49:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04F0A1BF372
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 09:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5CB340128
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 09:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLTYcRa-GEql for <devel@linuxdriverproject.org>;
 Fri, 24 Dec 2021 09:48:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F405E400F2
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 09:48:53 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id 131so7941713qkk.2
 for <devel@linuxdriverproject.org>; Fri, 24 Dec 2021 01:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=DA2RfWm5BfTc8dY4tRUxJejPvziWb2AgHmDwtjqgqi8=;
 b=JiqqbWB69DqkNf+sMs24hPGSjPJFHVk1jq6wqKCZLZL1CVrC0VmiKCzP/VgBjKx5pb
 dsIUB59PLZgIT2JJ6Uzh7oWSP3zLskA83GOGNSb2bKGOnVVw+MbWPPhzz4K9/1tzw6Gc
 S7OV7Utuw6vefWgsbytaKplD0MO4RERfSkYbOvBvEugzFnFqgn9t/8WZiJzCHwIVBEJr
 viXgpji+moZuiLZOQ1P13xks6PXBNYGB4ttWksN0o9dTf927jgjnXtB9qqV+XJL7dGaq
 l7vb7LhNl2TX0+kzqWNWEzbZKw5ovXURmly1INeFF9VARb29c0C2nAuwQURN47Fd4ZLO
 j48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=DA2RfWm5BfTc8dY4tRUxJejPvziWb2AgHmDwtjqgqi8=;
 b=2so2KsFGi36V+fj1AuOgdEkGL9o4sSZAXnRKmw3711HlXK5oSdV4hd55HJjnYD9CJD
 rtwRFzd/DmxrRJufPhstDdMkM3l69ra30un1DyeeIbKlw7b6MB381DW6eq9rwncglN4M
 l47IfbYiJOGPKV/vMPGby1Y8OAapkPbWixknNPPDS1gx18V6A6pXqp1bj/+ywSLJy8xK
 57QRRjpO7Zw9U4byfnCFyKJuytyPdJhcU79LqcD0zhodUNB773rhp1Z+ctb9IgCFzrxE
 Sp29xE+6o3qUP7My8H3NfxH9U5gvP+/kfx6cqhffNNDwDw4Yuv8I/38pFqktAt3Hq2Nc
 ZbBQ==
X-Gm-Message-State: AOAM53136bW8rC95mKrJl7wzHd8w0HxonQzacRUZEKBOPIhViagJop9l
 uJKNWLJF5SEJ1GKhEUiO3bbNf5mW+SUtVKjNVRs=
X-Google-Smtp-Source: ABdhPJzxawpLFc682HnyGwOCnZ17wCPMxXvB7RlXp2GfPyU9ZuKCC0zpGLj5xXZYpCFnyoSEXGM/062g6Fh3MJkWVIA=
X-Received: by 2002:a05:620a:424c:: with SMTP id
 w12mr4148560qko.62.1640339332657; 
 Fri, 24 Dec 2021 01:48:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5c62:0:0:0:0:0 with HTTP; Fri, 24 Dec 2021 01:48:52
 -0800 (PST)
From: MISS WILLIAMS <info.turvateealfastar@gmail.com>
Date: Fri, 24 Dec 2021 01:48:52 -0800
Message-ID: <CAM-qQYba=eJ8z6wzBJYnqCULta=6iewd+_ar47dMCsuUnBhWCw@mail.gmail.com>
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
