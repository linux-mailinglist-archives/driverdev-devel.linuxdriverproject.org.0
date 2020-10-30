Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF932A07A6
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 15:18:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12AE487506;
	Fri, 30 Oct 2020 14:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iw6TrNktwVSi; Fri, 30 Oct 2020 14:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7A01874C6;
	Fri, 30 Oct 2020 14:18:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDBB81BF2A4
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 14:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D8CFB86B60
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 14:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWq0A1yD-u5l for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 14:18:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5674086B2B
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 14:18:05 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x23so3018726plr.6
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 07:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=9fkQXWnoPSypfyxvIrXWSyd1r4Ua0eeDJczOBpIf/BU=;
 b=a7TdXDdtWWV6ADf9BSunwPyElYPHjrdTAxI4F0g0L4gXKAIbj4qgB8rOch+Ix7kVeX
 UDtmZ916JWvtTyDWulY/lbd7qinZMhJGP676fh1B3Wsu+dAfUTyRFZji04lz8lx5UM5Q
 ieSDI5vg4kIPuWikMDGttkJXV7XeIpe1zzHt2yYzoDO8+fE25x/j+B+psZsjIq/pP05v
 E+QhNHTVfJgY2VkprnRgr0zMofP3bNW8vmV38VolqWe9HRA+lZoPxmUER+UkV9Cq83XN
 ZGbyYOJGmosoST9W8nQ8QxIvApQTFhcx9zxtcCZCvWfqGBTr5TtkHwuxJgbPHkfVNrPM
 TQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=9fkQXWnoPSypfyxvIrXWSyd1r4Ua0eeDJczOBpIf/BU=;
 b=U+OBb1yU2rQ0viJN/qEbaOAky0+NW8jTUNeI0HEPlqbsReuBXhLxPajBI7LJcnlaLu
 sGKu0+0poEivg62qr4Iw+zRWKzbRwyAhCqWr0wZ9sViyTgPgaTZrKj8BaGgGr32Xbsn8
 ExOjorVtaDzP2PL2byWOQ6g+2MoD3DHBfI+nUTuB40E9PA6pm2mKLK6Wt6AuyXpdU6AQ
 4D+iC5QIbGEQP8TKjXxezVjdaN6hk5VbKbH3j+y5nis2uBQ7mcACU1PIPUQED/ovIm3v
 zDya5mGnPErY+WslpJdRWkNz+ZVZIyLiw5cxb9VhyBdTQBCxn8/9JDSrUi76UGFlPEAy
 o9AA==
X-Gm-Message-State: AOAM530eJkCscrNSPZ7qSaOvwP3X26kRyrtBOPVTmqB1gu42OqmzE+Ys
 c8UhnC3QIGBnjojw/0lMCdazOj/9tjGChKRd/1g=
X-Google-Smtp-Source: ABdhPJxRSM/Mc7bLQmVtI6E3GxTAfRRLEFs1N4ZNlLiqBEHwMJeYvYQ+v6i29shmEKIRyZLSu+ghahHL8Cst4QkjYP8=
X-Received: by 2002:a17:902:724c:b029:d5:c1de:e34e with SMTP id
 c12-20020a170902724cb02900d5c1dee34emr9197557pll.71.1604067484975; Fri, 30
 Oct 2020 07:18:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90b:517:0:0:0:0 with HTTP; Fri, 30 Oct 2020 07:18:04
 -0700 (PDT)
From: Liliane Abel <drolandchango@gmail.com>
Date: Fri, 30 Oct 2020 15:18:04 +0100
Message-ID: <CAL+D-7jy7NJ=hbyD7h3bnw=1yA6b_CnZVD3JO-xtOYCvHCK5eA@mail.gmail.com>
Subject: 
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
Reply-To: li.anable85@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearest

Greeting my dear, I am Liliane Abel by name, The only daughter of late
Mr.Benson Abel. My father is one of the top Politician in our country
and my mother is a farmers and cocoa merchant when they were both
alive. After the death of my mother, long ago, my father was
controlling their business until he was poisoned by his business
associates which he suffered and died.

Before the death of my father, He told me about (two million five
hundred thousand united states dollars) which he deposited in the bank
in Lome-Togo, It was the money he intended to transfer overseas for
investment before he was poisoned. He also instructed me that I should
seek for foreign partners in any country of my choice who will assist
me transfer this money in overseas account where the money will be
wisely invested.
I am seeking for your kind assistance in the following ways:  (1) to
provide a safe bank account into where the money will be transferred
for investment. (2) To serve as a guardian of this fund since I am a
girl of 19 years old. (3) To make arrangement for me to come over to
your country to further my education. This is my reason for writing to
you. Please if you are willing to assist me I will offer you 25% of
the total money. Reply if  you are interested
Best regards.
Liliane Abel.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
