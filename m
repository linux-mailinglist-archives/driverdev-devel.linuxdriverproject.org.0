Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F333DDE29
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Aug 2021 18:58:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4520F6084A;
	Mon,  2 Aug 2021 16:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfuzXqP8ARdQ; Mon,  2 Aug 2021 16:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7BE7606A8;
	Mon,  2 Aug 2021 16:58:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B48BF1BF867
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 16:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A45EA606A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 16:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TcLG5L4xMyh8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 16:58:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30D1B600BB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 16:58:42 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id z3so19028675plg.8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 02 Aug 2021 09:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=70X9SZ6F2FHAgOnoQdbJaB6JyD+EKRzTayARQg7TP0I=;
 b=X7dDzr9YCzV1VjzmMqkSYK4uhyCDokmU+UsIp+2e4P+i3Z8bWm2KZ5BVFKgD7FZNyP
 9v98XE8a3MGN6r1MiKSvdwAMMXvbJG/MxRwksaGjDldl0z1STe2AFXr46A3GQf3jl/pH
 MENYHzIrwW/Vg22taru1DSDe70q10g8UbzC+K35LJJmsxH9QoadniuNptVgvXl/5OXAK
 wbsApq7+Ma6FUqbfY1O8H0BNALxN19V1KNqszeqJY3L6paFYYVK1zZ+YNFws9rvLttWm
 kvKV21EgiU/FsunjOj7vRuFiL0Bmx4E9rqkp2RMQ3/9/OxU3vY/1OXalXmGE306zwvCT
 rFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=70X9SZ6F2FHAgOnoQdbJaB6JyD+EKRzTayARQg7TP0I=;
 b=g+hq7SEtwdB7Z+iPLhCe72xl6fJXKQR6AGo8dJGcauFYHk4u2O1I0CzYQTjY92n4To
 kFLY4Lpf6KDsKdkYu4UmqCePrd3uW2W3Au+GSdvCd/A96NnAEivxp8Mzypla2PZPSnkX
 /jGF7iFRk7B1wO1h5X2Z/vsokb1MljQ8I/A1gZxEUEFsPeGIap+nV0YAtO8p+NXFzae2
 2x5ymtg3031l282X9hE1CMZ835zetY+CDYMpdSfRfZCJam71Y0kSu/hCcDq+FDOLqXwA
 RBjs+z/TVJ7cJw5aYagxmEnoR3hIJJzEYDNv+lzgHnYQq2Sjzk5IwW91htLc6Tm77vgi
 UzCQ==
X-Gm-Message-State: AOAM530TonHbSHGkdJ/QXgGbW9JAzGfy734FQPwUS9GFuTynUA0hmIZG
 hQ1g2x9qtgx+jSffvZrlwIb7P6w3J1osAjdsl3A=
X-Google-Smtp-Source: ABdhPJxwlbyYQqgyE6Z7emw0OusiLCKlhU3HW6KbJaIBTG7IAtsw6AH90NOiGFFXXXEE9AE1f2g0MuGBlJ4yY3mfZzI=
X-Received: by 2002:a63:542:: with SMTP id 63mr3314081pgf.359.1627923521462;
 Mon, 02 Aug 2021 09:58:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:80d5:b029:22:4f9c:4da3 with HTTP; Mon, 2 Aug 2021
 09:58:40 -0700 (PDT)
From: Maxwell Watford <klararichty222@gmail.com>
Date: Mon, 2 Aug 2021 16:58:40 +0000
X-Google-Sender-Auth: DjRx1imvuGiIUKdC0T-szzkd1Mk
Message-ID: <CABm2uNSFSObe1YmOYo_5Lsq6NMNVi5SMJ8oHwt8QJRFRKu=SDg@mail.gmail.com>
Subject: i need your reply
To: darkoi.lare2018@gmail.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

Let me introduce myself my name is Mr Maxwell Watford, I am writing to
you from Westend Credit Union Office Lome Togo, because I have
received a file from the Ministry of Finance Lome-Togo, concerning an
Inherited Fund bearing your name on it, And after our verifications,
we found out that the funds belong to you.

As the manager of the bank, I want you to come forward for this claim
by sending me any of your ID or your passport copy to verify if the
same as the
one in the file. that may confirm from your side to ensure this fund
did not end in the wrong person's hand.


I am looking forward to your urgent reply,
Best regards,

Mr Maxwell Watford
Senior manager
Westend Credit Union Togo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
