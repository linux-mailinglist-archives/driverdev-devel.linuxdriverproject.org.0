Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C71C9215D7A
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 19:53:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EC3A88B82;
	Mon,  6 Jul 2020 17:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFG1tT+2h3fm; Mon,  6 Jul 2020 17:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D128688B49;
	Mon,  6 Jul 2020 17:53:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 788D81BF2CF
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 17:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 729292594B
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 17:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DThDO4ufanRZ for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 17:53:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4DB82261F9
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 17:53:28 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id w6so43579665ejq.6
 for <devel@driverdev.osuosl.org>; Mon, 06 Jul 2020 10:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WPXZz4OY4OCHdWLfFIuXx38EF0s8Io97OxmLPemDs+I=;
 b=I9w4lajVUUxm+BHe2O1ILvToo4HMqcgRSY+WiHHoqLi2O8Lhk+2rKA+Xn2HmcBOiA1
 4fKYdXQ0DTyQgz+ZLJ14TXOZ1sogzF34s6DQ/0LP/1Q4WENSuP9Xz8WBGB3IJI4t3T8J
 paNC+UxJ8Ir0IsLiV5Q32ojT0lAQgce28easclfY3L07w9r8fzoHNTLzDNnhChhX33jH
 1rgjLGquI+oRUzGQZ9J8kf4wFWV4XZtf/m9ztFGHObKo/i8CrqLs+9Qt5MTriMnCVV3G
 NDfOCpbWdZp0Wq4xu0ZoBGNoUsFJlyPnyrBHJr59W42joRkD9cjVO9bwB0squ89CD/kZ
 BUAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WPXZz4OY4OCHdWLfFIuXx38EF0s8Io97OxmLPemDs+I=;
 b=pGshM1QULy+yi1w13AAdZJTJnesnECWjDX5/PjaHMaTs8WcnQlYxjczTBrpwmzOFJh
 zPBtetQcoN857ZDzeV2r9kgVfnG7GVIbJEsvyLI0VAYoRkHIP3C4T3ehk21LHzsOuaS8
 PTD5z+W6zGgUhf03sclq9xn775NMmecLQFG+/TRUvuHcUCqrbp1BH6m1W0GwmoVMAwU4
 FBY+OErjo1QMhc969UgRJLtXsD6kRrxntn2xBBfdJct8EuTFUVLasEHmOWDNLuHWxFvO
 idBjZISyGlgNmgEpuDwOHnTNX4+NI+KAVRiNdmeajbcVpsiXEKxWQJs66zuLjf2Ko5ZQ
 O1AQ==
X-Gm-Message-State: AOAM5336h1vLDYjUZ8Z5O3P/jGMJwSyT5dfUBa8vdVZVkPj/T9MssBo9
 bXv7VQbRRmTcYwWWwNCnfc8/zDi0saN9L826Qco=
X-Google-Smtp-Source: ABdhPJxaIn8aDbNWkgRw7xwKNYPI8fT0Qzncrb3CLJJNMBnQY9pi3aDIQoV15BWxc5TMf5vVNtrfRyyBLyqcEK6M74k=
X-Received: by 2002:a17:906:ce32:: with SMTP id
 sd18mr45584281ejb.228.1594058006674; 
 Mon, 06 Jul 2020 10:53:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:334f:0:0:0:0:0 with HTTP;
 Mon, 6 Jul 2020 10:53:26 -0700 (PDT)
From: drharunabello <azarara94@gmail.com>
Date: Mon, 6 Jul 2020 10:53:26 -0700
Message-ID: <CAFHaG4tEf0a+rXDDpMUvkh9irJMyoS=0EKN7p5XYp0v00F-x-A@mail.gmail.com>
Subject: Hello Dear
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
Reply-To: drharunabello4@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Good day Dear

I have a project of $18.5 Million Us Dollars which I will like you to
support me
so that the fund will be transfer to your bank account.
Please if you are capable reply back to me so that i will give you
more details about this
project.

Thank you I am waiting to hear from you

Dr Bello
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
