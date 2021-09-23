Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C874166F5
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 22:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C6360620;
	Thu, 23 Sep 2021 20:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZBCmRu9CJY1; Thu, 23 Sep 2021 20:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AFDC605C9;
	Thu, 23 Sep 2021 20:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 273771BF304
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 20:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15E82400F2
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 20:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bU2WfyMMOB1k for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 20:54:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 555B6400BE
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 20:54:55 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id r75so9889005iod.7
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 13:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=Qdp0SHs3xmfRjgLIyqNwEa9EGz3sQom2u8TOqtBT/Zc=;
 b=AFrjxloQuueVqxCW55iUCfWM59MNIZA2bK0oEq5i8pKU3gWVTU6q9kgrAdeUlhG7aM
 YzCRHFpdFCnMT0oad+c/2URMKVjK/GEl9itXPPUcbO7cJlN4IMh4S4Qw3QkpwsuaGq0D
 h8jSApQ/WBAjj8MzuUCpEdCNdwDMLKaqFAZqAxoJGhkBKyrxOsvg4Rqt7f/8dsGjBJVW
 1rlTjNX4u+qE3pcwNHZkRwavMQTLH2SNo3aUaQyB+tY99Z6kFhsGT12kGxn4JDtdRqt7
 jQiMzMFwKn57kvKrHEeKhEw815SbYtiSZYJZ5vFMLUNXZQP7dVCov04JKLfS82E1xrf1
 PYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=Qdp0SHs3xmfRjgLIyqNwEa9EGz3sQom2u8TOqtBT/Zc=;
 b=ppgZ6dNLBvpRkperEzyh6sXU2QIGSaOaS3qSidIdU2WDC2ucDLQxvSxf6WB4pd1DBv
 r2nlh0AbegZ+h7iWudslFciDAsYePO43pcY1KrrN8DUE4sYZGCJGAD0qY6/DFuRyZ8Uh
 Fiu4D1y83Xh7yHMcNDtmXAAc45Jm6LmH3wMiMnlZPsQ8RvXvEovh4dlunEYWaqMLMQrF
 LIMnYcMNPcT5m/x0MVyMYY7i/elTjaGlZ3/jif1R6dOsugmnRy8oXRnYq7FfmST02Um9
 brJrRY4LPRft1dTF4k0/U1B85cB29BiD9DnGR6btpM88tiRA/0fRUpJLmVLDtdKtM36x
 p43Q==
X-Gm-Message-State: AOAM531f2f9giAYly1hFX44Hjwdj8/4pj3avPzuLgwqLaiMYBk4GI5PU
 Ia7Je5nqNDy+JKEGhqcuAh7AspHsXL5tEzhwbWU=
X-Google-Smtp-Source: ABdhPJxxDa2nCCCAu/WpNtg5cju3N0ILHKvcdYuZ+0a0Six7gYdSnv8dCJxjYr5n4c7ULLLOzIxhqyc1cow3/KJd4C4=
X-Received: by 2002:a02:c9d9:: with SMTP id c25mr5933261jap.81.1632430494028; 
 Thu, 23 Sep 2021 13:54:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:8b8b:0:0:0:0:0 with HTTP; Thu, 23 Sep 2021 13:54:53
 -0700 (PDT)
From: "Mrs.Nicole  Marois" <nicole1563marois@gmail.com>
Date: Thu, 23 Sep 2021 20:54:53 +0000
X-Google-Sender-Auth: gaz3IOWs7uCiGusfM7mcjxfevVw
Message-ID: <CAC-Hp7sQxzQ2yx5uPapSpH8yTjjwSRvPMot0YHmcN9tOB5QDRw@mail.gmail.com>
Subject: Hello Dear,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear,

Please do not feel disturbed for contacting you, based on the critical
condition I find mine self though, it's not financial problem, but my
health you might have know that cancer is not what to talk home about,
I am married to Mr.Duclos Marois who worked with Tunisia embassy in
Burkina Faso for nine years before he died in the year 2012.We were
married for eleven years without a child. He died after a brief
illness that lasted for five days.

Since his death I decided not to remarry, When my late husband was
alive he deposited the sum of US$ 9.2m (Nine million two hundred
thousand dollars) in a bank in Burkina Faso, Presently this money is
still in bank. And My Doctor told me that I don't have much time to
live because of the cancer problem, Having known my condition I
decided to hand you over this fond to take care of the less-privileged
people, you will utilize this money the way I am going to instruct
herein. I want you to take 30 Percent of the total money for your
personal use While 70% of the money will go to charity" people and
helping the orphanage.

I don't want my husband's efforts to be used by the Government. I grew
up as an Orphan and I don't have anybody as my family member,

Regards,

Mrs.Nicole Marois.
written from Hospital.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
