Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F113DCF1F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Aug 2021 06:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D60EE60737;
	Mon,  2 Aug 2021 04:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id faWjtxF0tmTG; Mon,  2 Aug 2021 04:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5634A60697;
	Mon,  2 Aug 2021 04:08:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F60E1BF34B
 for <devel@linuxdriverproject.org>; Mon,  2 Aug 2021 04:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E64483032
 for <devel@linuxdriverproject.org>; Mon,  2 Aug 2021 04:07:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTtjt36dg1T3 for <devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 04:07:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB4518302F
 for <devel@driverdev.osuosl.org>; Mon,  2 Aug 2021 04:07:50 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id h1so18804974iol.9
 for <devel@driverdev.osuosl.org>; Sun, 01 Aug 2021 21:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=GvSEm2IhMBJ052xe9DI9VvCgaL6z88P134FZp7B8Jpk=;
 b=UR0RiH3uIWtUqCop1tEuhAqZSYcjn4UXhXVlHdYPSzVkYAS8tmbK825WhPmzRbmoy3
 ef/nLLSmFPYwwaaP/HBFBlToEY3aUQju4pry0wI6Uvb3R4dOAbdfiuU6GYBGqvC+bYjy
 6gDoysPgp8HyKG/7lPzaG/Ab7lW07owyLKFgQez6ghdVLNvOt0hbPGJAA2MXoqL18da3
 oO/Q6FamnZkmWvxb6uSbCsy/eTlgeCgBnfY8qZZGwBivLET0sr3f1qjTlZfpVSf4nSaT
 rNctfvy4dFL5YnQb/hI6EvInEswfxIjlGZEIgbXitCbxhTid5ltYL3G51l97uMbR3WJC
 aLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=GvSEm2IhMBJ052xe9DI9VvCgaL6z88P134FZp7B8Jpk=;
 b=CEEAWFZsRJDAIRfyZu0EcLbt0HvvFz5iRa7myM8vOXf+v2ZRbJOiL7emdlaGqqu4zW
 PO8tRcdrW4Yl8DhhnfVZ+rxkFnEfe9JANF6jNkjwEtdtd2KB555Hgo6jIndhkLUhQ/7h
 4EKlTzHsFO3EAcotP75LF3QJGE0gcWMtTWo9Q1c49tkEnMhWoYj3kLuF1LRtHiR1cfwG
 rtbEcJFSUE+yShRmACME7gFb9SjpijzbreiU4b0XCUpyyMriFlRt91wbxZDIFmam0xcO
 wsPn1I10AgG34YfRr7/OCzLtVXUMuWgE/v8TLRWpkZCvwyTNQnCmqACL6uQwkVoFbLXk
 0hyw==
X-Gm-Message-State: AOAM533wjxczIs5KrtWKPVqTA7l1Cb8wgy4+MeR7lHAKEwSwaTAMG18F
 hnVLxM91NiK0dM5+sk9AwPd5bXAN5NDc9YhMhbg9lNjXv1xULw==
X-Google-Smtp-Source: ABdhPJzpoIZg71X/5Es/h6Zt2F/v0D4QavsAJ2/fi28bc2r51YIe/EEtaKn+TXQPk6/LX1dI2vGXk4g36jlAIWkgawo=
X-Received: by 2002:a05:6602:2e8f:: with SMTP id
 m15mr563816iow.80.1627877269871; 
 Sun, 01 Aug 2021 21:07:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:b157:0:0:0:0:0 with HTTP;
 Sun, 1 Aug 2021 21:07:49 -0700 (PDT)
From: Abdoulahi Kazim <aishagaddafi.lpw.ag@gmail.com>
Date: Mon, 2 Aug 2021 05:07:49 +0100
Message-ID: <CAEax+HFO_RtXV7gUXOPz2gY7axnuZZ95hmU5xoOi6K2i=gvGkA@mail.gmail.com>
Subject: More Authentic Information
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
Reply-To: ablahikazabl67@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear Partner,

I am soliciting your partnership to relocate $12.5 Million to your
country for investment on my behalf and you will be entitled to 30% of
the sum once the transaction is successful made.

 Please indicate your genuine interest if you are capable so that i
will send you the authentic details and documents of the transaction
in awareness with some of my fellow Directors in the bank.
If you are interested, here is my private Email address: (
ablahikazabl67@gmail.com )
For more authentic and legit information.


Regards : Abdoulahi Kazim
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
