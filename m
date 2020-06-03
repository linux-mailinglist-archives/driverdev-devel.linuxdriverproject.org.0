Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 766701ED0F7
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 15:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6EEC87C94;
	Wed,  3 Jun 2020 13:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9WpdEwPCR0o; Wed,  3 Jun 2020 13:36:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF06287BF1;
	Wed,  3 Jun 2020 13:36:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76A721BF408
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 13:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70D3287C94
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 13:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryecSjk2FheZ for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 13:36:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6BB087BF1
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 13:36:20 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id d1so2468895ila.8
 for <devel@driverdev.osuosl.org>; Wed, 03 Jun 2020 06:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=t5mBSzuQgaR+ZWfhVkb/ko7/F7NEiv+WZzXxM00rkgAJUoS2chMmOtcRcs0ZjJ4of5
 wf2g9HIpSJCygI5TEFbDi/L2J104RHrNU9DWyWx/NUvscqJR7aZ+p7x1uUIDsL220iPw
 uxAOdynKu+/ENT1wbNrMsdifgB8OHGCsjUEY9JZy0DuoXEGIA9FCR5Cdd5jDdKcuMT+T
 3OxkXIW0VuPPhsmJEILBj7xBq+h+qGEXo2S8J+oEO0QeeLMQ53/1RusYu/9hFA7TKM6n
 sD6+BMU28Q672rJowD9OpheLrKrs1srQz2nQQknYmh9t8SIg8SchYAE+0lXTiECkgQAi
 G8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=Afqv2CqxbHvSE59sIsa79ZUVnc4AVYEQbMECsHkzinhKsEV481QMChFkfmf7JziyFb
 dq7wjuARB8X0HJdWmeY9b83kH7NXefk+kLdU9rjr7Aw0IF8CQVhADqYiTSGVsdHZqrV7
 L8r/6vWokdgmVFdmMakXwvKathaxg5XRiIyqGTmXKqWeG+m9YqALBt62uZ8qLsK+bLoz
 v9KJI+HZ32BrjaZct7q4KAejAwKvRqUDM0Y9OrKVkY7VU7/eJ5kS51Y7i2ChgFXPeQ+U
 LEtYqYxj+vfLD362EX1lvWqAPfyqo3B3sKA0cA3xTm/PLq00HEBveStomuexmIKy1CLc
 2ztA==
X-Gm-Message-State: AOAM530KWulSXf8T0ljYIk1mpCSIQOfOTqFocZcKJ2fkbW6uo73/H3XK
 nVNtmSoNajf0cMSEYi9ZnA9qNLlzuExk9rUMG9U=
X-Google-Smtp-Source: ABdhPJzGkiGcWf7wo+U6sdZRZSt1myvnY08cyqJXmBsREu3XWFQj5ehzxpUJ5RykXda31U32XrQqAGROr5we1HcYIUo=
X-Received: by 2002:a92:4812:: with SMTP id v18mr3999735ila.78.1591191380035; 
 Wed, 03 Jun 2020 06:36:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6e02:14d4:0:0:0:0 with HTTP; Wed, 3 Jun 2020 06:36:19
 -0700 (PDT)
From: "Mrs.Susan Jones" <sus.wifejones@gmail.com>
Date: Wed, 3 Jun 2020 14:36:19 +0100
X-Google-Sender-Auth: Qf7urAS6hlBlCqM6A1UHI2S03EY
Message-ID: <CAFU9QzuQJQNpf_3+rFwG=Kjp43Sgf0effVhG43=sEFsrbJgvGg@mail.gmail.com>
Subject: HELLO: I AM MRS SUSAN JONES
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
Reply-To: susanjones.wife@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
OUR GOLDEN OPPORTUNITY

Hello Dear Friend,

Complement of the day, i hope you are doing great today. However, I am
Mrs.Susan Jones, an auditor with one of the new generation banks here
in Burkina Faso.

I am writing you this letter based on the latest development at my
Department. i discovered some abandoned huge amount of money, Ten
Million, Five hundred thousand  United States Dollars.($10.500.000).
Now I am only contacting you as a foreigner because this money cannot
be approved to a local bank account here, but can only be approved to
any foreign account and foreign beneficiary because the money is in US
dollars

This will be  a legitimate transaction once you accept to build trust
with me and follow simple instruction doing the transfer process,
until the total sum transfer out of the bank here to your own bank
account any where in the world, and I agreed to share the total money
50/50 with you once you successful confirmed it in your bank account.
But any expenses doing the transfer process will be deduct from the
amount before sharing, If you are interested to work with me and
provide a good receiving bank account, get back to me as soon as
possible with the following details below.

Your full name
Your Profession
Your direct mobile phone number
Your Scanned International passport or any of your identity

NOTE: PLEASE IT YOU ARE NOT INTERESTED DON'T BORDER TO RESPOND BACK TO
AVOID TIME WASTED.

As soon as I receive these data's, I will forward to you the
application form which you will send to the bank for the claim and
transfer of the fund into your bank account as the  new beneficial.

I am waiting to hear from you soon

Yours
Mrs.Susan Jones
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
