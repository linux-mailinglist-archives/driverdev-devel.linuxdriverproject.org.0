Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF15F0965
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Sep 2022 13:00:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BAC8411A2;
	Fri, 30 Sep 2022 11:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BAC8411A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8D9ESHGfdnh4; Fri, 30 Sep 2022 11:00:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CD4C400FD;
	Fri, 30 Sep 2022 11:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CD4C400FD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0431F1BF322
 for <devel@linuxdriverproject.org>; Fri, 30 Sep 2022 11:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4EBB41B54
 for <devel@linuxdriverproject.org>; Fri, 30 Sep 2022 11:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4EBB41B54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-RGe6KjwQUy for <devel@linuxdriverproject.org>;
 Fri, 30 Sep 2022 11:00:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36A8541B4F
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36A8541B4F
 for <devel@driverdev.osuosl.org>; Fri, 30 Sep 2022 11:00:14 +0000 (UTC)
Received: by mail-io1-xd36.google.com with SMTP id q83so2960137iod.7
 for <devel@driverdev.osuosl.org>; Fri, 30 Sep 2022 04:00:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=1hEp/yfms9Rnu5JyNL7c9sRf9lkQRrB27vOrV8VhHjQ=;
 b=K3szTGArThCrssGra4BmtyGAlH/yenS0jRhd+/hpQuP5nZpJPQgBfnT5hPafrZIMJk
 B5/pfodz3IHqnSzHHRhOqezttZ4ZU9IbDmjy2Z8t9UddObRikY75j0pbdPzNaUlza10H
 JaZEmV9cTuB9ptWXuIXU3GBySVWGcrPd9mRMMc97FTpvL6l+q/vl1XnGgxT77y77MO5s
 w/qXu7crs5lSxbS1KSSrEkcsDaAk+K2IfvVr9g+jVmfrNkzf9W40E0EvtCU+vIoAogoI
 CQTROsVBU64O+7Dolr/b2rbfAHV612AYkjyTfzWlvJYK1aX72LY0VnQgEOto9nLZEqcl
 gIUg==
X-Gm-Message-State: ACrzQf3RGx5VxUWGnSnb2k4UK5TDq4W3G/ms0n2onL1AW+qLHb14GQl9
 3HWXpMcWOd5ZgfdgTsrmSzYD15/E4ve6HcpRhA==
X-Google-Smtp-Source: AMsMyM74vfEZ3b/nbsOfcXHGmf+8g4mzFAyC6X0WrU4t18vBdj+WlJ0t+ovE1wsiNewqo+deR1biebz81qD1Gurgq3o=
X-Received: by 2002:a05:6602:2e04:b0:6a3:74ab:f12b with SMTP id
 o4-20020a0566022e0400b006a374abf12bmr3768483iow.27.1664535613175; Fri, 30 Sep
 2022 04:00:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:3d17:0:0:0:0:0 with HTTP; Fri, 30 Sep 2022 04:00:12
 -0700 (PDT)
From: Jack Gabriel <homelands585@gmail.com>
Date: Fri, 30 Sep 2022 04:00:12 -0700
Message-ID: <CACCLPsGk5vdEUO1543Z-ofRwTfLTAN65iYmkUc0zDNWvcvCFGA@mail.gmail.com>
Subject: Dear Friend
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=1hEp/yfms9Rnu5JyNL7c9sRf9lkQRrB27vOrV8VhHjQ=;
 b=C3ATe5IgkZzj7H/ZWqGL7i+7L0evux5aE8y76oZPxmKN26wrKyxnwtm6z7ZOBPH2fi
 Qe8H8Pv416Hvg/BqxgNRKZgtwai6EhTx13usESAgEPF1+qqaXhfd8IH1lgfCAl1teoQX
 TFSjXVIHM51gqP0ctL9pKOTecTjylpo1nR6tXPq41x+RkYERbtql5Ht6ZVO4bypQUI4U
 hPkNz0TpN7AoMM4VCeO/aj0wKhPI7jCGGWS7Klwb7hhr3DbOxDj1sWzUjwzryYqcIZqi
 6a4mW4BD/1LjX25wnWPdpKW8lFqay0ZAy7v2y05hCir1HFNlsbqb0jYLXuLKIwM19NIO
 FZ4w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=C3ATe5Ig
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
Reply-To: JackGabriel5457@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
 Dear Friend,

 I'm Mr.Jack Gabriel, from west africa, I'm sorry to intrude into your
 privacy I got your email address through internet via computerized search
 after my prayers so I bring to you this transaction which I notify from our
 bank an abandon fund which belongs to one of our late foreign customer who
 deposited the sum of 10.2 million USD, but he died at of cancer and ever
 since then no one has applied to claim the fund so I write to you with
 confidence that you can be a help so we can get the fund out of the bank, I
 want you to apply to the bank as his foreign business partner note that
 once the fund is been release to your wish bank account in your country it
 will be shared among us in the ratio of 60%40 if you are interested please
 kindly forward your details so we can move towards it.

 Your Full Name....

 Your Bank Name...

 Your Telephone Number ...

 Your Age And Six....

 Your Marital  Status....

 Your Occupation....

 Your Country City...

 Thanks
 Mr Jack Gabriel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
